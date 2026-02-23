TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = mpci
# mpci.dbd will be created and installed
DBD += mpci.dbd

# mpci.dbd will be made up from these files:
mpci_DBD += base.dbd

# Include dbd files from all support applications:
mpci_DBD += pscCore.dbd

# Add all the support libraries needed by this IOC
mpci_LIBS += pscCore 

# pdu_registerRecordDeviceDriver.cpp derives from pdu.dbd
mpci_SRCS += mpci_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
mpci_SRCS_DEFAULT += mpciMain.cpp
mpci_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#pdu_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
mpci_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

