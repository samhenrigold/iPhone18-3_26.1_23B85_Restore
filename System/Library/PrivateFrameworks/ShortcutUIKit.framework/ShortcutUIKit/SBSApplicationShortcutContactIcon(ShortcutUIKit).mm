@interface SBSApplicationShortcutContactIcon(ShortcutUIKit)
- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit;
@end

@implementation SBSApplicationShortcutContactIcon(ShortcutUIKit)

- (id)_scui_iconImageWithAssetProvider:()ShortcutUIKit
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBDC70]) initWithStyle:2 diameter:35.0];
  contactIdentifier = [self contactIdentifier];
  if (!contactIdentifier || (v4 = objc_alloc_init(MEMORY[0x277CBDAB8]), [MEMORY[0x277CBDC70] descriptorForRequiredKeysIncludingImage:1], v5 = objc_claimAutoreleasedReturnValue(), v18[0] = v5, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v18, 1), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "unifiedContactWithIdentifier:keysToFetch:error:", contactIdentifier, v6, 0), v7 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, !v7) || (objc_msgSend(v2, "monogramForContact:", v7), silhouetteMonogram = objc_claimAutoreleasedReturnValue(), v7, !silhouetteMonogram))
  {
    imageData = [self imageData];
    if (!imageData || (v10 = imageData, v11 = objc_alloc_init(MEMORY[0x277CBDB38]), [v11 setImageData:v10], objc_msgSend(self, "firstName"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "setGivenName:", v12), v12, objc_msgSend(self, "lastName"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "setFamilyName:", v13), v13, objc_msgSend(v2, "monogramForContact:", v11), silhouetteMonogram = objc_claimAutoreleasedReturnValue(), v11, v10, !silhouetteMonogram))
    {
      firstName = [self firstName];
      lastName = [self lastName];
      silhouetteMonogram = [v2 monogramForPersonWithFirstName:firstName lastName:lastName];

      if (!silhouetteMonogram)
      {
        silhouetteMonogram = [v2 silhouetteMonogram];
      }
    }
  }

  v16 = [silhouetteMonogram imageWithRenderingMode:1];

  return v16;
}

@end