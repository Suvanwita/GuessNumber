#!usr/bin/perl

use strict;
use warnings;

use Term::ANSIColor;

print colored("Enter if you want to guess or choose the number\n","cyan");
print colored("1. Guess\n2. Choose\n","blue");

my $choice=<STDIN>;
chomp($choice);

if($choice==1){

    # user guesses the number

    my $num=int(1+rand(100));
    print "The number lies between 1 and 100. You have 5 tries\n";

    my $i=5;
    my $found=0;
    while($i>0){
        my $guess=<STDIN>;
        if($guess==$num){
            $found=1;
            last;
        }elsif($guess<$num){
            print "Too low!\n";
        }else{
            print "Too high!\n";
        }
        $i--;
    }
    if($found){
        print colored("Your guess is right! YOU WIN\n","green");
    }else{
        print colored("You lost! The number was $num\n","magenta");
    }


}elsif($choice==2){

    # machine finds the number
    
    my $low=1;
    my $high=100;
    my $found=0;

    while($low<=$high){
        my $mid=int($low+($high-$low)/2);
        print colored("Is it $mid?\n", "bold bright_cyan");
        print colored("Answer \n1. Right \n2. Search lower \n3. Search higher\n","yellow");
        
        my $ans=<STDIN>;
        chomp($ans);

        if($ans==1){
            print colored("The number is $mid", 'green');
            $found=1;
            last;
        }elsif($ans==2){
            $high=$mid-1;
        }else{
            $low=$mid+1;
        }
    }
    if(!$found){
        print colored("Not found! :(", 'magenta');
    }

}else{
    print colored("Invalid choice\n", 'red');
}