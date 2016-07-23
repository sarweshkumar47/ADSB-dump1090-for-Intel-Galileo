# ADSB-dump1090-for-Intel-Galileo
###Mode S decoder for RTL devices

## SDR (Software Defined Radio)


  Software-defined radio (SDR) is a technique for turning a computer into a radio. But not just
  an AM/FM radio - by using the computing power on your desktop you can listen and decode a wide 
  variety of broadcasts. SDR can turn your computer into a weather-band receiver, a police or fire
  report scanner, a music listening station, plane and ship tracking information receiver (adsb 
  receivers) and more!. Instead of manually tuning inductors, its all done in software by chips 
  fast enough to pick up and decode radio waves on the fly.


## RTL-SDR


  RTL-SDR is a very cheap software defined radio that uses a DVB-T TV tuner dongle based on the 
  RTL2832U chipset. RTL-SDR turns your Realtek RTL2832 based DVB dongle into a SDR receiver.
 
      
##Hardware
     
      
  * [NooElec RTLSDR Receiver](https://www.nooelec.com/store/sdr/sdr-receivers/nesdr-mini-rtl2832-r820t.html)
  

  * [USB Hub](http://www.amazon.in/Belkin-F5U407-4-Port-Ultra-Black/dp/B005UUY25E?tag=googinhydr18418-21&tag=googinkenshoo-21&ascsubtag=8dc2c2fb-30f4-4e8a-9b5c-9e087d2b8be3)

  * [Powered USB Hub](http://www.ebay.in/itm/Transcend-TS-HUB3K-HUB3-4-Port-3-0-USB-HUB-/281844012605?hash=item419f36563d:g:LKoAAOSw7PBToA8D) (Optional)
 
      
## Driver installation for RTL-SDR
  
      
  Run the below command in intel edison terminal/shell to install librtlsdr driver for rtlsdr and to
  configure audio system
  
```bash
 ./rtlsdr_dump1090_config.sh
```
      
## Run Mode S decoder


  Run adsb_run script, to see the decoded aircrafts.

```bash  
 ./adsb_run.sh
```
      
## Reference

* [http://sdr.osmocom.org/trac/wiki/rtl-sdr](http://sdr.osmocom.org/trac/wiki/rtl-sdr)
* [http://www.satsignal.eu/raspberry-pi/dump1090.html](http://www.satsignal.eu/raspberry-pi/dump1090.html)

