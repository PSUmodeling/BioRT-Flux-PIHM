#include <time.h>
#include <unistd.h>
int main(){
time_t base_time_tv_sec = 0;
struct timespec spec;
clock_gettime(CLOCK_MONOTONIC_RAW, &spec);
base_time_tv_sec = spec.tv_sec;
clock_getres(CLOCK_MONOTONIC_RAW, &spec);
return(0);
}
