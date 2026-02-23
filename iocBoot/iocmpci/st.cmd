#!../../bin/linux-x86_64/mpci

< envPaths

epicsEnvSet("IOCNAME", "mpci")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/mpci.dbd"
mpci_registerRecordDeviceDriver pdbbase


var("PSCDebug", "5")

# Listen on 0.0.0.0:1234  (pass zero for random port)
# for messages coming from "device" localhost:5000

createPSCUDP("pscudp1", "10.0.142.145", 5000, 1234)

## Load record instances
dbLoadRecords("db/mpci.db","P=$(IOCNAME), NO=1")




cd "${TOP}/iocBoot/${IOC}"
iocInit
