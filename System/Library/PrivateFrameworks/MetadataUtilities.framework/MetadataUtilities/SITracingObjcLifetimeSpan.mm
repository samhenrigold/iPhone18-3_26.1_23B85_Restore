@interface SITracingObjcLifetimeSpan
- (id)init:(SITracingSpan *)init kind:(char)kind what:(const char *)what;
- (void)dealloc;
@end

@implementation SITracingObjcLifetimeSpan

- (id)init:(SITracingSpan *)init kind:(char)kind what:(const char *)what
{
  traceid = init->traceid;
  add_explicit = atomic_fetch_add_explicit(&next_spanid, 1uLL, memory_order_relaxed);
  self->_mySpan.traceid = traceid;
  self->_mySpan.spanid = add_explicit + 1;
  self->_mySpan.parentid = init->spanid;
  self->_mySpan.queryid = init->queryid;
  self->_mySpan.kind = kind;
  self->_mySpan.what = what;
  if (init_once != -1)
  {
    si_tracing_log_span_begin_cold_1();
  }

  return self;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_mySpan.traceid && init_once != -1)
  {
    si_tracing_log_span_begin_cold_1();
  }

  v3.receiver = self;
  v3.super_class = SITracingObjcLifetimeSpan;
  [(SITracingObjcLifetimeSpan *)&v3 dealloc];
}

@end