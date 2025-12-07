void sub_F6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    NSLog(@"Failed to clear override configuration file: %@", v3);
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"UNABLE_TO_CLEAR_CONFIGURATION_FILE_TITLE" value:&stru_4318 table:0];

    [*(a1 + 32) presentError:v6 title:v5];
  }

  else
  {
    NSLog(@"Cleared override configuration file.");
  }
}

void sub_1478(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    NSLog(@"Failed to set override configuration file: %@", v3);
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"UNABLE_TO_OVERRIDE_CONFIGURATION_FILE_TITLE" value:&stru_4318 table:0];

    [*(a1 + 32) presentError:v4 title:v6];
  }

  else
  {
    NSLog(@"Set override configuration file");
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"SUCCESSULLY SET OVERRIDE CONFIGURATION FILE" value:&stru_4318 table:0];

    v8 = [UIAlertController alertControllerWithTitle:v6 message:0 preferredStyle:1];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"OK" value:&stru_4318 table:0];

    v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:0];
    [v8 addAction:v11];

    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
  }

  v12 = +[NSFileManager defaultManager];
  v13 = *(a1 + 40);
  v17 = 0;
  v14 = [v12 removeItemAtURL:v13 error:&v17];
  v15 = v17;

  if ((v14 & 1) == 0)
  {
    v16 = [*(a1 + 40) path];
    NSLog(@"Failed to remove configuration file at: %@. %@", v16, v15);
  }
}