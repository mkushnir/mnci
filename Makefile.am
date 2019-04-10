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
	@echo "	[clean-]mndiag[-init]"
	@echo "	[clean-]mrkcommon[-init]"
	@echo "	damage"
	@echo "	clean"
	@echo "	all"


#
# global targets
#
damage: clean-check-env

purge: clean-check-env purge-mndiag purge-mrkcommon

clean: clean-mndiag clean-mrkcommon

all-init: mndiag-init mrkcommon-init

all-dev: mndiag-dev mrkcommon-dev

all: mndiag mrkcommon



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
