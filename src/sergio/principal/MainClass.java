package sergio.principal;

import sergio.componentes.Alerta;
import sergio.archivos.Archivo;
import sergio.seguridad.Vernam;
import sergio.vernam.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.Toast;


public class MainClass extends Activity implements OnClickListener {
    /** Called when the activity is first created. */
	
	Button bCifrar,bDecifrar;
	RadioButton rCifrador,rDecifrador;
	EditText cContrasena,cMensaje;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        bCifrar=(Button) findViewById(R.id.bCifra);
        bDecifrar=(Button) findViewById(R.id.bDecifra);
        rCifrador=(RadioButton) findViewById(R.id.rCifrar);
        rCifrador.setChecked(true);
        rDecifrador=(RadioButton) findViewById(R.id.rDecifrar);
        cContrasena=(EditText)findViewById(R.id.cContrasena);
        cMensaje=(EditText)findViewById(R.id.cMensaje);
        
        bCifrar.setOnClickListener(this);
        bDecifrar.setOnClickListener(this);
        rCifrador.setOnClickListener(this);
        rDecifrador.setOnClickListener(this);
        
    }
  
	public void onClick(View v) {
		// TODO Auto-generated method stub
		Alerta mensajeAlerta=new Alerta(this);
		Vernam met =new Vernam();
		met.setContext(this);
		if(v.getId()==R.id.bCifra)
		{
			
			if(!cContrasena.getText().toString().equals(""))
			{
				if(!cMensaje.getText().toString().equals("") )
				{
					if(cContrasena.getText().toString().length()>=cMensaje.getText().toString().length())
					{
						String cadena =met.encriptar(cMensaje.getText().toString(), cContrasena.getText().toString());
						cMensaje.setText("");
						cContrasena.setText("");
						mensajeAlerta.mensajeOK("Mensaje cifrado", "Cifrado resultante: "+cadena+"\nguardado en la memoria en Archivo Vernam.txt", "Continuar").show();
					}
					else
					{
						mensajeAlerta.mensajeOK("Error", "la contraseña debe ser mayor o igual al mensaje", "OK").show();
					}
				}
				else
					mensajeAlerta.mensajeOK("Error", "Se requiere un mensaje para cifrar", "OK").show();
					
			}
			else
				mensajeAlerta.mensajeOK("Error", "Se requiere una contraseña de cifrado", "OK").show();		
		}
		else if(v.getId()==R.id.bDecifra)
		{
			if(!cContrasena.getText().toString().equals(""))
			{
				String cadena=met.desencriptar(new Archivo().leerArchivo(this),cContrasena.getText().toString());
				cMensaje.setText(cadena);
			}
			else
				mensajeAlerta.mensajeOK("Error", "Se requiere la contraseña con al que se cifro el archivo", "OK").show();		
		}
		 if(v.getId()==R.id.rDecifrar)
			{
			 	cContrasena.setText("");
			 	cMensaje.setText("");
				rCifrador.setChecked(false);
				cMensaje.setEnabled(false);
				bCifrar.setEnabled(false);
				bDecifrar.setEnabled(true);
			}
			else if(v.getId()==R.id.rCifrar)
			{
				cContrasena.setText("");
			 	cMensaje.setText("");
				rDecifrador.setChecked(false);
				cMensaje.setEnabled(true);
				bCifrar.setEnabled(true);
				bDecifrar.setEnabled(false);
			}
		
	}
}