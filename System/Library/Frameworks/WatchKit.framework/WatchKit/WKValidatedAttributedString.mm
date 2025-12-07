@interface WKValidatedAttributedString
@end

@implementation WKValidatedAttributedString

void ___WKValidatedAttributedString_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v58;
    v11 = *MEMORY[0x277D74060];
    v56 = *MEMORY[0x277D740E8];
    v53 = *MEMORY[0x277D74068];
    v54 = *MEMORY[0x277D740C0];
    v52 = *MEMORY[0x277D74158];
    v51 = *MEMORY[0x277D741E8];
    v50 = *MEMORY[0x277D74148];
    v49 = *MEMORY[0x277D740A8];
    v55 = a4;
    do
    {
      v12 = 0;
      do
      {
        if (*v58 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v57 + 1) + 8 * v12);
        v14 = [v13 isEqualToString:v11];
        if (v14)
        {
          v15 = wk_default_log(v14);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }

          v16 = [*(a1 + 32) string];
          *buf = 136446723;
          v62 = "_WKValidatedAttributedString_block_invoke";
          v63 = 1024;
          v64 = 315;
          v65 = 2113;
          v66 = v16;
          v17 = v15;
          v18 = "%{public}s:%d: Attributed string '%{private}@' contains NSAttachmentAttributeName. Removed";
LABEL_40:
          _os_log_error_impl(&dword_23B338000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x1Cu);

          a4 = v55;
          goto LABEL_11;
        }

        v19 = [v13 isEqualToString:v56];
        if (v19)
        {
          v15 = wk_default_log(v19);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }

          v16 = [*(a1 + 32) string];
          *buf = 136446723;
          v62 = "_WKValidatedAttributedString_block_invoke";
          v63 = 1024;
          v64 = 318;
          v65 = 2113;
          v66 = v16;
          v17 = v15;
          v18 = "%{public}s:%d: Attributed string '%{private}@' contains NSLinkAttributeName. Removed";
          goto LABEL_40;
        }

        if ([v13 isEqualToString:v54])
        {
          v20 = [v7 objectForKeyedSubscript:v13];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          a4 = v55;
          if ((isKindOfClass & 1) == 0)
          {
            v15 = wk_default_log(v22);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v48 = [*(a1 + 32) string];
              v42 = [v7 objectForKeyedSubscript:v13];
              *buf = 136446979;
              v62 = "_WKValidatedAttributedString_block_invoke";
              v63 = 1024;
              v64 = 321;
              v65 = 2113;
              v66 = v48;
              v67 = 2114;
              v68 = v42;
              v39 = v42;
              v40 = v15;
              v41 = "%{public}s:%d: Attributed string '%{private}@' contains NSForegroundColorAttributeName that isn't a UIColor (%{public}@). Removed";
              goto LABEL_38;
            }

LABEL_11:

            [*(a1 + 40) removeAttribute:v13 range:{a3, a4}];
            goto LABEL_12;
          }
        }

        if ([v13 isEqualToString:v53])
        {
          v23 = [v7 objectForKeyedSubscript:v13];
          objc_opt_class();
          v24 = objc_opt_isKindOfClass();

          a4 = v55;
          if ((v24 & 1) == 0)
          {
            v15 = wk_default_log(v25);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            v48 = [*(a1 + 32) string];
            v43 = [v7 objectForKeyedSubscript:v13];
            *buf = 136446979;
            v62 = "_WKValidatedAttributedString_block_invoke";
            v63 = 1024;
            v64 = 324;
            v65 = 2113;
            v66 = v48;
            v67 = 2114;
            v68 = v43;
            v39 = v43;
            v40 = v15;
            v41 = "%{public}s:%d: Attributed string '%{private}@' contains NSBackgroundColorAttributeName that isn't a UIColor (%{public}@). Removed";
LABEL_38:
            _os_log_error_impl(&dword_23B338000, v40, OS_LOG_TYPE_ERROR, v41, buf, 0x26u);

            a4 = v55;
            goto LABEL_11;
          }
        }

        if ([v13 isEqualToString:v52])
        {
          v26 = [v7 objectForKeyedSubscript:v13];
          objc_opt_class();
          v27 = objc_opt_isKindOfClass();

          a4 = v55;
          if ((v27 & 1) == 0)
          {
            v15 = wk_default_log(v28);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            v48 = [*(a1 + 32) string];
            v44 = [v7 objectForKeyedSubscript:v13];
            *buf = 136446979;
            v62 = "_WKValidatedAttributedString_block_invoke";
            v63 = 1024;
            v64 = 327;
            v65 = 2113;
            v66 = v48;
            v67 = 2114;
            v68 = v44;
            v39 = v44;
            v40 = v15;
            v41 = "%{public}s:%d: Attributed string '%{private}@' contains NSStrokeColorAttributeName that isn't a UIColor (%{public}@). Removed";
            goto LABEL_38;
          }
        }

        if ([v13 isEqualToString:v51])
        {
          v29 = [v7 objectForKeyedSubscript:v13];
          objc_opt_class();
          v30 = objc_opt_isKindOfClass();

          a4 = v55;
          if ((v30 & 1) == 0)
          {
            v15 = wk_default_log(v31);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            v48 = [*(a1 + 32) string];
            v45 = [v7 objectForKeyedSubscript:v13];
            *buf = 136446979;
            v62 = "_WKValidatedAttributedString_block_invoke";
            v63 = 1024;
            v64 = 330;
            v65 = 2113;
            v66 = v48;
            v67 = 2114;
            v68 = v45;
            v39 = v45;
            v40 = v15;
            v41 = "%{public}s:%d: Attributed string '%{private}@' contains NSUnderlineColorAttributeName that isn't a UIColor (%{public}@). Removed";
            goto LABEL_38;
          }
        }

        if ([v13 isEqualToString:v50])
        {
          v32 = [v7 objectForKeyedSubscript:v13];
          objc_opt_class();
          v33 = objc_opt_isKindOfClass();

          a4 = v55;
          if ((v33 & 1) == 0)
          {
            v15 = wk_default_log(v34);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_11;
            }

            v48 = [*(a1 + 32) string];
            v46 = [v7 objectForKeyedSubscript:v13];
            *buf = 136446979;
            v62 = "_WKValidatedAttributedString_block_invoke";
            v63 = 1024;
            v64 = 333;
            v65 = 2113;
            v66 = v48;
            v67 = 2114;
            v68 = v46;
            v39 = v46;
            v40 = v15;
            v41 = "%{public}s:%d: Attributed string '%{private}@' contains NSStrikethroughColorAttributeName that isn't a UIColor (%{public}@). Removed";
            goto LABEL_38;
          }
        }

        if ([v13 isEqualToString:v49])
        {
          v35 = [v7 objectForKeyedSubscript:v13];
          objc_opt_class();
          v36 = objc_opt_isKindOfClass();

          a4 = v55;
          if ((v36 & 1) == 0)
          {
            v15 = wk_default_log(v37);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v48 = [*(a1 + 32) string];
              v38 = [v7 objectForKeyedSubscript:v13];
              *buf = 136446979;
              v62 = "_WKValidatedAttributedString_block_invoke";
              v63 = 1024;
              v64 = 336;
              v65 = 2113;
              v66 = v48;
              v67 = 2114;
              v68 = v38;
              v39 = v38;
              v40 = v15;
              v41 = "%{public}s:%d: Attributed string '%{private}@' contains NSFontAttributeName that isn't a UIFont (%{public}@). Removed";
              goto LABEL_38;
            }

            goto LABEL_11;
          }
        }

LABEL_12:
        ++v12;
      }

      while (v9 != v12);
      v47 = [v7 countByEnumeratingWithState:&v57 objects:v69 count:16];
      v9 = v47;
    }

    while (v47);
  }
}

@end