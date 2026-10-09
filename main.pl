#!usr/bin/perl

use strict;
use warnings;

print "Enter if you want to guess or choose the number\n"
print "1. Guess\n 2. Choose\n";

my $choice=<STDIN>

if($choice==1){

    # user guesses the number

    int $num=int(1+rand(100));
    print("You have 5 tries");

    $i=5;
    while($i>0){
        int $guess=<STDIN>;
        if($guess==num){
            $found=true;
            break;
        }elsif($guess<num){
            print "Too low!\n";
        }else{
            print "Too high!\n";
        }
    }
    if($found){
        print "Your guess is right! YOU WIN";
    }else{
        print "You lost!";
    }


}elsif($choice==2){

    # machine finds the number

    

}else{
    print "Invalid choice\n";
}