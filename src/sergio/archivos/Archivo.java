package sergio.archivos;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import android.widget.Toast;

public class Archivo 
{
	
	FileOutputStream salida;
	FileInputStream entrada;
	File sdCard,directory,file;
	public Archivo() 
	{
		file=null;
	}
	public void crearArchivo(String palabra, Context context) 
	{
		boolean sdDisponible = false;
		boolean sdAccesoEscritura = false;
		String estado = Environment.getExternalStorageState();
		if(estado.equals(Environment.MEDIA_MOUNTED))
		{
		    sdDisponible = true;
		    sdAccesoEscritura = true;
		}
		else if (estado.equals(Environment.MEDIA_MOUNTED_READ_ONLY))
		{
		    sdDisponible = true;
		    sdAccesoEscritura = false;
		}
		else
		{
		    sdDisponible = false;
		    sdAccesoEscritura = false;
		}
		String 	ruta="Archivo Vernam.txt";
		OutputStreamWriter fout;
		try
		{
			
			if(sdDisponible)
			{
				sdCard=Environment.getExternalStorageDirectory();  
				directory = new File(sdCard.getAbsolutePath(),ruta);
//				directory.mkdirs();
				 fout=new OutputStreamWriter(new FileOutputStream(directory));

			}
			else{
			fout=new OutputStreamWriter(context.openFileOutput(ruta, context.MODE_PRIVATE));
		    }
			fout.write(palabra);
			fout.close();
			Toast.makeText(context,
					"Archivo Gurdado",
					Toast.LENGTH_SHORT).show();
		}
		catch (Exception e) {
			 Toast.makeText(context,
						"Error al escribir fichero a memoria interna!",
						Toast.LENGTH_SHORT).show();
			
		}
	}
	public String leerArchivo(Context context)
	{

		String texto = "";

		boolean sdDisponible = false;
		boolean sdAccesoEscritura = false;
		String estado = Environment.getExternalStorageState();
		if(estado.equals(Environment.MEDIA_MOUNTED))
		{
		    sdDisponible = true;
		    sdAccesoEscritura = true;
		}
		else if (estado.equals(Environment.MEDIA_MOUNTED_READ_ONLY))
		{
		    sdDisponible = true;
		    sdAccesoEscritura = false;
		}
		else
		{
		    sdDisponible = false;
		    sdAccesoEscritura = false;
		}
		try
		{
			
			String 	ruta="Archivo Vernam.txt";
			BufferedReader fin=null;
			if(sdDisponible)
			{
				sdCard=Environment.getExternalStorageDirectory();  
				directory = new File(sdCard.getAbsolutePath(),	ruta);
				 fin =   new BufferedReader(
		            new InputStreamReader(
		            		new FileInputStream(directory)));
			}
			else
			{
				 fin =   new BufferedReader(
				            new InputStreamReader(
				                context.openFileInput(ruta)));
			}
		    String palabra="";
			palabra=fin.readLine();
			while (palabra!=null) 
			{
				texto+=palabra;
				palabra=fin.readLine();
			}
		    
		    fin.close();
		    
		
		}
		catch (Exception ex)
		{
		    Log.e("Ficheros", "Error al leer fichero desde memoria interna");
		}
		return texto;
	}
	
}
 