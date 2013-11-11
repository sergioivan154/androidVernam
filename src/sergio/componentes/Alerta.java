package sergio.componentes;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

public class Alerta extends AlertDialog.Builder {

	public Alerta(Context context) 
	{
		super(context);
	}
	public AlertDialog mensajeOK( String titulo, String mensaje, String textoBoton)
	{
		this.setTitle(titulo);
		this.setMessage(mensaje);
		this.setPositiveButton(textoBoton, new OnClickListener() {
			
			public void onClick(DialogInterface dialog, int which) {
				dialog.cancel();
				
			}
		});
		return this.create();
	}

}
