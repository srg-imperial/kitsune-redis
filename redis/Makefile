SUBDIRS = redis-2.0.0 redis-2.0.1 redis-2.0.2 redis-2.0.3 redis-2.0.4

.PHONY: subdirs $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@

clean:
	-for d in $(SUBDIRS); do (cd $$d; $(MAKE) clean ); done
