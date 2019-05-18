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
	@echo "	[clean-]mrkcommon[-init|-dev[-ndebug]]"
	@echo "	[clean-]mrkl4c[-init|-dev[-ndebug]]"
	@echo "	[clean-]mrkthr[-init|-dev[-ndebug]]"
	@echo "	[clean-]mrkapp[-init|-dev[-ndebug]]"
	@echo "	damage"
	@echo "	clean"
	@echo "	all"


#
# global targets
#
damage: clean-check-env

purge: clean-check-env mndiag-purge mrkcommon-purge mrkl4c-purge mrkthr-purge mrkapp-purge

clean: mndiag-purge mrkcommon-purge mrkl4c-purge mrkthr-purge mrkapp-purge

all-init: mndiag-init mrkcommon-init mrkl4c-init mrkthr-init mrkapp-init

all-dev: mndiag-dev mrkcommon-dev mrkl4c-dev mrkthr-dev mrkapp-dev

all-dev-ndebug: mndiag-dev-ndebug mrkcommon-dev-ndebug mrkl4c-dev-ndebug mrkthr-dev-ndebug mrkapp-dev-ndebug



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
include Makefile.mrkcommon
include Makefile.mrkl4c
include Makefile.mrkthr
include Makefile.mrkapp
