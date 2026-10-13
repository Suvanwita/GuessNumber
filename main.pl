#!usr/bin/perl

use strict;
use warnings;

print "Enter if you want to guess or choose the number\n";
print "1. Guess\n 2. Choose\n";

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
        print "Your guess is right! YOU WIN";
    }else{
        print "You lost! The number was $num";
    }


}elsif($choice==2){

    # machine finds the number
    
    my $low=1;
    my $high=100;
    my $found=0;

    while($low<=$high){
        my $mid=int($low+($high-$low)/2);
        print "Is it $mid? \nAnswer \n1. Right \n2. Search lower \n3. Search higher\n";
        
        my $ans=<STDIN>;
        chomp($ans);

        if($ans==1){
            print "The number is $mid";
            $found=1;
            last;
        }elsif($ans==2){
            $high=$mid-1;
        }else{
            $low=$mid+1;
        }
    }
    if(!$found){
        print "Not found! :(";
    }

}else{
    print "Invalid choice\n";
}