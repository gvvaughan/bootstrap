build_aux	= build-aux

inline_source = $(build_aux)/inline-source
bootstrap_in  = $(build_aux)/bootstrap.in

prog_SCRIPTS = bootstrap

bootstrap_SOURCES =			\
	$(bootstrap_in)			\
	$(build_aux)/extract-trace	\
	$(build_aux)/funclib.sh		\
	$(build_aux)/options-parser	\
	$(NOTHING_ELSE)

all: $(prog_SCRIPTS)

bootstrap: $(bootstrap_SOURCES)
	'$(inline_source)' '$(bootstrap_in)' > '$@'
