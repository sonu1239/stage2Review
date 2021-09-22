function funct_palindrome()
	{
                new=0;
		a=$1;
                        while [ $a -gt 0 ]
                                do
                                        r=$(( $a % 10 ));
                                        new=$(( ($new*10) + $r ));
                                        a=$(( $a / 10 ));
                                done
                echo "the palindrome of $n is $new and ";
		count=$(( $count + 1 ));
		n=$new;
		funct_Prime 
	}
read -p "please enter a number here : " n;
count=0;

function funct_Prime()
	{
        	a=0;
			if [ $n -eq 1 ]
                		then
                        		echo "$n is neither a prime number nor a composite number";
                		else
					if [ $n -gt 1 ]
						then
                        				for (( i=2; i<n; i++ ))
                                				do
                                        				r=$(( $n % $i ));
                                                			if [ $r -eq 0 ]
                                                	        		then
                                                        	        		a=$(( $a+1 ));
                                                			fi
                        					done
						
                        			if [ $a -eq 0 ]
                                			then
                                        			echo "$n is a prime no";
							 	 	if [ $count -eq 0 ]
										then
											funct_palindrome $n
                        	        				fi
							else
                                        			echo "$n is not a prime no";
                        			fi
					        else
                                                    echo "please enter a positive number" ;
                                        fi
       	
		 fi
	}
funct_Prime
