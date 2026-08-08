import 'dart:math';

void main(List<String> args) {
    //Private, Get and Set
    print("===================PART 1===================");
    Membership process=Membership();
    process.deleteMember();
    process.UpdateName="Umut";
    print(process.ShowUsername);


    //Inheritance
    print("===================PART 2===================");
    NormalUser firstUser=NormalUser();
    firstUser.LogIn();

    //Polymorphism
    print("===================PART 3===================");
    User secondUser=User();
    AdminUser thirdUser=AdminUser();
    User fourthUser=NormalUser();//up casting
    User fifthUser=AdminUser();//up casting
    List<User> AllUsers=[];
    AllUsers.addAll([firstUser,secondUser,thirdUser,fourthUser,fifthUser]);
    userLogin(secondUser);//user 
    userLogin(thirdUser);//admin user
    userLogin(fourthUser);//normal user
    userLogin(fifthUser);//admin user

}
void userLogin(User user){
    user.LogIn();
}


class Membership{
    String _name="";

    void set UpdateName(String username){
        _name=username;
    }
    
    String get ShowUsername{
        return "Username:$_name";

    }

    bool deleteMember(){
        if (anyMember()){
            print("Member has been deleted.");
            return true;
        }
        else{
            print("Could not be deleted because there is not a member.");
            return false;
        }
        }

    bool anyMember(){
        return Random().nextBool();
    }
}

class User{
        String mail="";
    String password="";

    void LogIn(){
        print("User Logged In");
    }
}

class NormalUser extends User{
    void Invite(){

    }
    @override
    void LogIn(){
        super.LogIn();
        print("Normal User Logged In");
    } 

}

class AdminUser extends User{
    void BanningUser(){ 

    }

    @override
    void LogIn(){
        super.LogIn();
        print("Admin User Logged In");
    } 
}
