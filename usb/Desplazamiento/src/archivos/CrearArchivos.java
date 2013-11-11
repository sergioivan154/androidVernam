package archivos;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import javax.swing.JOptionPane;

public class CrearArchivos 
{
	BufferedWriter archivo;
	File resultado;
	public CrearArchivos()
	{
		resultado=new File("resultado.txt");
	}
	public void crearArchivo(String palabra) 
	{
		
		try
		{
			archivo=new BufferedWriter(new FileWriter(resultado));
			archivo.write(palabra);
			archivo.close();
			JOptionPane.showMessageDialog(null,"Archivo Creado");
		}
		catch (IOException e) {
			System.err.println(e.getMessage());
		}
	}
	
}
 