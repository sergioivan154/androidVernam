package diccionario;

public class Baudot 
{
	
	private int[] valor;
	private char caracter;
	private boolean figuras;
	
	public char toLetra(int [] letra)
	{
		//String bin = Integer.toString(Integer.parseInt("10", 10), 2);
		String codigo="";
		caracter=' ';
		for(int i=0;i<letra.length;i++)
			codigo+=String.valueOf(letra[i]);
		
		Integer estado=Integer.parseInt( Integer.toString(Integer.parseInt(codigo, 2), 10));
		System.out.println(codigo);	
			switch(estado)
			{
			case 0:
				caracter=':';
				break;
			case 1:
				caracter='E';
				break;
			case 2:
				caracter=';';
				break;
			case 3:
				caracter='A';
				break;
			case 4:
				caracter=' ';
				break;
			case 5:
				caracter='S';
				break;
			case 6:
				caracter='I';
				break;
			case 7:
				caracter='U';
				break;
			case 8:
				caracter='#';
				break;
			case 9:
				caracter='D';
				break;
			case 10:
				caracter='R';
				break;
			case 11:
				caracter='J';
				break;
			case 12:
				caracter='N';
				break;
			case 13:
				caracter='F';
				break;
			case 14:
				caracter='C';
				break;
			case 15:
				caracter='K';
				break;
			case 16:
				caracter='T';
				break;
			case 17:
				caracter='Z';
				break;
			case 18:
				caracter='L';
				break;
			case 19:
				caracter='W';
				break;
			case 20:
				caracter='H';
				break;
			case 21:
				caracter='Y';
				break;
			case 22:
				caracter='P';
				break;
			case 23:
				caracter='Q';
				break;
			case 24:
				caracter='O';
				break;
			case 25:
				caracter='B';
				break;
			case 26:
				caracter='G';
				break;
			case 27:
				caracter='-';
				break;
			case 28:
				caracter='M';
				break;
			case 29:
				caracter='X';
				break;
			case 30:
				caracter='V';
			case 31:
				caracter='?';
				break;
				
			}
		return caracter;
	}
	public int[] toBaudot(char caracter)
	{
		valor=new int[5];
		switch(caracter)
		{
		case ':':
			valor[0]=0;
			valor[1]=0;
			valor[2]=0;
			valor[3]=0;
			valor[4]=0;
			break;
		case '-':
			valor[0]=1;
			valor[1]=1;
			valor[2]=0;
			valor[3]=1;
			valor[4]=1;
			break;
		case '?':
			valor[0]=1;
			valor[1]=1;
			valor[2]=1;
			valor[3]=1;
			valor[4]=1;
			break;
		case '#':
			valor[0]=0;
			valor[1]=1;
			valor[2]=0;
			valor[3]=0;
			valor[4]=0;
			break;
		case ';':
			valor[0]=0;
			valor[1]=0;
			valor[2]=0;
			valor[3]=1;
			valor[4]=0;
			break;
			case 'A':
				valor[0]=0;
				valor[1]=0;
				valor[2]=0;
				valor[3]=1;
				valor[4]=1;
				break;
			case 'B':
				valor[0]=1;
				valor[1]=1;
				valor[2]=0;
				valor[3]=0;
				valor[4]=1;
				break;
			case 'C':
				valor[0]=0;
				valor[1]=1;
				valor[2]=1;
				valor[3]=1;
				valor[4]=0;
				break;
			case 'D':case '$':
				valor[0]=0;
				valor[1]=1;
				valor[2]=0;
				valor[3]=0;
				valor[4]=1;
				break;
			case 'E':case '3':
				valor[0]=0;
				valor[1]=0;
				valor[2]=0;
				valor[3]=0;
				valor[4]=1;
				break;
			case 'F':case '!':
				valor[0]=0;
				valor[1]=1;
				valor[2]=1;
				valor[3]=0;
				valor[4]=1;
				break;
			case 'G':case '&':
				valor[0]=1;
				valor[1]=1;
				valor[2]=0;
				valor[3]=1;
				valor[4]=0;
				break;
			case 'H':
				valor[0]=1;
				valor[1]=0;
				valor[2]=1;
				valor[3]=0;
				valor[4]=0;
				break;
			case 'I':case '8':
				valor[0]=0;
				valor[1]=0;
				valor[2]=1;
				valor[3]=1;
				valor[4]=0;
				break;
			case 'J':case '\'':
				valor[0]=0;
				valor[1]=1;
				valor[2]=0;
				valor[3]=1;
				valor[4]=1;
				break;
			case 'K':case '(':
				valor[0]=0;
				valor[1]=1;
				valor[2]=1;
				valor[3]=1;
				valor[4]=1;
				break;
			case 'L':case ')':
				valor[0]=1;
				valor[1]=0;
				valor[2]=0;
				valor[3]=1;
				valor[4]=0;
				break;
			case 'M':case '.':
				valor[0]=1;
				valor[1]=1;
				valor[2]=1;
				valor[3]=0;
				valor[4]=0;
				break;
			case 'N':
				valor[0]=0;
				valor[1]=1;
				valor[2]=1;
				valor[3]=0;
				valor[4]=0;
				break;
			case 'O':case '9':
				valor[0]=1;
				valor[1]=1;
				valor[2]=0;
				valor[3]=0;
				valor[4]=0;
				break;
			case 'P':case '0':
				valor[0]=1;
				valor[1]=0;
				valor[2]=1;
				valor[3]=1;
				valor[4]=0;
				break;
			case 'Q':case '1':
				valor[0]=1;
				valor[1]=0;
				valor[2]=1;
				valor[3]=1;
				valor[4]=1;
				break;
			case 'R':case '4':
				valor[0]=0;
				valor[1]=1;
				valor[2]=0;
				valor[3]=1;
				valor[4]=0;
				break;
			case 'S':
				valor[0]=0;
				valor[1]=0;
				valor[2]=1;
				valor[3]=0;
				valor[4]=1;
				break;
			case 'T':case '5':
				valor[0]=1;
				valor[1]=0;
				valor[2]=0;
				valor[3]=0;
				valor[4]=0;
				break;
			case 'U':case '7':
				valor[0]=0;
				valor[1]=0;
				valor[2]=1;
				valor[3]=1;
				valor[4]=1;
				break;
			case 'V':
				valor[0]=1;
				valor[1]=1;
				valor[2]=1;
				valor[3]=1;
				valor[4]=0;
				break;
			case 'W':case '2':
				valor[0]=1;
				valor[1]=0;
				valor[2]=0;
				valor[3]=1;
				valor[4]=1;
				break;
			case 'X':case '\\':
				valor[0]=1;
				valor[1]=1;
				valor[2]=1;
				valor[3]=0;
				valor[4]=1;
				break;
			case 'Y':case '6':
				valor[0]=1;
				valor[1]=0;
				valor[2]=1;
				valor[3]=0;
				valor[4]=1;
				break;
			case 'Z':case '"':
				valor[0]=1;
				valor[1]=0;
				valor[2]=0;
				valor[3]=0;
				valor[4]=1;
				break;
			case (char)(32):
				valor[0]=0;
				valor[1]=0;
				valor[2]=1;
				valor[3]=0;
				valor[4]=0;
				break;
				
		}
		return valor;
	}
	
}
