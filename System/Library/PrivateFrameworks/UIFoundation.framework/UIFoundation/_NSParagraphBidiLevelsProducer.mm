@interface _NSParagraphBidiLevelsProducer
+ (uint64_t)resolvedBaseWritingDirectionForTextContentManager:(uint64_t)manager AttributedString:(uint64_t)string paragraphRange:(size_t)range baseWritingDirection:(uint64_t)direction fallbackBaseWritingDirection:(int)writingDirection bidiLevels:(uint64_t)levels;
@end

@implementation _NSParagraphBidiLevelsProducer

+ (uint64_t)resolvedBaseWritingDirectionForTextContentManager:(uint64_t)manager AttributedString:(uint64_t)string paragraphRange:(size_t)range baseWritingDirection:(uint64_t)direction fallbackBaseWritingDirection:(int)writingDirection bidiLevels:(uint64_t)levels
{
  objc_opt_self();
  if (range)
  {
    if (a2)
    {
      baseWritingDirectionResolutionStrategy = [a2 baseWritingDirectionResolutionStrategy];
    }

    else
    {
      baseWritingDirectionResolutionStrategy = +[NSTextContentManager defaultBaseWritingDirectionResolutionStrategy];
    }

    v13 = baseWritingDirectionResolutionStrategy == 2 && direction == -1;
    if (direction == -1)
    {
      v14 = malloc_type_calloc(range, 1uLL, 0x100004077774924uLL);
      memset(v14, writingDirection, range);
      if (v13)
      {
LABEL_10:
        CFAttributedStringGetStatisticalWritingDirections();
        if (!v14)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v14 = 0;
      if (v13)
      {
        goto LABEL_10;
      }
    }

    CFAttributedStringGetBidiLevelsAndResolvedDirections();
    if (!v14)
    {
LABEL_15:
      free(v14);
      return direction;
    }

LABEL_14:
    direction = *v14;
    goto LABEL_15;
  }

  return direction;
}

@end