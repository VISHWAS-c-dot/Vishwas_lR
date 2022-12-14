# GNU Make workspace makefile autogenerated by Premake

ifndef config
  config=linux
endif

ifndef verbose
  SILENT = @
endif

ifeq ($(config),linux)
  DNPSlave_config = linux
  dnp_config = linux
  utils_config = linux
  IoTarg_config = linux
endif
ifeq ($(config),sample)
  DNPSlave_config = sample
  dnp_config = sample
  utils_config = sample
  IoTarg_config = sample
endif

PROJECTS := DNPSlave dnp utils IoTarg

.PHONY: all clean help $(PROJECTS) 

all: $(PROJECTS)

DNPSlave: dnp utils IoTarg
ifneq (,$(DNPSlave_config))
	@echo "==== Building DNPSlave ($(DNPSlave_config)) ===="
	@${MAKE} --no-print-directory -C DNPSlave -f Makefile config=$(DNPSlave_config)
endif

dnp:
ifneq (,$(dnp_config))
	@echo "==== Building dnp ($(dnp_config)) ===="
	@${MAKE} --no-print-directory -C tmwscl/dnp -f Makefile config=$(dnp_config)
endif

utils:
ifneq (,$(utils_config))
	@echo "==== Building utils ($(utils_config)) ===="
	@${MAKE} --no-print-directory -C tmwscl/utils -f Makefile config=$(utils_config)
endif

IoTarg:
ifneq (,$(IoTarg_config))
	@echo "==== Building IoTarg ($(IoTarg_config)) ===="
	@${MAKE} --no-print-directory -C tmwscl/tmwtarg -f Makefile config=$(IoTarg_config)
endif

clean:
	@${MAKE} --no-print-directory -C DNPSlave -f Makefile clean
	@${MAKE} --no-print-directory -C tmwscl/dnp -f Makefile clean
	@${MAKE} --no-print-directory -C tmwscl/utils -f Makefile clean
	@${MAKE} --no-print-directory -C tmwscl/tmwtarg -f Makefile clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "  linux"
	@echo "  sample"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   DNPSlave"
	@echo "   dnp"
	@echo "   utils"
	@echo "   IoTarg"
	@echo ""
	@echo "For more information, see http://industriousone.com/premake/quick-start"