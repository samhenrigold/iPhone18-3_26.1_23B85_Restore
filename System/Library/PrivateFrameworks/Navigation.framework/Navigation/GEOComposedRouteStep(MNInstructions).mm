@interface GEOComposedRouteStep(MNInstructions)
- (id)contentsForContext:()MNInstructions;
@end

@implementation GEOComposedRouteStep(MNInstructions)

- (id)contentsForContext:()MNInstructions
{
  v22 = *MEMORY[0x1E69E9840];
  composedRoute = [self composedRoute];
  v6 = [composedRoute legIndexForStepIndex:{objc_msgSend(self, "stepIndex")}];
  legs = [composedRoute legs];
  v8 = [legs count];

  if (v6 < v8)
  {
    legs2 = [composedRoute legs];
    v10 = [legs2 objectAtIndexedSubscript:v6];

    destination = [v10 destination];
    if ([self transportType] == 1)
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315650;
        v17 = "[GEOComposedRouteStep(MNInstructions) contentsForContext:]";
        v18 = 2080;
        v19 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNInstructions.m";
        v20 = 1024;
        v21 = 398;
LABEL_11:
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v16, 0x1Cu);
      }
    }

    else
    {
      if ([self transportType] != 6)
      {
        if (a3 == 1 || a3 == 3)
        {
          v15 = [MNSignInstructionContents contentsWithStep:self destination:destination];
        }

        else
        {
          if (a3 != 2)
          {
            v12 = GEOFindOrCreateLog();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_12;
            }

            v16 = 136315650;
            v17 = "[GEOComposedRouteStep(MNInstructions) contentsForContext:]";
            v18 = 2080;
            v19 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNInstructions.m";
            v20 = 1024;
            v21 = 419;
            goto LABEL_11;
          }

          v15 = [MNListInstructionContents contentsWithStep:self];
        }

        v13 = v15;
        goto LABEL_13;
      }

      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315650;
        v17 = "[GEOComposedRouteStep(MNInstructions) contentsForContext:]";
        v18 = 2080;
        v19 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNInstructions.m";
        v20 = 1024;
        v21 = 404;
        goto LABEL_11;
      }
    }

LABEL_12:

    v13 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v16 = 136315650;
    v17 = "[GEOComposedRouteStep(MNInstructions) contentsForContext:]";
    v18 = 2080;
    v19 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNInstructions.m";
    v20 = 1024;
    v21 = 389;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v16, 0x1Cu);
  }

  v13 = 0;
LABEL_14:

  return v13;
}

@end