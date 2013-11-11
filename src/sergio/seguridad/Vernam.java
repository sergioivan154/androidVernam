package sergio.seguridad;

import android.content.Context;
import sergio.archivos.Archivo;

import sergio.compuertas.XOR;
import sergio.diccionario.Baudot;


public class Vernam
{
	private Context context;
	
	public Context getContext() {
		return context;
	}
	public void setContext(Context context) {
		this.context = context;
	}
	public String encriptar(String frase, String contrasena)
	{
		contrasena=contrasena.toUpperCase();
		frase=frase.toUpperCase();
		
		Baudot codigo=new Baudot();
		XOR operacion=new XOR();
		String mensaje="";
//		if( frase.length() <contrasena.length())
//			for(int i=contrasena.length()-frase.length(); i>0;i--)
//				frase+=" ";
//		else if(contrasena.length()< frase.length() )
//			for(int i=frase.length()-contrasena.length(); i>0;i--)
//				contrasena+=" ";
//	
//		{
			char [] letrasF=frase.toCharArray();
			char [] letrasC=contrasena.toCharArray();
			for(int i=0;i<letrasF.length;i++)
			{
				int []valorF=codigo.toBaudot(letrasF[i]);
				int []valorC=codigo.toBaudot(letrasC[i]);
				int []resultado=new int[5];
				for(int j=0;j<5;j++)
				{
					resultado[j]=(operacion.suma(valorF[j], valorC[j]));
				}
				mensaje+=String.valueOf(codigo.toLetra(resultado));
			}
			Archivo crear=new Archivo();
			crear.crearArchivo(mensaje,context);
	//	}
		return mensaje;
	}
	public String desencriptar(String fraseCifrada, String contrasena)
	{
		contrasena=contrasena.toUpperCase();
		Baudot codigo=new Baudot();
		XOR operacion=new XOR();
		String mensaje="";
		try
		{
			char [] letrasFC=fraseCifrada.toCharArray();
			char [] letrasC=contrasena.toCharArray();
			for(int i=0;i<letrasFC.length;i++)
			{
				int []valorF=codigo.toBaudot(letrasFC[i]);
				int []valorC=codigo.toBaudot(letrasC[i]);
				int []resultado=new int[5];
				for(int j=0;j<5;j++)
				{
					resultado[j]=(operacion.suma(valorF[j], valorC[j]));
				}
				mensaje+=String.valueOf(codigo.toLetra(resultado));
			}
		}catch(Exception e){System.err.println(e.getMessage());}
		return mensaje;
	}
}
