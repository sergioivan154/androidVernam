package compuertas;

public class XOR {
	public int suma(int a, int b)
	{
		int c=0;
		switch(a)
		{
			case 0:
				switch(b)
				{
					case 0:
						c=0;
						break;
					case 1:
						c=1;
						break;
				}
				break;
			case 1:
				switch(b)
				{
					case 0:
						c=1;
						break;
					case 1:
						c=0;
						break;
				}
		}
		return c;
	}
}
