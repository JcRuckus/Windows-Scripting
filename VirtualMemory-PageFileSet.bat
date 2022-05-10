::Virtual Memory
	wmic computersystem where name="%computername%" set AutomaticManagedPageFile=False
	wmic pagefileset where name="c:\\pagefile.sys" set InitialSize=8192,MaximumSize=16384
	wmic pagefileset list /format:list
	PAUSE