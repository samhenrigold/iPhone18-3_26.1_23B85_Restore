@interface ActivityPickerServiceViewController
- (ActivityPickerServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cleanupViewAndExtension;
- (void)configureWithIsEmbedded:(BOOL)embedded headerText:(id)text footerText:(id)footerText includeEntireCategory:(BOOL)category selectedApplications:(id)applications selectedCategories:(id)categories selectedWebDomains:(id)domains selectedUntokenizedApplications:(id)self0 selectedUntokenizedCategories:(id)self1 selectedUntokenizedWebDomains:(id)self2;
@end

@implementation ActivityPickerServiceViewController

- (void)configureWithIsEmbedded:(BOOL)embedded headerText:(id)text footerText:(id)footerText includeEntireCategory:(BOOL)category selectedApplications:(id)applications selectedCategories:(id)categories selectedWebDomains:(id)domains selectedUntokenizedApplications:(id)self0 selectedUntokenizedCategories:(id)self1 selectedUntokenizedWebDomains:(id)self2
{
  embeddedCopy = embedded;
  categoryCopy = category;
  footerTextCopy = footerText;
  if (text)
  {
    v80 = sub_100033D34();
    v14 = v13;
    if (footerTextCopy)
    {
LABEL_3:
      footerTextCopy = sub_100033D34();
      v16 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    v80 = 0;
    v14 = 0;
    if (footerText)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  v17 = sub_100033DF4();
  v18 = sub_100033DF4();
  v19 = sub_100033DF4();
  v20 = sub_100033DF4();
  v21 = sub_100033DF4();
  v22 = sub_100033DF4();
  selfCopy = self;
  sub_100013F80(embeddedCopy, v80, v14, footerTextCopy, v16, categoryCopy, v17, v18, v19, v20, v21, v22);

  v17, v24, v25, v26, v27, v28, v29, v30;
  v18, v31, v32, v33, v34, v35, v36, v37;
  v19, v38, v39, v40, v41, v42, v43, v44;
  v20, v45, v46, v47, v48, v49, v50, v51;
  v21, v52, v53, v54, v55, v56, v57, v58;
  v22, v59, v60, v61, v62, v63, v64, v65;
  v16, v66, v67, v68, v69, v70, v71, v72;

  v14, v73, v74, v75, v76, v77, v78, v79;
}

- (void)cleanupViewAndExtension
{
  selfCopy = self;
  sub_100017EF8();
}

- (ActivityPickerServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end