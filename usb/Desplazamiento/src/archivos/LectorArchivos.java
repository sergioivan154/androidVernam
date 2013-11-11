package archivos;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import javax.swing.JOptionPane;
public class LectorArchivos 
{
	String ruta;
	int contString; 
	
	public LectorArchivos(String ruta) 
	{
		this.ruta=ruta;
	}
	public String realizarLectura()
	{
		File archivo=new File(ruta);
		String mensaje=new String();
		try
		{
			BufferedReader in=new BufferedReader(new FileReader(archivo));
			String palabra="";
			palabra=in.readLine();
			while (palabra!=null) 
			{
				mensaje+=palabra;
				palabra=in.readLine();
			}
		}
		catch (IOException e) 
		{
			System.out.print("no se encontro" + e.toString());
		}
		return mensaje;
	}
	
	
	
}
