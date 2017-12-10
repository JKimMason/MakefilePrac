# C-Logging

## C-Logging library
Add this library to incorporate along with make to log.


### Usage:
- [ ] Compile together
- [ ] Run with mark as shown in example
- [ ] Check logs



### Ex:
```
$ make 2>> build.log
* Outputs stderr to build.log
```


#### Function Calls:
```
log_note(const char *fmt, ...);   
log_trace(const char *fmt, ...);   
log_debug(const char *fmt, ...);   
log_info(const char *fmt, ...);   
log_warn(const char *fmt, ...);   
log_error(const char *fmt, ...);   
log_fatal(const char *fmt, ...);   
```