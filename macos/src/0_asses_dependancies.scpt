on run {input, parameters}
	
	if (do shell script "bash -c 'if [ -f /opt/homebrew/bin/basenc ]\n then\n echo 0\n else\n echo 1\n fi'") is less than 1 then
	else
		display dialog "Automator needs to install additional packages to continue" with title "Missing Dependancies" with icon caution buttons {"Continue"}
		do shell script "/bin/bash -c $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" with administrator privileges
		do shell script "/opt/homebrew/bin/brew install coreutils"
	end if
	
	return input
end run
