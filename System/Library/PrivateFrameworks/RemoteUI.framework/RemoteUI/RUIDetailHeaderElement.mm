@interface RUIDetailHeaderElement
- (void)configureView:(id)view;
- (void)setBody:(id)body;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation RUIDetailHeaderElement

- (void)configureView:(id)view
{
  v47[10] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    body = [(RUIElement *)self body];
    attributes = [(RUIElement *)self attributes];
    [viewCopy setDetailText:body attributes:attributes];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeWeak(&self->_headerView, viewCopy);
    v7 = MEMORY[0x277D75348];
    attributes2 = [(RUIElement *)self attributes];
    v9 = [attributes2 objectForKeyedSubscript:@"color"];
    v10 = [v7 _remoteUI_colorWithString:v9 defaultColor:0];
    v11 = v10;
    if (v10)
    {
      detailHeaderLabelTextColor = v10;
    }

    else
    {
      style = [(RUIElement *)self style];
      detailHeaderLabelTextColor = [style detailHeaderLabelTextColor];
    }

    WeakRetained = objc_loadWeakRetained(&self->_headerView);
    [WeakRetained setDetailHeaderColor:detailHeaderLabelTextColor];

    attributes3 = [(RUIElement *)self attributes];
    v16 = [attributes3 objectForKeyedSubscript:@"url"];
    if (v16)
    {
    }

    else
    {
      attributes4 = [(RUIElement *)self attributes];
      v18 = [attributes4 objectForKeyedSubscript:@"activationFunction"];

      if (!v18)
      {
        goto LABEL_11;
      }
    }

    objc_initWeak(location, self);
    v19 = objc_loadWeakRetained(&self->_headerView);
    detailHeaderLabel = [v19 detailHeaderLabel];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __40__RUIDetailHeaderElement_configureView___block_invoke;
    v43[3] = &unk_2782E81C8;
    objc_copyWeak(&v44, location);
    [detailHeaderLabel setAction:v43];

    objc_destroyWeak(&v44);
    objc_destroyWeak(location);
LABEL_11:
    v21 = *MEMORY[0x277D76A08];
    v46[0] = @"title1";
    v46[1] = @"title2";
    v22 = *MEMORY[0x277D76A20];
    v47[0] = v21;
    v47[1] = v22;
    v23 = *MEMORY[0x277D76A28];
    v46[2] = @"title3";
    v46[3] = @"headline";
    v24 = *MEMORY[0x277D76988];
    v47[2] = v23;
    v47[3] = v24;
    v25 = *MEMORY[0x277D769D0];
    v46[4] = @"subheadline";
    v46[5] = @"body";
    v26 = *MEMORY[0x277D76918];
    v47[4] = v25;
    v47[5] = v26;
    v27 = *MEMORY[0x277D76920];
    v46[6] = @"callout";
    v46[7] = @"footnote";
    v28 = *MEMORY[0x277D76968];
    v47[6] = v27;
    v47[7] = v28;
    v46[8] = @"caption1";
    v46[9] = @"caption2";
    v29 = *MEMORY[0x277D76940];
    v47[8] = *MEMORY[0x277D76938];
    v47[9] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:10];
    attributes5 = [(RUIElement *)self attributes];
    v32 = [attributes5 objectForKeyedSubscript:@"textStyle"];

    v33 = [v30 objectForKeyedSubscript:v32];

    if (v33)
    {
      v36 = objc_loadWeakRetained(&self->_headerView);
      detailHeaderLabel2 = [v36 detailHeaderLabel];
      v38 = MEMORY[0x277D74300];
      v39 = [v30 objectForKeyedSubscript:v32];
      traitCollection = [viewCopy traitCollection];
      v41 = [v38 preferredFontForTextStyle:v39 compatibleWithTraitCollection:traitCollection];
      [detailHeaderLabel2 setFont:v41];
    }

    else
    {
      if (!v32)
      {
        goto LABEL_14;
      }

      isInternalInstall = _isInternalInstall(v34, v35);
      if (!isInternalInstall)
      {
        goto LABEL_14;
      }

      v36 = _RUILoggingFacility(isInternalInstall);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v32;
        _os_log_impl(&dword_21B93D000, v36, OS_LOG_TYPE_DEFAULT, "'%@' is not a supported text style", location, 0xCu);
      }
    }

LABEL_14:
  }
}

void __40__RUIDetailHeaderElement_configureView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performAction:2 completion:0];
}

- (void)setBody:(id)body
{
  bodyCopy = body;
  body = [(RUIElement *)self body];

  if (body != bodyCopy)
  {
    v9.receiver = self;
    v9.super_class = RUIDetailHeaderElement;
    [(RUIElement *)&v9 setBody:bodyCopy];
    WeakRetained = objc_loadWeakRetained(&self->_headerView);
    body2 = [(RUIElement *)self body];
    attributes = [(RUIElement *)self attributes];
    [WeakRetained setDetailText:body2 attributes:attributes];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = RUIDetailHeaderElement;
  [(RUIElement *)&v7 setEnabled:?];
  WeakRetained = objc_loadWeakRetained(&self->_headerView);
  detailHeaderLabel = [WeakRetained detailHeaderLabel];
  [detailHeaderLabel setEnabled:enabledCopy];
}

@end