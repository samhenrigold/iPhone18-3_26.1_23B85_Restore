@interface SiriSharedUIStringDifferenceUtility
+ (_NSRange)findFirstDifferenceWithOriginalText:(id)text alternativeText:(id)alternativeText;
- (_TtC12SiriSharedUI35SiriSharedUIStringDifferenceUtility)init;
@end

@implementation SiriSharedUIStringDifferenceUtility

+ (_NSRange)findFirstDifferenceWithOriginalText:(id)text alternativeText:(id)alternativeText
{
  v4 = sub_21E4DCF78();
  v6 = v5;
  v7 = sub_21E4DCF78();
  _s12SiriSharedUI0aB25UIStringDifferenceUtilityC09findFirstE012originalText011alternativeJ0So8_NSRangeVSS_SStFZ_0(v4, v6, v7, v8);
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

- (_TtC12SiriSharedUI35SiriSharedUIStringDifferenceUtility)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriSharedUIStringDifferenceUtility();
  return [(SiriSharedUIStringDifferenceUtility *)&v3 init];
}

@end