package principal;

import java.awt.BorderLayout;
import java.awt.FileDialog;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextArea;

import archivos.LectorArchivos;

import Seguridad.Vernam;


public class Ventana extends JFrame implements WindowListener, ActionListener{
	
	private JButton btnCifrar, btnDescifrar,btnExaminar;
	private JLabel label;
	private JPanel panelBtns, panelTexto;
	private JTextArea mensaje;
	private JPasswordField contrasena;
	Ventana()
	{
		super("Cifrador de Vernam");
		btnCifrar=new JButton("Cifrar");
		btnDescifrar=new JButton("Descifrar");
		btnExaminar=new JButton("Examinar");
		mensaje=new JTextArea();
		label=new JLabel("");
		contrasena=new JPasswordField();
		panelBtns=new JPanel();
		panelTexto=new JPanel();
		panelBtns.setLayout(new FlowLayout(FlowLayout.RIGHT));
		panelTexto.setLayout(new BorderLayout());
		panelBtns.add(btnCifrar);
		panelBtns.add(btnExaminar);
		panelBtns.add(btnDescifrar);
		panelBtns.add(label);
		panelTexto.add(mensaje,BorderLayout.CENTER);
		panelTexto.add(contrasena,BorderLayout.NORTH);
		super.setLayout(new GridLayout(2,1));
		super.add(panelBtns);
		super.add(panelTexto);
		btnCifrar.addActionListener(this);
		btnDescifrar.addActionListener(this);
		btnExaminar.addActionListener(this);
		btnDescifrar.setVisible(false);
		super.setBounds(200,200,500,255);
		
	}
	@Override
	public void windowActivated(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void windowClosed(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void windowClosing(WindowEvent arg0) {
		// TODO Auto-generated method stub
		System.exit(0);
	}
	@Override
	public void windowDeactivated(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void windowDeiconified(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void windowIconified(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void windowOpened(WindowEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
	
		if(e.getSource()==btnCifrar)
		{
			if(!new String(contrasena.getPassword()).equals(""))
			{
				if(!mensaje.getText().equals(""))
				{
					if(!new String(contrasena.getPassword()).equals(""))
					{
						if(new String(contrasena.getPassword()).length()== mensaje.getText().length())
						{
							Vernam met=new Vernam();
							String cadena =met.encriptar(mensaje.getText(), new String(contrasena.getPassword()));
							JOptionPane.showMessageDialog(null, "Cifrado resultante: "+cadena);
							mensaje.setText("");
							contrasena.setText("");
						}
						else
						{
							JOptionPane.showMessageDialog(null, "La contraseña debe ser del mismo tamaño que el mensaje\nTamaño del mensaje:"+mensaje.getText().length()+" caracteres\nTamaño actual de la contraseña:"+new String(contrasena.getPassword()).length()+" caracteres","Error",JOptionPane.ERROR_MESSAGE);
						}
					}
				}
			}
			else
			{
				JOptionPane.showMessageDialog(null, "No se puede cifrar sin una contraseña","Error",JOptionPane.ERROR_MESSAGE);
			}
		}
		else if(e.getSource()==btnExaminar)
		{
			FileDialog caja=new FileDialog(this,"Abrir", FileDialog.LOAD);
	    	caja.setFile("*.txt");
	    	caja.setVisible(true);
	    	if(caja.getFile()!=null)
	    	{    
	    		label.setText(caja.getDirectory()+"\\"+caja.getFile());
	    		btnDescifrar.setVisible(true);
	    		contrasena.setText("");
	    		mensaje.setText("");
			}
			
		}
		else if(e.getSource()==btnDescifrar)
		{
			
			if(!new String(contrasena.getPassword()).equals(""))
			{
				Vernam met=new Vernam();
				String cadena=met.desencriptar(new LectorArchivos(label.getText()).realizarLectura(), new String(contrasena.getPassword()));
				mensaje.setText(cadena);
				label.setText("");
				btnDescifrar.setVisible(false);
			}
			else
			{
				JOptionPane.showMessageDialog(null, "No se puede decifrar sin una contraseña","Error",JOptionPane.ERROR_MESSAGE);
			}
		}
	}

}
