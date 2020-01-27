_check_env_done=${BUILDROOT}/.check-env.done


R=${BUILDROOT}

#
# help
#
help:
	@echo
	@echo "Usage: BUILDROOT=<abspath> ${MAKE} [target ...]"
	@echo
	@echo "Targets:"
	@echo "	print-env"
	@echo "	[clean-]mndiag[-init|-dev[-ndebug]]"
	@echo "	[clean-]mncommon[-init|-dev[-ndebug]]"
	@echo "	[clean-]mnl4c[-init|-dev[-ndebug]]"
	@echo "	[clean-]mnthr[-init|-dev[-ndebug]]"
	@echo "	[clean-]mnapp[-init|-dev[-ndebug]]"
	@echo "	damage"
	@echo "	clean"
	@echo "	all"


#
# global targets
#
damage: clean-check-env

purge: clean-check-env \
       mndiag-purge \
       mncommon-purge \
       mnl4c-purge \
       mnthr-purge \
       mnapp-purge \
       mnlipc-purge \
       mnspinfo-purge \
       mnprotobuf-purge

clean: mndiag-clean \
       mncommon-clean \
       mnl4c-clean \
       mnthr-clean \
       mnapp-clean \
       mnlipc-clean \
       mnspinfo-clean \
       mnprotobuf-clean

all-init: mndiag-init \
    	  mncommon-init \
	  mnl4c-init \
	  mnthr-init \
	  mnapp-init \
	  mnlipc-init \
	  mnspinfo-init \
	  mnprotobuf-init

all-dev: mndiag-dev \
    	 mncommon-dev \
	 mnl4c-dev \
	 mnthr-dev \
	 mnapp-dev \
	 mnlipc-dev \
	 mnspinfo-dev \
	 mnprotobuf-dev

all-dev-ndebug: mndiag-dev-ndebug \
    		mncommon-dev-ndebug \
		mnl4c-dev-ndebug \
		mnthr-dev-ndebug \
		mnapp-dev-ndebug \
		mnlipc-dev-ndebug \
		mnspinfo-dev-ndebug \
		mnprotobuf-dev-ndebug



#
# check-env
#
${_check_env_done}:
	@echo "check BUILDROOT..." && \
	    test -n "${BUILDROOT}" && \
	    test -d "${BUILDROOT}"
	@touch $@

check-env: ${_check_env_done}
	@echo $@ done

clean-check-env:
	@echo "check BUILDROOT..." && test -n "${BUILDROOT}"
	@rm _Rf ${_check_env_done}

include Makefile.mndiag
include Makefile.mncommon
include Makefile.mnl4c
include Makefile.mnthr
include Makefile.mnapp
include Makefile.mnlipc
include Makefile.mnspiinfo
include Makefile.mnprotobuf
