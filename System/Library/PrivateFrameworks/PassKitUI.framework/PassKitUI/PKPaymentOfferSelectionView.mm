@interface PKPaymentOfferSelectionView
+ (id)createWithPaymentPass:(id)pass transactionSourceCollection:(id)collection paymentOffersController:(id)controller beginSuppressCardEmulation:(id)emulation;
- (PKPaymentOfferSelectionView)init;
@end

@implementation PKPaymentOfferSelectionView

+ (id)createWithPaymentPass:(id)pass transactionSourceCollection:(id)collection paymentOffersController:(id)controller beginSuppressCardEmulation:(id)emulation
{
  v9 = _Block_copy(emulation);
  v10 = swift_allocObject();
  v10[2] = v9;
  passCopy = pass;
  collectionCopy = collection;
  controllerCopy = controller;
  v14 = _s9PassKitUI29PaymentOfferSelectionViewHostC6create07paymentA027transactionSourceCollection0J16OffersController26beginSuppressCardEmulationSo6UIViewCSgSo09PKPaymentA0C_So013PKTransactionlM0CSgSo0unO0CyycyctFZ_0(passCopy, collection, controllerCopy, sub_1BD8C096C, v10);

  v10, v15, v16, v17, v18, v19, v20, v21;

  return v14;
}

- (PKPaymentOfferSelectionView)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PaymentOfferSelectionViewHost();
  return [(PKPaymentOfferSelectionView *)&v3 init];
}

@end