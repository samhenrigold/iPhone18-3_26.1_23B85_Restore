@interface TrustCertificateViewController
- (TrustCertificateViewController)initWithTrust:(__SecTrust *)trust action:(int)action delegate:(id)delegate allowTrust:(BOOL)allowTrust;
- (TrustCertificateViewController)initWithTrustCertificateDelegate:(id)delegate allowTrust:(BOOL)trust;
- (TrustCertificateViewControllerDelegate)trustCertificateDelegate;
- (void)_dismissWithResult:(int)result;
- (void)_setupNavItem;
- (void)didReceiveMemoryWarning;
- (void)setCertificateInfo:(id)info issuer:(id)issuer purpose:(id)purpose expiration:(id)expiration isRoot:(BOOL)root properties:(id)properties action:(int)action;
- (void)setShowCertificateButton:(BOOL)button localizedTitle:(id)title localizedDescription:(id)description destructive:(BOOL)destructive handler:(id)handler;
@end

@implementation TrustCertificateViewController

- (TrustCertificateViewController)initWithTrustCertificateDelegate:(id)delegate allowTrust:(BOOL)trust
{
  delegateCopy = delegate;
  v7 = [[CertificateViewController alloc] initWithStyle:1];
  v11.receiver = self;
  v11.super_class = TrustCertificateViewController;
  v8 = [(TrustCertificateViewController *)&v11 initWithRootViewController:v7];
  v9 = v8;
  if (v8)
  {
    v8->_allowCertificateTrust = trust;
    objc_storeWeak(&v8->_trustCertificateDelegate, delegateCopy);
    objc_storeStrong(&v9->_certificateViewController, v7);
    [(TrustCertificateViewController *)v9 _setupNavItem];
  }

  return v9;
}

- (TrustCertificateViewController)initWithTrust:(__SecTrust *)trust action:(int)action delegate:(id)delegate allowTrust:(BOOL)allowTrust
{
  v7 = *&action;
  delegateCopy = delegate;
  v11 = [[CertificateViewController alloc] initWithTrust:trust action:v7];
  v15.receiver = self;
  v15.super_class = TrustCertificateViewController;
  v12 = [(TrustCertificateViewController *)&v15 initWithRootViewController:v11];
  v13 = v12;
  if (v12)
  {
    v12->_allowCertificateTrust = allowTrust;
    objc_storeWeak(&v12->_trustCertificateDelegate, delegateCopy);
    objc_storeStrong(&v13->_certificateViewController, v11);
    [(TrustCertificateViewController *)v13 _setupNavItem];
  }

  return v13;
}

- (void)_setupNavItem
{
  certificateViewController = [(TrustCertificateViewController *)self certificateViewController];
  navigationItem = [certificateViewController navigationItem];

  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
  v5 = [v4 localizedStringForKey:@"CERTIFICATE" value:&stru_28561D260 table:@"CertInfo"];
  [navigationItem setTitle:v5];

  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancel];
  [navigationItem setLeftBarButtonItem:v6];
  if (self->_allowCertificateTrust)
  {
    v7 = objc_alloc(MEMORY[0x277D751E0]);
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v9 = [v8 localizedStringForKey:@"TRUST" value:&stru_28561D260 table:@"CertInfo"];
    v10 = [v7 initWithTitle:v9 style:2 target:self action:sel__accept];

    [navigationItem setRightBarButtonItem:v10];
  }
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = TrustCertificateViewController;
  [(TrustCertificateViewController *)&v2 didReceiveMemoryWarning];
}

- (void)_dismissWithResult:(int)result
{
  v3 = *&result;
  WeakRetained = objc_loadWeakRetained(&self->_trustCertificateDelegate);
  [WeakRetained trustCertificateViewController:self finishedWithReturnCode:v3];
}

- (void)setCertificateInfo:(id)info issuer:(id)issuer purpose:(id)purpose expiration:(id)expiration isRoot:(BOOL)root properties:(id)properties action:(int)action
{
  rootCopy = root;
  propertiesCopy = properties;
  expirationCopy = expiration;
  purposeCopy = purpose;
  issuerCopy = issuer;
  infoCopy = info;
  certificateViewController = [(TrustCertificateViewController *)self certificateViewController];
  LODWORD(v20) = action;
  [certificateViewController setCertificateTitle:infoCopy issuer:issuerCopy purpose:purposeCopy expiration:expirationCopy properties:propertiesCopy isRoot:rootCopy action:v20];
}

- (void)setShowCertificateButton:(BOOL)button localizedTitle:(id)title localizedDescription:(id)description destructive:(BOOL)destructive handler:(id)handler
{
  destructiveCopy = destructive;
  buttonCopy = button;
  handlerCopy = handler;
  descriptionCopy = description;
  titleCopy = title;
  certificateViewController = [(TrustCertificateViewController *)self certificateViewController];
  [certificateViewController setShowCertificateButton:buttonCopy localizedTitle:titleCopy localizedDescription:descriptionCopy destructive:destructiveCopy handler:handlerCopy];
}

- (TrustCertificateViewControllerDelegate)trustCertificateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_trustCertificateDelegate);

  return WeakRetained;
}

@end