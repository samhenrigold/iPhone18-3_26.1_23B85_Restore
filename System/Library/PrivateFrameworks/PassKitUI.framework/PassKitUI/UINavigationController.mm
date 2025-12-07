@interface UINavigationController
@end

@implementation UINavigationController

uint64_t __132__UINavigationController_PKPaymentSetupProtocols___pk_presentPaymentSetupViewController_animated_performPreflight_delay_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationBar];
  [v2 setUserInteractionEnabled:1];

  v3 = [*(a1 + 32) interactivePopGestureRecognizer];
  [v3 setEnabled:1];

  v4 = [*(a1 + 32) view];
  [v4 setUserInteractionEnabled:1];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void __132__UINavigationController_PKPaymentSetupProtocols___pk_presentPaymentSetupViewController_animated_performPreflight_delay_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v3 = objc_opt_respondsToSelector();
    v4 = *(a1 + 32);
    if (v3)
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 72);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __132__UINavigationController_PKPaymentSetupProtocols___pk_presentPaymentSetupViewController_animated_performPreflight_delay_completion___block_invoke_72;
      v39[3] = &unk_1E8010B50;
      v40 = *(a1 + 56);
      [v4 presentWithNavigationController:v5 animated:v6 completion:v39];

      return;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_33;
    }

    v11 = [*(a1 + 32) onPresentationRemoveViewControllersAfterMarker];
    if (!v11)
    {
      goto LABEL_33;
    }

    v12 = v11;
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138412546;
      v44 = v15;
      v45 = 2048;
      v46 = v12;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "%@ asked to remove view controllers after marker: %lu", buf, 0x16u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = [*(a1 + 40) viewControllers];
    v17 = [v16 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      oslog = v13;
      v19 = 0;
      v20 = *v36;
      while (2)
      {
        v21 = 0;
        v22 = v19;
        v19 += v18;
        do
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v35 + 1) + 8 * v21);
          if ((objc_opt_respondsToSelector() & 1) != 0 && v12 == [v23 paymentSetupMarker])
          {
            if ((objc_opt_respondsToSelector() & 1) != 0 && [v23 paymentSetupMarkerRemovalIsInclusive])
            {
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v23;
                _os_log_impl(&dword_1BD026000, oslog, OS_LOG_TYPE_DEFAULT, "Removal is inclusive of marked view controller: %@", buf, 0xCu);
              }

              v19 = v22;
            }

            else
            {
              v19 = v22 + 1;
            }

            goto LABEL_28;
          }

          ++v22;
          ++v21;
        }

        while (v18 != v21);
        v18 = [v16 countByEnumeratingWithState:&v35 objects:v42 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

LABEL_28:

      v13 = oslog;
      if (v19)
      {
        v24 = [*(a1 + 40) viewControllers];
        v25 = [v24 count];

        if (v19 != v25)
        {
          v28 = [*(a1 + 40) viewControllers];
          v29 = [v28 subarrayWithRange:{0, v19}];
          v30 = [v29 mutableCopy];

          [v30 addObject:*(a1 + 32)];
          [*(a1 + 40) setViewControllers:v30 animated:*(a1 + 72)];

          goto LABEL_39;
        }

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, oslog, OS_LOG_TYPE_DEFAULT, "No target or mark found, pushing new view controller onto existing stack. This may be an error.", buf, 2u);
        }

LABEL_33:
        [*(a1 + 40) pushViewController:*(a1 + 32) animated:{*(a1 + 72), oslog}];
LABEL_39:
        v31 = [*(a1 + 40) transitionCoordinator];
        if (v31)
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __132__UINavigationController_PKPaymentSetupProtocols___pk_presentPaymentSetupViewController_animated_performPreflight_delay_completion___block_invoke_79;
          v33[3] = &unk_1E8015D28;
          v34 = *(a1 + 56);
          [v31 animateAlongsideTransition:0 completion:v33];
        }

        else
        {
          (*(*(a1 + 56) + 16))();
        }

        return;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v13, OS_LOG_TYPE_DEFAULT, "No view controllers remain, setting new view controller as root", buf, 2u);
    }

    v26 = *(a1 + 40);
    v41 = *(a1 + 32);
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [v26 setViewControllers:v27 animated:*(a1 + 72)];

    goto LABEL_39;
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138412290;
    v44 = v9;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Error: Preflight failed for view controller: %@", buf, 0xCu);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, 0);
  }
}

@end