//Testing threading
#include <sys/statvfs.h>
#include <bits/stdc++.h>
#include <iostream>
#include <thread>
#include <unistd.h>
#include <mutex>
#include <condition_variable>


std::mutex mtx;
std::condition_variable cv;
bool ready = false;
int current= 0;

void print_me(int num){

	mtx.lock();
	current++;
	std::cout<< num + 1;// << " / "<< max;
	std::cout<< "Current count is:" << current <<std::endl;
	mtx.unlock();

}

void run(){

	std::unique_lock<std::mutex> lck(mtx);
	ready = true;
	cv.notify_all();
}

int main(){

	struct statvfs fiData;
	std::string filename;
	filename = "/home/pi/moos-ivp/mymoos/Logs";
	int n = filename.length();
	char file_array[n+1];
	strcpy(file_array,filename.c_str());

	if(statvfs(file_array,&fiData) < 0){
		std::cout<<"Failed"<<std::endl;
	}else{
	
		std::cout<<"Disk: "<<filename<<std::endl;
		std::cout<<"Block size: "<<fiData.f_bsize<<std::endl;
		std::cout<<"Total no blocks: "<<fiData.f_blocks<<std::endl;
		std::cout<<"Free blocks: "<<fiData.f_bfree<<std::endl;
	}
	std::cout<<"\nDone\n";
	return 0;

}
