void ManagedExtractedOrderContent.orderDate.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 orderDateYear];
  v5 = v4;
  if (v4)
  {
    v22 = [v4 integerValue];
  }

  else
  {
    v22 = 0;
  }

  v6 = [v1 orderDateMonth];
  v7 = v6;
  if (v6)
  {
    v21 = [v6 integerValue];
  }

  else
  {
    v21 = 0;
  }

  v8 = [v1 orderDateDay];
  v9 = v8;
  if (v8)
  {
    v20 = [v8 integerValue];
  }

  else
  {
    v20 = 0;
  }

  v10 = [v1 orderTimeHours];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 integerValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v1 orderTimeMinutes];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 integerValue];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v2 orderTimeSeconds];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 integerValue];

    if (!v5)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v18 = 0;
    if (!v5)
    {
LABEL_28:
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      v19 = -2;
LABEL_29:
      *(a1 + 48) = v19;
      return;
    }
  }

  if (!v7 || !v9)
  {
    goto LABEL_28;
  }

  if (v11 && v14)
  {
    if (v17)
    {
      v19 = 0x80;
    }

    else
    {
      v19 = -127;
    }

    *a1 = v22;
    *(a1 + 8) = v21;
    *(a1 + 16) = v20;
    *(a1 + 24) = v12;
    *(a1 + 32) = v15;
    *(a1 + 40) = v18;
    goto LABEL_29;
  }

  *a1 = v22;
  *(a1 + 8) = v21;
  *(a1 + 16) = v20;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
}

void ManagedExtractedOrderContent.orderDate.setter(void *a1)
{
  v2 = *(a1 + 48);
  if (v2 > 0xFD)
  {
    [v1 setOrderDateYear_];
    [v1 setOrderDateMonth_];
    [v1 setOrderDateDay_];
LABEL_5:
    [v1 setOrderTimeHours_];
    [v1 setOrderTimeMinutes_];

    [v1 setOrderTimeSeconds_];
    return;
  }

  if ((v2 & 0x80) == 0)
  {
    v3 = sub_1B7801008();
    [v1 setOrderDateYear_];

    v4 = sub_1B7801008();
    [v1 setOrderDateMonth_];

    v5 = sub_1B7801008();
    [v1 setOrderDateDay_];

    goto LABEL_5;
  }

  v6 = sub_1B7801008();
  [v1 setOrderDateYear_];

  v7 = sub_1B7801008();
  [v1 setOrderDateMonth_];

  v8 = sub_1B7801008();
  [v1 setOrderDateDay_];

  v9 = sub_1B7801008();
  [v1 setOrderTimeHours_];

  v10 = sub_1B7801008();
  [v1 setOrderTimeMinutes_];

  if (v2)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_1B7801008();
  }

  v12 = v11;
  [v1 setOrderTimeSeconds_];
}

uint64_t (*ManagedExtractedOrderContent.orderDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  ManagedExtractedOrderContent.orderDate.getter(v3);
  return sub_1B755EEF4;
}

void sub_1B755EEF4(void **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v4 = (*a1)[2];
  v3 = (*a1)[3];
  v6 = (*a1)[4];
  v5 = (*a1)[5];
  v7 = *(*a1 + 48);
  v8[0] = **a1;
  v8[1] = v2;
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v6;
  v8[5] = v5;
  v9 = v7;
  ManagedExtractedOrderContent.orderDate.setter(v8);

  free(v1);
}

void sub_1B755EF5C(id *a1)
{
  v1 = [*a1 orderUpdateDate];
  sub_1B77FF928();
}

uint64_t ManagedExtractedOrderContent.shippingFulfillments.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 shippingFulfillmentObjects];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B7561A10(&qword_1EB990510, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  sub_1B78017B8();
  while (v12)
  {
    sub_1B72051F0(&v11, &v9);
    type metadata accessor for ManagedExtractedOrderShippingFulfillment();
    if ((swift_dynamicCast() & 1) != 0 && v10)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
    }

    sub_1B78017B8();
  }

  (*(v2 + 8))(v4, v1);

  *&v11 = sub_1B725F2FC(v6);
  sub_1B75616BC(&v11, sub_1B77E6DD4, type metadata accessor for ManagedExtractedOrderShippingFulfillment);

  return v11;
}

void sub_1B755F230(void *a1, void **a2)
{
  v2 = *a2;

  sub_1B723BD60(v3);

  type metadata accessor for ManagedExtractedOrderShippingFulfillment();
  sub_1B7561A10(&qword_1EB98FF90, type metadata accessor for ManagedExtractedOrderShippingFulfillment, MEMORY[0x1E69E81B8]);
  v4 = sub_1B7800F78();

  [v2 setShippingFulfillmentObjects_];
}

void ManagedExtractedOrderContent.shippingFulfillments.setter(unint64_t a1)
{
  sub_1B723BD60(a1);

  type metadata accessor for ManagedExtractedOrderShippingFulfillment();
  sub_1B7561A10(&qword_1EB98FF90, type metadata accessor for ManagedExtractedOrderShippingFulfillment, MEMORY[0x1E69E81B8]);
  v2 = sub_1B7800F78();

  [v1 setShippingFulfillmentObjects_];
}

void (*ManagedExtractedOrderContent.shippingFulfillments.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedExtractedOrderContent.shippingFulfillments.getter();
  return sub_1B755F40C;
}

void sub_1B755F40C(unint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    sub_1B723BD60(v3);

    type metadata accessor for ManagedExtractedOrderShippingFulfillment();
    sub_1B7561A10(&qword_1EB98FF90, type metadata accessor for ManagedExtractedOrderShippingFulfillment, MEMORY[0x1E69E81B8]);
    v4 = sub_1B7800F78();

    [v2 setShippingFulfillmentObjects_];
  }

  else
  {
    sub_1B723BD60(*a1);

    type metadata accessor for ManagedExtractedOrderShippingFulfillment();
    sub_1B7561A10(&qword_1EB98FF90, type metadata accessor for ManagedExtractedOrderShippingFulfillment, MEMORY[0x1E69E81B8]);
    v5 = sub_1B7800F78();

    [v2 setShippingFulfillmentObjects_];
  }
}

double ManagedExtractedOrderContent.paymentTotal.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 paymentTotalAmount];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 paymentTotalCurrencyCode];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B7800868();
      v10 = v9;

      [v5 decimalValue];
      CurrencyAmount.init(_:currencyCode:)(v14, *(&v14 + 1), v15, v8, v10, &v14);

      v11 = v16;
      result = *&v14;
      v13 = v15;
      *a1 = v14;
      *(a1 + 16) = v13;
      *(a1 + 32) = v11;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_1B755F670(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v2;
  v4 = v1;

  ManagedExtractedOrderContent.paymentTotal.setter(v3);
}

void ManagedExtractedOrderContent.paymentTotal.setter(void *a1)
{
  if (a1[4])
  {
    v2 = a1[2];
    v3 = a1[1];
    v4 = HIDWORD(*a1);
    v5 = HIWORD(*a1);
    v8 = *a1;
    v9 = v4;
    v10 = v5;
    v11 = v3;
    v12 = v2;
    v6 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
    [v1 setPaymentTotalAmount_];

    v7 = sub_1B7800838();
  }

  else
  {
    [v1 setPaymentTotalAmount_];
    v7 = 0;
  }

  [v1 setPaymentTotalCurrencyCode_];
}

void (*ManagedExtractedOrderContent.paymentTotal.modify(uint64_t *a1))(char **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 120) = v2;
  v6 = [v2 paymentTotalAmount];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v2 paymentTotalCurrencyCode];
  if (!v8)
  {

LABEL_8:
    *(v5 + 32) = 0;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    return sub_1B755F8FC;
  }

  v9 = v8;
  v10 = sub_1B7800868();
  v12 = v11;

  [v7 decimalValue];
  CurrencyAmount.init(_:currencyCode:)(v16, *(&v16 + 1), v17, v10, v12, &v16);

  v13 = v18;
  v14 = v17;
  *v5 = v16;
  *(v5 + 16) = v14;
  *(v5 + 32) = v13;
  return sub_1B755F8FC;
}

void sub_1B755F8FC(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 4);
  v4 = *(*a1 + 15);
  if (a2)
  {
    if (v3)
    {
      v6 = v2[2];
      v5 = v2[3];
      v8 = *v2;
      v7 = v2[1];
      v9 = HIDWORD(*v2);
      v10 = HIWORD(*v2);
      v21 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v2[5] = v8;
      v2[6] = v7;
      v2[7] = v6;
      v2[8] = v5;
      v2[9] = v3;
      sub_1B7215720((v2 + 5), (v2 + 10));
      *(v2 + 20) = v8;
      *(v2 + 42) = v9;
      *(v2 + 43) = v10;
      v2[11] = v7;
      *(v2 + 24) = v6;
      v11 = [v21 initWithDecimal_];
      [v4 setPaymentTotalAmount_];

      v12 = sub_1B7800838();
    }

    else
    {
      [*(*a1 + 15) setPaymentTotalAmount_];
      v12 = 0;
    }

    [v2[15] setPaymentTotalCurrencyCode_];
  }

  else
  {
    if (v3)
    {
      v13 = v2[2];
      v15 = *v2;
      v14 = v2[1];
      v16 = HIDWORD(*v2);
      v17 = HIWORD(*v2);
      v18 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      *(v2 + 10) = v15;
      *(v2 + 22) = v16;
      *(v2 + 23) = v17;
      v2[6] = v14;
      *(v2 + 14) = v13;
      v19 = [v18 initWithDecimal_];
      [v4 setPaymentTotalAmount_];

      v20 = sub_1B7800838();
    }

    else
    {
      [*(*a1 + 15) setPaymentTotalAmount_];
      v20 = 0;
    }

    [v2[15] setPaymentTotalCurrencyCode_];
  }

  free(v2);
}

uint64_t ManagedExtractedOrderContent.paymentTransactions.getter()
{
  v1 = sub_1B77FF338();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 paymentTransactionObjects];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1B78014D8();
  sub_1B7561A10(&qword_1EB990510, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  sub_1B78017B8();
  while (v12)
  {
    sub_1B72051F0(&v11, &v9);
    type metadata accessor for ManagedExtractedOrderTransaction();
    if ((swift_dynamicCast() & 1) != 0 && v10)
    {
      MEMORY[0x1B8CA4F20]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B7800C58();
      }

      sub_1B7800C88();
    }

    sub_1B78017B8();
  }

  (*(v2 + 8))(v4, v1);

  *&v11 = sub_1B725F35C(v6);
  sub_1B75616BC(&v11, sub_1B77E6DD4, type metadata accessor for ManagedExtractedOrderTransaction);

  return v11;
}

void sub_1B755FDB4(void *a1, void **a2)
{
  v2 = *a2;

  sub_1B723BDA8(v3);

  type metadata accessor for ManagedExtractedOrderTransaction();
  sub_1B7561A10(&qword_1EB98FF88, type metadata accessor for ManagedExtractedOrderTransaction, MEMORY[0x1E69E81B8]);
  v4 = sub_1B7800F78();

  [v2 setPaymentTransactionObjects_];
}

void ManagedExtractedOrderContent.paymentTransactions.setter(unint64_t a1)
{
  sub_1B723BDA8(a1);

  type metadata accessor for ManagedExtractedOrderTransaction();
  sub_1B7561A10(&qword_1EB98FF88, type metadata accessor for ManagedExtractedOrderTransaction, MEMORY[0x1E69E81B8]);
  v2 = sub_1B7800F78();

  [v1 setPaymentTransactionObjects_];
}

void (*ManagedExtractedOrderContent.paymentTransactions.modify(uint64_t *a1))(unint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ManagedExtractedOrderContent.paymentTransactions.getter();
  return sub_1B755FF90;
}

void sub_1B755FF90(unint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    sub_1B723BDA8(v3);

    type metadata accessor for ManagedExtractedOrderTransaction();
    sub_1B7561A10(&qword_1EB98FF88, type metadata accessor for ManagedExtractedOrderTransaction, MEMORY[0x1E69E81B8]);
    v4 = sub_1B7800F78();

    [v2 setPaymentTransactionObjects_];
  }

  else
  {
    sub_1B723BDA8(*a1);

    type metadata accessor for ManagedExtractedOrderTransaction();
    sub_1B7561A10(&qword_1EB98FF88, type metadata accessor for ManagedExtractedOrderTransaction, MEMORY[0x1E69E81B8]);
    v5 = sub_1B7800F78();

    [v2 setPaymentTransactionObjects_];
  }
}

id ManagedExtractedOrderContent.orderStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 orderStatusValue];
  if (result >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a1 = v4;
  return result;
}

id (*ManagedExtractedOrderContent.orderStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 orderStatusValue];
  if (v3 >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *(a1 + 8) = v4;
  return sub_1B72ADBA0;
}

void sub_1B75601C0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &qword_1EB98EBD0, &unk_1B7809780);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

id ManagedExtractedOrderContent.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedExtractedOrderContent.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedExtractedOrderContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL ManagedExtractedOrderContent.canMarkAsComplete.getter()
{
  v1 = &off_1E7CAF000;
  if ([v0 orderStatusValue] == 3)
  {
    return 0;
  }

  v3 = ManagedExtractedOrderContent.shippingFulfillments.getter();
  if (v3 >> 62)
  {
    goto LABEL_28;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v4)
  {
    do
    {
      v5 = ManagedExtractedOrderContent.shippingFulfillments.getter();
      v6 = v5;
      v7 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 >> 62)
      {
        v1 = sub_1B7801958();
      }

      else
      {
        v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; ; i = (i + 1))
      {
        if (v1 == i)
        {

          return 0;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1B8CA5DC0](i, v6);
        }

        else
        {
          if (i >= *(v7 + 16))
          {
            goto LABEL_27;
          }

          v11 = *(v6 + 8 * i + 32);
        }

        v0 = v11;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v12 = [v11 statusValue];
        if (v12 > 3)
        {
          if (v12 >= 6 && v12 != 8)
          {
LABEL_25:

            return 1;
          }
        }

        else if (v12 != 1)
        {
          goto LABEL_25;
        }

        v10 = [v0 statusValue];

        if (v10 == 1)
        {

          return 1;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v13 = sub_1B7801958();
    }

    while (v13);
  }

  return [v0 v1[392]] != 3;
}

uint64_t sub_1B7560620@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  ManagedExtractedOrderShippingFulfillment.Status.init(rawValue:)([*a1 statusValue]);
  if (v6 == 4)
  {
    ManagedExtractedOrderShippingFulfillment.deliveryDate.getter(&v6);
    if (v7 < 0xFEu)
    {
      TrackedOrder.DeliveryDate.convertToDate(calendar:timeZone:)();
      goto LABEL_8;
    }
  }

  else if (v6 == 1)
  {
    ManagedExtractedOrderShippingFulfillment.shippingDate.getter(&v6);
    if (v7 < 0xFEu)
    {
      TrackedOrder.ShippingDate.convertToDate(calendar:timeZone:)();
LABEL_8:
      v3 = 0;
      goto LABEL_9;
    }
  }

  v3 = 1;
LABEL_9:
  v4 = sub_1B77FF988();
  return (*(*(v4 - 8) + 56))(a2, v3, 1, v4);
}

id ManagedExtractedOrderContent.__allocating_init(extractedOrder:context:)(uint64_t a1, void *a2)
{
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9972B0, &qword_1B783CFC8);
  v5 = MEMORY[0x1EEE9AC00](v123);
  v7 = (&v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v124 = &v107 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v107 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v107 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v110 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v109 = &v107 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v107 - v19;
  v21 = objc_allocWithZone(v2);
  v122 = a2;
  v22 = [v21 initWithContext_];
  v23 = v22;
  if (*(a1 + 24))
  {
    v24 = v22;

    v25 = sub_1B7800838();
  }

  else
  {
    v26 = v22;
    v25 = 0;
  }

  v116 = v23;
  [v23 setOrderTypeIdentifier_];

  if (*(a1 + 24))
  {

    v27 = sub_1B7800838();
  }

  else
  {
    v27 = 0;
  }

  v28 = v116;
  [v116 setOrderIdentifier_];

  v29 = *(a1 + 48);
  v30 = *(a1 + 56);
  v31 = sub_1B7800838();
  [v28 setOrderNumber_];

  _s10FinanceKit12TrackedOrderO0D15NumberSanitizerO8sanitizeyS2SFZ_0(v29, v30);
  v32 = sub_1B7800838();

  [v28 setSanitizedOrderNumber_];

  v33 = *(a1 + 112);
  v34 = *(a1 + 80);
  v148 = *(a1 + 64);
  v149 = v34;
  v150 = *(a1 + 96);
  LOBYTE(v151) = v33;
  ManagedExtractedOrderContent.orderDate.setter(&v148);
  v35 = type metadata accessor for ExtractedOrder(0);
  v36 = sub_1B77FF8B8();
  [v28 setOrderUpdateDate_];

  v115 = v35;
  v37 = a1 + *(v35 + 36);
  v38 = sub_1B7800838();
  [v28 setMerchantDisplayName_];

  v39 = type metadata accessor for ExtractedOrder.Merchant(0);
  sub_1B7205588(v37 + *(v39 + 20), v20, &qword_1EB98EBD0, &unk_1B7809780);
  v40 = sub_1B77FF988();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v113 = v41 + 48;
  v114 = v40;
  v112 = v42;
  v43 = 0;
  if ((v42)(v20, 1) != 1)
  {
    v43 = sub_1B77FF8B8();
    (*(v41 + 8))(v20, v114);
  }

  [v116 setMerchantDisplayNameUpdateDate_];

  if (*(v37 + *(v39 + 24) + 8))
  {
    v44 = sub_1B7800838();
  }

  else
  {
    v44 = 0;
  }

  v108 = v41;
  [v116 setMerchantDomain_];

  v45 = *(a1 + v115[10]);
  v46 = *(v45 + 16);
  v47 = MEMORY[0x1E69E7CC0];
  v111 = a1;
  if (v46)
  {
    *&v148 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    v117 = type metadata accessor for ManagedExtractedOrderShippingFulfillment();
    v120 = *(v45 + 16);
    v48 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
    v49 = 0;
    v51 = *(v48 - 8);
    result = (v48 - 8);
    v118 = v45 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v119 = v51;
    while (v120 != v49)
    {
      v52 = v123;
      v53 = *(v123 + 48);
      v54 = v121;
      sub_1B7561A58(v118 + *(v119 + 72) * v49, &v121[v53]);
      *v12 = v49;
      sub_1B7561BF4(&v54[v53], v12 + *(v52 + 48), type metadata accessor for ExtractedOrder.ShippingFulfillment);
      sub_1B7205588(v12, v124, &qword_1EB9972B0, &qword_1B783CFC8);
      v55 = *(v52 + 48);
      result = sub_1B7205588(v12, v7, &qword_1EB9972B0, &qword_1B783CFC8);
      v56 = *v7;
      if (*v7 < -32768)
      {
        goto LABEL_58;
      }

      if (v56 >= 0x8000)
      {
        goto LABEL_59;
      }

      ++v49;
      sub_1B7561ABC(v7 + *(v123 + 48), type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v57 = v122;
      sub_1B7609448((v124 + v55), v56, v57);

      sub_1B7205418(v12, &qword_1EB9972B0, &qword_1B783CFC8);
      sub_1B7801B68();
      sub_1B7801BA8();
      sub_1B7801BB8();
      result = sub_1B7801B78();
      if (v46 == v49)
      {
        v47 = v148;
        a1 = v111;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_19:
  sub_1B723BD60(v47);

  type metadata accessor for ManagedExtractedOrderShippingFulfillment();
  sub_1B7561A10(&qword_1EB98FF90, type metadata accessor for ManagedExtractedOrderShippingFulfillment, MEMORY[0x1E69E81B8]);
  v58 = sub_1B7800F78();

  v59 = v116;
  [v116 setShippingFulfillmentObjects_];

  v60 = v115;
  v61 = (a1 + v115[11]);
  v62 = v61[5];
  v152 = v61[4];
  v153 = v62;
  v63 = v61[7];
  v154 = v61[6];
  v155 = v63;
  v64 = v61[1];
  v148 = *v61;
  v149 = v64;
  v65 = v61[3];
  v150 = v61[2];
  v151 = v65;
  enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0 = get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v148);
  v67 = v112;
  if (enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0 == 1 || !*(&v148 + 1))
  {
    v68 = 0;
  }

  else
  {

    v68 = sub_1B7800838();
  }

  [v59 setCustomerFullName_];

  v69 = v61[5];
  v144 = v61[4];
  v145 = v69;
  v70 = v61[7];
  v146 = v61[6];
  v147 = v70;
  v71 = v61[1];
  v140 = *v61;
  v141 = v71;
  v72 = v61[3];
  v142 = v61[2];
  v143 = v72;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(&v140) == 1 || !*(&v141 + 1))
  {
    v73 = 0;
  }

  else
  {

    v73 = sub_1B7800838();
  }

  [v59 setCustomerPhoneNumber_];

  v74 = v61[5];
  v136 = v61[4];
  v137 = v74;
  v75 = v61[7];
  v138 = v61[6];
  v139 = v75;
  v76 = v61[1];
  v133[0] = *v61;
  v133[1] = v76;
  v77 = v61[3];
  v134 = v61[2];
  v135 = v77;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v133) == 1 || !*(&v134 + 1))
  {
    v78 = 0;
  }

  else
  {

    v78 = sub_1B7800838();
  }

  [v59 setCustomerEmailAddress_];

  v79 = v61[5];
  v132.city = v61[4];
  v132.state = v79;
  v80 = v61[7];
  v132.postalCode = v61[6];
  v132.country = v80;
  v81 = v61[1];
  v131[0] = *v61;
  v131[1] = v81;
  v82 = v61[3];
  v131[2] = v61[2];
  v132.street = v82;
  v83 = 0;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v131) != 1 && v132.street.value._object != 1)
  {
    v128 = v132;
    sub_1B74BA2BC();
    v126 = v132;
    sub_1B7561B1C(&v128, v125);
    v83 = CNMutablePostalAddress.init(extractedOrderAddress:)(&v126);
  }

  [v59 setCustomerBillingAddress_];

  v84 = (a1 + v60[12]);
  if (!v84[5] || (v84[2] & 0x100000000) != 0)
  {
    v85 = 0;
  }

  else
  {
    v85 = sub_1B7801608();
  }

  [v59 setPaymentTotalAmount_];

  v86 = 0;
  if (v84[5] && v84[4])
  {

    v86 = sub_1B7800838();
  }

  [v59 setPaymentTotalCurrencyCode_];

  v87 = v84[5];
  if (v87)
  {
    v88 = *(v87 + 16);
    v89 = MEMORY[0x1E69E7CC0];
    if (v88)
    {
      v130 = MEMORY[0x1E69E7CC0];

      sub_1B7801B98();
      result = type metadata accessor for ManagedExtractedOrderTransaction();
      v90 = *(v87 + 16);
      if (v90)
      {
        v91 = 0;
        v92 = 32;
        while (1)
        {
          v93 = *(v87 + v92 + 16);
          v128.street = *(v87 + v92);
          v128.city = v93;
          v94 = *(v87 + v92 + 32);
          v95 = *(v87 + v92 + 48);
          v96 = *(v87 + v92 + 80);
          v128.country = *(v87 + v92 + 64);
          v129 = v96;
          v128.state = v94;
          v128.postalCode = v95;
          v97 = *(v87 + v92 + 48);
          v126.state = *(v87 + v92 + 32);
          v126.postalCode = v97;
          v98 = *(v87 + v92 + 80);
          v126.country = *(v87 + v92 + 64);
          v127 = v98;
          v99 = *(v87 + v92 + 16);
          v126.street = *(v87 + v92);
          v126.city = v99;
          if (v91 == 0x8000)
          {
            break;
          }

          v100 = v122;
          sub_1B7326448(&v128, v125);
          ManagedExtractedOrderTransaction.__allocating_init(extractedOrderTransaction:positionIndex:context:)(&v126.street.value._countAndFlagsBits, v91, v100);
          sub_1B7801B68();
          sub_1B7801BA8();
          sub_1B7801BB8();
          result = sub_1B7801B78();
          if (v88 - 1 == v91)
          {
            goto LABEL_49;
          }

          v92 += 96;
          if (v90 == ++v91)
          {
            goto LABEL_48;
          }
        }

LABEL_60:
        __break(1u);
        return result;
      }

LABEL_48:
      __break(1u);
LABEL_49:

      v89 = v130;
      a1 = v111;
      v67 = v112;
      v60 = v115;
      v59 = v116;
    }
  }

  else
  {
    v89 = MEMORY[0x1E69E7CC0];
  }

  sub_1B723BDA8(v89);

  type metadata accessor for ManagedExtractedOrderTransaction();
  sub_1B7561A10(&qword_1EB98FF88, type metadata accessor for ManagedExtractedOrderTransaction, MEMORY[0x1E69E81B8]);
  v101 = sub_1B7800F78();

  [v59 setPaymentTransactionObjects_];

  [v59 setOrderStatusValue_];
  v102 = v109;
  sub_1B7205588(a1 + v60[14], v109, &qword_1EB98EBD0, &unk_1B7809780);
  v103 = v114;
  v104 = 0;
  if (v67(v102, 1, v114) != 1)
  {
    v104 = sub_1B77FF8B8();
    (*(v108 + 8))(v102, v103);
  }

  [v59 setOrderStatusUpdateDate_];

  v105 = v110;
  sub_1B7205588(a1 + v60[15], v110, &qword_1EB98EBD0, &unk_1B7809780);
  if (v67(v105, 1, v103) == 1)
  {
    v106 = 0;
  }

  else
  {
    v106 = sub_1B77FF8B8();
    (*(v108 + 8))(v105, v103);
  }

  [v59 setEarliestEmailDateSent_];

  sub_1B7561ABC(a1, type metadata accessor for ExtractedOrder);
  return v59;
}

CNMutablePostalAddress_optional __swiftcall CNMutablePostalAddress.init(extractedOrderAddress:)(FinanceKit::ExtractedOrder::Address *extractedOrderAddress)
{
  object = extractedOrderAddress->country.value._object;
  if (extractedOrderAddress->street.value._object)
  {
    v2 = 0;
  }

  else
  {
    v2 = extractedOrderAddress->city.value._object == 0;
  }

  if (v2 && extractedOrderAddress->state.value._object == 0 && extractedOrderAddress->postalCode.value._object == 0 && object == 0)
  {
    swift_bridgeObjectRelease_n();
    v6 = 0;
  }

  else
  {
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

    v7 = sub_1B7800838();

    [v6 setStreet_];

    v8 = sub_1B7800838();

    [v6 setCity_];

    v9 = sub_1B7800838();

    [v6 setState_];

    v10 = sub_1B7800838();

    [v6 setPostalCode_];

    if (!object)
    {
    }

    v12 = sub_1B7800838();

    [v6 setCountry_];
  }

  v13 = v6;
  result.value.super.super.isa = v13;
  result.is_nil = v11;
  return result;
}

uint64_t sub_1B7561660(uint64_t *a1)
{
  if (*a1 == 35 && a1[1] == 0xE100000000000000)
  {
    return 1;
  }

  else
  {
    return sub_1B78020F8() & 1;
  }
}

uint64_t sub_1B75616BC(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = a2(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1B7561750(v10, a3);
  return sub_1B7801B78();
}

void sub_1B7561750(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = a1[1];
  v5 = sub_1B7802038();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v8 = sub_1B7800C78();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_1B72B0A5C(v10, v11, a1, v6);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1B72AFCB8(0, v4, 1, a1);
  }
}

uint64_t _s10FinanceKit12TrackedOrderO0D15NumberSanitizerO8sanitizeyS2SFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FEA08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  v16 = a2;
  sub_1B77FE9E8();
  sub_1B7205210();
  v8 = sub_1B78017C8();
  (*(v5 + 8))(v7, v4);
  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
  sub_1B723E0F4();
  v9 = sub_1B78007C8();
  v11 = v10;

  v15 = v9;
  v16 = v11;
  sub_1B7561C5C();
  sub_1B78010A8();
  v12 = sub_1B7800918();

  return v12;
}

uint64_t sub_1B7561A10(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7561A58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7561ABC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7561BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B7561C5C()
{
  result = qword_1EB9972C0;
  if (!qword_1EB9972C0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E61A0], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &qword_1EB9972C0);
  }

  return result;
}

uint64_t BankConnectAuthorizationSession.AuthSource.clientState.getter(uint64_t result)
{
  if ((result & 0x8000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFFu)
  {
    v4 = v1;
    v5 = v2;
    v3[0] = result;
    return sub_1B77F31E0(v3, &v3[1]);
  }

  __break(1u);
  return result;
}

uint64_t BankConnectAuthorizationSession.AuthSource.init(with:)(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_29;
    }

    v6 = *(result + 16);
    v7 = *(result + 24);
    result = sub_1B77FEB78();
    v8 = result;
    if (result)
    {
      result = sub_1B77FEBA8();
      if (__OFSUB__(v6, result))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v8 += v6 - result;
    }

    v9 = __OFSUB__(v7, v6);
    v10 = v7 - v6;
    if (!v9)
    {
      v11 = sub_1B77FEB98();
      if (v11 >= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      if (v8 && v12 == 1)
      {
LABEL_25:
        v18 = *v8;
        sub_1B720A388(v3, a2);
        v5 = v18;
        if (!v18)
        {
LABEL_27:
          v19 = 0;
          return v5 | (v19 << 16);
        }

        goto LABEL_26;
      }

LABEL_29:
      sub_1B720A388(v3, a2);
      goto LABEL_30;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v4)
  {
    sub_1B720A388(result, a2);
    if ((a2 & 0xFF000000000000) != 0x1000000000000)
    {
      goto LABEL_30;
    }

    v5 = v3;
    if (!v3)
    {
      goto LABEL_27;
    }

LABEL_26:
    if (v5 == 1)
    {
      goto LABEL_27;
    }

LABEL_30:
    v5 = 0;
    v19 = 1;
    return v5 | (v19 << 16);
  }

  v13 = (result >> 32) - result;
  if (result >> 32 < result)
  {
    __break(1u);
    goto LABEL_33;
  }

  v14 = sub_1B77FEB78();
  if (!v14)
  {
    sub_1B77FEB98();
    goto LABEL_29;
  }

  v15 = v14;
  result = sub_1B77FEBA8();
  if (!__OFSUB__(v3, result))
  {
    v8 = (v3 - result + v15);
    v16 = sub_1B77FEB98();
    if (v8)
    {
      v17 = v16 >= v13 ? (v3 >> 32) - v3 : v16;
      if (v17 == 1)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_29;
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_1B7561E74(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1B77F31E0(a1, &a1[a2]);
  }

  sub_1B77FEBC8();
  swift_allocObject();
  sub_1B77FEB68();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1B77FF558();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1B7561F60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B7561FC0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1B7562054;
}

void sub_1B7562054(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t TransactionChangesObserver.__allocating_init(context:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t TransactionChangesObserver.init(context:)(uint64_t a1)
{
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  return v1;
}

void sub_1B756215C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_contextDidMergeChangesObjectIDsNotificationWithNotification_ name:*MEMORY[0x1E695D348] object:*(v0 + 16)];
}

uint64_t TransactionChangesObserver.__deallocating_deinit()
{
  sub_1B7397524(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7562404(id *a1)
{
  v1 = *a1;
  v2 = [*a1 entity];
  v3 = [v2 name];

  if (v3)
  {
    v4 = sub_1B7800868();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  type metadata accessor for ManagedInternalTransaction();
  v7 = [swift_getObjCClassFromMetadata() entityName];
  v8 = sub_1B7800868();
  v10 = v9;

  if (v6)
  {
    if (v4 == v8 && v6 == v10)
    {
      goto LABEL_25;
    }

    v11 = sub_1B78020F8();

    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v12 = [v1 entity];
  v13 = [v12 name];

  if (v13)
  {
    v14 = sub_1B7800868();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  type metadata accessor for ManagedTransaction();
  v17 = [swift_getObjCClassFromMetadata() entityName];
  v18 = sub_1B7800868();
  v20 = v19;

  if (!v16)
  {

    goto LABEL_19;
  }

  if (v14 == v18 && v16 == v20)
  {
    goto LABEL_25;
  }

  v21 = sub_1B78020F8();

  if ((v21 & 1) == 0)
  {
LABEL_19:
    v23 = [v1 entity];
    v24 = [v23 name];

    if (v24)
    {
      v25 = sub_1B7800868();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    type metadata accessor for ManagedUserTransactionInsight();
    v28 = [swift_getObjCClassFromMetadata() entityName];
    v29 = sub_1B7800868();
    v31 = v30;

    if (!v27)
    {
      v22 = 0;
      goto LABEL_27;
    }

    if (v25 != v29 || v27 != v31)
    {
      v22 = sub_1B78020F8();
      goto LABEL_26;
    }

LABEL_25:
    v22 = 1;
LABEL_26:

LABEL_27:

    return v22 & 1;
  }

LABEL_17:
  v22 = 1;
  return v22 & 1;
}

void sub_1B75626DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1B7801908();
      sub_1B723C524();
      sub_1B7562BB0();
      sub_1B7800FE8();
      v2 = v17[1];
      v3 = v17[2];
      v4 = v17[3];
      v5 = v17[4];
      v6 = v17[5];
    }

    else
    {
      v7 = -1 << *(a1 + 32);
      v3 = (a1 + 56);
      v4 = ~v7;
      v8 = -v7;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      else
      {
        v9 = -1;
      }

      v6 = (v9 & *(a1 + 56));

      v5 = 0;
    }

    v10 = (v4 + 64) >> 6;
    if (v2 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (v6)
    {
LABEL_13:
      v14 = (v12 - 1) & v12;
      v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
      if (v15)
      {
        while (1)
        {
          v17[0] = v15;
          v16 = sub_1B7562404(v17);

          if (v16)
          {
            break;
          }

          v5 = v13;
          v6 = v14;
          if ((v2 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_15:
          if (sub_1B7801988())
          {
            sub_1B723C524();
            swift_dynamicCast();
            v15 = v17[0];
            v13 = v5;
            v14 = v6;
            if (v17[0])
            {
              continue;
            }
          }

          goto LABEL_20;
        }

        sub_1B7263578(v2);
      }

      else
      {
LABEL_20:
        sub_1B7263578(v2);
      }
    }

    else
    {
      while (1)
      {
        v13 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          goto LABEL_20;
        }

        v12 = v3[v13];
        ++v11;
        if (v12)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B75628D8(void *a1)
{
  v1 = [a1 userInfo];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1B7800728();

    v28 = sub_1B7800868();
    v29 = v4;
    sub_1B78019E8();
    if (*(v3 + 16) && (v5 = sub_1B7245898(v27), (v6 & 1) != 0))
    {
      sub_1B719BDE4(*(v3 + 56) + 32 * v5, &v28);
      sub_1B720494C(v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994ED0, &qword_1B782C410);
      if (swift_dynamicCast())
      {
        v7 = v26;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      sub_1B720494C(v27);
      v7 = 0;
    }

    v28 = sub_1B7800868();
    v29 = v8;
    sub_1B78019E8();
    if (*(v3 + 16) && (v9 = sub_1B7245898(v27), (v10 & 1) != 0))
    {
      sub_1B719BDE4(*(v3 + 56) + 32 * v9, &v28);
      sub_1B720494C(v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994ED0, &qword_1B782C410);
      if (swift_dynamicCast())
      {
        v11 = v26;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      sub_1B720494C(v27);
      v11 = 0;
    }

    v28 = sub_1B7800868();
    v29 = v12;
    sub_1B78019E8();
    if (*(v3 + 16) && (v13 = sub_1B7245898(v27), (v14 & 1) != 0))
    {
      sub_1B719BDE4(*(v3 + 56) + 32 * v13, &v28);
      sub_1B720494C(v27);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994ED0, &qword_1B782C410);
      if (swift_dynamicCast())
      {
        v16 = v26;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {

      sub_1B720494C(v27);
      v16 = 0;
    }

    sub_1B75626DC(v7, v15);
    v18 = v17;

    if (v18)
    {

      v20 = 1;
    }

    else
    {
      sub_1B75626DC(v11, v19);
      v22 = v21;

      if (v22)
      {
        v20 = 1;
      }

      else
      {
        sub_1B75626DC(v16, v23);
        v20 = v24;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

unint64_t sub_1B7562BB0()
{
  result = qword_1EB98FFD8;
  if (!qword_1EB98FFD8)
  {
    v3 = sub_1B723C524();
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &qword_1EB98FFD8);
  }

  return result;
}

uint64_t static ContentPackageSignatureValidationError.Context.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B78020F8();
  }
}

uint64_t ContentPackageSignatureValidationError.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static ContentPackageSignatureValidationError.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_1B78020F8();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t ContentPackageSignatureValidator.init(signature:manifest:policy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ContentPackageSignatureValidator.validateSignature()()
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v61[0] = *v0;
  v61[1] = v3;
  v62 = v2;
  v4 = sub_1B756339C();
  if (!v1)
  {
    v5 = v4;
    error = 0;
    if (!SecTrustEvaluateWithError(v4, &error))
    {
      v11 = SecTrustCopyFailureDescription();
      if (v11)
      {
        v12 = v11;
        v13 = sub_1B7800868();
        v15 = v14;

        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = 0;
        v16 = 0;
        v15 = 0xE000000000000000;
      }

      v57 = v13;
      v58 = v15;
      if (error)
      {
        if ((v15 & 0x2000000000000000) != 0)
        {
          v18 = HIBYTE(v15) & 0xF;
        }

        else
        {
          v18 = v16;
        }

        v19 = error;
        if (v18)
        {
          MEMORY[0x1B8CA4D30](2108704, 0xE300000000000000);
        }

        v20 = CFErrorCopyDescription(v19);
        if (!v20)
        {
          __break(1u);
          return;
        }

        v21 = v20;
        v22 = sub_1B7800868();
        v24 = v23;

        MEMORY[0x1B8CA4D30](v22, v24);
      }

      if (qword_1EDAF6548 != -1)
      {
        swift_once();
      }

      v25 = sub_1B78000B8();
      __swift_project_value_buffer(v25, qword_1EDAF6550);
      v26 = sub_1B7800098();
      v27 = sub_1B78011D8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v59 = v29;
        *v28 = 136315138;
        swift_beginAccess();

        v30 = sub_1B71A3EF8(v57, v58, &v59);

        *(v28 + 4) = v30;
        _os_log_impl(&dword_1B7198000, v26, v27, "Failed to evaluate trust. Description: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1B8CA7A40](v29, -1, -1);
        MEMORY[0x1B8CA7A40](v28, -1, -1);
      }

      sub_1B7563544();
      swift_allocError();
      *v31 = 0xD000000000000088;
      v31[1] = 0x80000001B7884D00;
      swift_willThrow();

      goto LABEL_50;
    }

    LODWORD(v57) = 0;
    if (SecTrustGetTrustResult(v5, &v57))
    {
      v6 = SecTrustCopyFailureDescription();
      if (v6)
      {
        v7 = v6;
        v8 = sub_1B7800868();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0xE000000000000000;
      }

      if (qword_1EDAF6548 != -1)
      {
        swift_once();
      }

      v32 = sub_1B78000B8();
      __swift_project_value_buffer(v32, qword_1EDAF6550);

      v33 = sub_1B7800098();
      v34 = sub_1B78011D8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *&v61[0] = v36;
        *v35 = 136315138;
        v37 = sub_1B71A3EF8(v8, v10, v61);

        *(v35 + 4) = v37;
        v38 = "Failed to get trust result. Description: %s";
        v39 = v34;
        v40 = v33;
        v41 = v35;
        v42 = 12;
LABEL_31:
        _os_log_impl(&dword_1B7198000, v40, v39, v38, v41, v42);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x1B8CA7A40](v36, -1, -1);
        MEMORY[0x1B8CA7A40](v35, -1, -1);

LABEL_47:
        sub_1B7563544();
        swift_allocError();
        *v56 = 0xD000000000000088;
        v56[1] = 0x80000001B7884D00;
LABEL_48:
        swift_willThrow();
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v17 = v57;
    if (v57 > 3)
    {
      if (v57 == 4)
      {
        goto LABEL_49;
      }

      if (v57 != 7)
      {
        goto LABEL_39;
      }
    }

    else if (v57)
    {
      if (v57 != 1)
      {
LABEL_39:
        v48 = SecTrustCopyFailureDescription();
        if (v48)
        {
          v49 = v48;
          v50 = sub_1B7800868();
          v52 = v51;
        }

        else
        {
          v50 = 0;
          v52 = 0xE000000000000000;
        }

        if (qword_1EDAF6548 != -1)
        {
          swift_once();
        }

        v53 = sub_1B78000B8();
        __swift_project_value_buffer(v53, qword_1EDAF6550);

        v33 = sub_1B7800098();
        v54 = sub_1B78011D8();

        if (os_log_type_enabled(v33, v54))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *&v61[0] = v36;
          *v35 = 67109378;
          *(v35 + 4) = v17;
          *(v35 + 8) = 2080;
          v55 = sub_1B71A3EF8(v50, v52, v61);

          *(v35 + 10) = v55;
          v38 = "Certificate not trusted. Result: %u Description: %s";
          v39 = v54;
          v40 = v33;
          v41 = v35;
          v42 = 18;
          goto LABEL_31;
        }

LABEL_46:

        goto LABEL_47;
      }

LABEL_49:

LABEL_50:
      return;
    }

    if (qword_1EDAF6548 != -1)
    {
      swift_once();
    }

    v43 = sub_1B78000B8();
    __swift_project_value_buffer(v43, qword_1EDAF6550);
    v44 = sub_1B7800098();
    v45 = sub_1B78011D8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = v17;
      _os_log_impl(&dword_1B7198000, v44, v45, "Unreachable trust evaluation. Result: %u", v46, 8u);
      MEMORY[0x1B8CA7A40](v46, -1, -1);
    }

    sub_1B7563544();
    swift_allocError();
    *v47 = 0xD000000000000030;
    v47[1] = 0x80000001B7884D90;
    goto LABEL_48;
  }
}

void *sub_1B756339C()
{
  v0 = sub_1B77FF598();
  v1 = sub_1B77FF598();
  SecCMSVerifySignedData();

  sub_1B7563544();
  swift_allocError();
  *v2 = 0xD00000000000002ELL;
  v2[1] = 0x80000001B7884DD0;
  swift_willThrow();

  return 0;
}

unint64_t sub_1B7563544()
{
  result = qword_1EB9972C8;
  if (!qword_1EB9972C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentPackageSignatureValidationError, &type metadata for ContentPackageSignatureValidationError, v0, v1);
    atomic_store(result, &qword_1EB9972C8);
  }

  return result;
}

char *ManagedOrderPaymentTransaction.__allocating_init(_:bundle:context:)(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v4 = sub_1B7564574(a1, a2, a3);

  return v4;
}

void ManagedOrderPaymentTransaction.transactionType.getter(_BYTE *a1@<X8>)
{
  v3 = sub_1B7800838();
  [v1 willAccessValueForKey_];

  v4 = [v1 primitiveTransactionType];
  v5 = sub_1B7800838();
  [v1 didAccessValueForKey_];

  v6 = [v4 shortValue];
  if (v6 > 1)
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
  }
}

void ManagedOrderPaymentTransaction.status.getter(_BYTE *a1@<X8>)
{
  v3 = sub_1B7800838();
  [v1 willAccessValueForKey_];

  v4 = [v1 primitiveStatus];
  v5 = sub_1B7800838();
  [v1 didAccessValueForKey_];

  v6 = [v4 shortValue];
  if (v6 > 4)
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
  }
}

double ManagedOrderPaymentTransaction.amount.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1B7800838();
  [v1 willAccessValueForKey_];

  v4 = sub_1B7800838();
  [v1 willAccessValueForKey_];

  v5 = [v1 primitiveAmount];
  v6 = [v1 primitiveCurrencyCode];
  v7 = sub_1B7800868();
  v9 = v8;

  v10 = sub_1B7800838();
  [v1 didAccessValueForKey_];

  v11 = sub_1B7800838();
  [v1 didAccessValueForKey_];

  [v5 decimalValue];
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

FinanceKit::ManagedOrderPaymentTransaction::TransactionType_optional __swiftcall ManagedOrderPaymentTransaction.TransactionType.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void sub_1B7563960(unsigned __int8 *a1, void **a2)
{
  v2 = *a2;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v4 = sub_1B7800838();
  [v2 willChangeValueForKey_];

  [v2 setPrimitiveTransactionType_];
  v5 = sub_1B7800838();
  [v2 didChangeValueForKey_];
}

void ManagedOrderPaymentTransaction.transactionType.setter(unsigned __int8 *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  [v1 setPrimitiveTransactionType_];
  v4 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void ManagedOrderPaymentTransaction.transactionType.modify(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC10FinanceKit30ManagedOrderPaymentTransaction_transactionTypeKey];
  v4 = *&v1[OBJC_IVAR____TtC10FinanceKit30ManagedOrderPaymentTransaction_transactionTypeKey + 8];
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = sub_1B7800838();
  [v1 willAccessValueForKey_];

  v6 = [v1 primitiveTransactionType];
  v7 = sub_1B7800838();
  [v1 didAccessValueForKey_];

  v8 = [v6 shortValue];
  if (v8 > 1)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 24) = v8;
  }
}

void sub_1B7563C1C(uint64_t a1)
{
  v1 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v2 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  [v1 setPrimitiveTransactionType_];
  v3 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

FinanceKit::ManagedOrderPaymentTransaction::Status_optional __swiftcall ManagedOrderPaymentTransaction.Status.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 5u)
  {
    v2 = 5;
  }

  *v1 = v2;
  return rawValue;
}

void sub_1B7563D14(unsigned __int8 *a1, void **a2)
{
  v2 = *a2;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v4 = sub_1B7800838();
  [v2 willChangeValueForKey_];

  [v2 setPrimitiveStatus_];
  v5 = sub_1B7800838();
  [v2 didChangeValueForKey_];
}

void ManagedOrderPaymentTransaction.status.setter(unsigned __int8 *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  [v1 setPrimitiveStatus_];
  v4 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void (*ManagedOrderPaymentTransaction.status.modify(uint64_t a1))(char **a1)
{
  *a1 = v1;
  ManagedOrderPaymentTransaction.status.getter((a1 + 8));
  return sub_1B7563F2C;
}

void sub_1B7563F2C(char **a1)
{
  v1 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v2 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  [v1 setPrimitiveStatus_];
  v3 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void ManagedOrderPaymentTransaction.amount.setter(__int128 *a1)
{
  v8 = *a1;
  LODWORD(v9) = *(a1 + 4);
  v2 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
  v3 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  v4 = sub_1B7800838();
  [v1 willChangeValueForKey_];

  [v1 setPrimitiveAmount_];
  v5 = sub_1B7800838();

  [v1 setPrimitiveCurrencyCode_];

  v6 = sub_1B7800838();
  [v1 didChangeValueForKey_];

  v7 = sub_1B7800838();
  [v1 didChangeValueForKey_];
}

void (*ManagedOrderPaymentTransaction.amount.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  ManagedOrderPaymentTransaction.amount.getter(v3);
  return sub_1B75641F8;
}

void sub_1B75641F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (a2)
  {
    v2[5] = *v2;
    v2[6] = v3;
    *(v2 + 14) = *(v2 + 4);
    v4 = v2[1];
    v6 = *v2;
    v7 = v4;
    v8 = *(v2 + 4);
    sub_1B7215720((v2 + 5), v2 + 120);
    ManagedOrderPaymentTransaction.amount.setter(&v6);
    v5 = v2[1];
    *(v2 + 40) = *v2;
    *(v2 + 56) = v5;
    *(v2 + 9) = *(v2 + 4);
    sub_1B721722C(v2 + 40);
  }

  else
  {
    v6 = *v2;
    v7 = v3;
    v8 = *(v2 + 4);
    ManagedOrderPaymentTransaction.amount.setter(&v6);
  }

  free(v2);
}

void sub_1B75642AC(id *a1)
{
  v1 = [*a1 createdAt];
  sub_1B77FF928();
}

id ManagedOrderPaymentTransaction.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderPaymentTransaction.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderPaymentTransaction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1B7564574(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(v3) initWithContext_];
  v6 = *a1;
  v7 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v8 = v5;
  v9 = [v7 initWithShort_];
  v10 = sub_1B7800838();
  [v8 willChangeValueForKey_];

  [v8 setPrimitiveTransactionType_];
  v11 = sub_1B7800838();
  [v8 didChangeValueForKey_];

  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v13 = sub_1B7800838();
  [v8 willChangeValueForKey_];

  [v8 setPrimitiveStatus_];
  v14 = sub_1B7800838();
  [v8 didChangeValueForKey_];

  v15 = *(a1 + 7);
  v30 = *(a1 + 6);
  v31 = v15;
  v32 = 0x726564726FLL;
  v33 = 0xE500000000000000;
  v16 = sub_1B723940C(sub_1B7262E4C, v29);
  [v8 setPaymentMethodDisplayName_];

  v17 = *(a1 + 24);
  v37[0] = *(a1 + 8);
  v37[1] = v17;
  v38 = *(a1 + 5);
  v18 = *(a1 + 24);
  v35[0] = *(a1 + 8);
  v35[1] = v18;
  v36 = *(a1 + 5);
  sub_1B7215720(v37, v34);
  ManagedOrderPaymentTransaction.amount.setter(v35);
  if (*(a1 + 9))
  {
    v19 = sub_1B7800838();
  }

  else
  {
    v19 = 0;
  }

  [v8 setApplePayTransactionIdentifier_];

  v20 = type metadata accessor for RawOrderPaymentTransaction(0);
  v21 = sub_1B77FF8B8();
  [v8 setCreatedAt_];

  v23 = &a1[*(v20 + 40)];
  v24 = *(v23 + 1);
  if (v24)
  {
    v25 = *v23;
    MEMORY[0x1EEE9AC00](v22);
    v28[2] = v25;
    v28[3] = v24;
    v28[4] = 0;
    v28[5] = 0;

    v26 = 0;
    if (sub_1B723957C(sub_1B755C964, v28))
    {
      v26 = sub_1B7800838();
    }
  }

  else
  {
    v26 = 0;
  }

  [v8 setReceiptName_];

  sub_1B7527748(a1);
  return v8;
}

unint64_t sub_1B75648D4()
{
  result = qword_1EB9972F0;
  if (!qword_1EB9972F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManagedOrderPaymentTransaction.TransactionType, &type metadata for ManagedOrderPaymentTransaction.TransactionType, v0, v1);
    atomic_store(result, &qword_1EB9972F0);
  }

  return result;
}

unint64_t sub_1B756492C()
{
  result = qword_1EB9972F8;
  if (!qword_1EB9972F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ManagedOrderPaymentTransaction.Status, &type metadata for ManagedOrderPaymentTransaction.Status, v0, v1);
    atomic_store(result, &qword_1EB9972F8);
  }

  return result;
}

uint64_t DiscreteRetryStrategy.earliestRetryDate(afterAttempts:lastAttemptDate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v5 = (*v2 + 32);
  v6 = *(*v2 + 16) + 1;
  while (--v6)
  {
    v7 = __OFADD__(v4, *v5);
    v4 += *v5;
    if (v7)
    {
      __break(1u);
      return result;
    }

    v5 += 2;
    if (v4 >= result)
    {
      sub_1B77FF828();
      v8 = 0;
      goto LABEL_7;
    }
  }

  v8 = 1;
LABEL_7:
  v9 = sub_1B77FF988();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v8, 1, v9);
}

id ImageProcessingXPCService.listener.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, a1);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  (*(v5 + 32))(v9 + v8, v7, a1);
  v10 = [objc_opt_self() serviceListener];
  type metadata accessor for XPCEntitlementChecker();
  v11 = swift_allocObject();
  v12 = sub_1B7202D08(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992510, &qword_1B783D560);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v12;
  *(v11 + 16) = v13;
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997300, &qword_1B783D568));
  v15 = sub_1B7564DD0(v10, v11, sub_1B7564D80, v9, v14);

  return v15;
}

uint64_t sub_1B7564CE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v10 = *(a4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_1B75FC3A8(a1, v9);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

id sub_1B7564DD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v15[3] = type metadata accessor for XPCEntitlementChecker();
  v15[4] = &protocol witness table for XPCEntitlementChecker;
  v15[0] = a2;
  *&a5[qword_1EB998C90] = a1;
  sub_1B719B06C(v15, &a5[qword_1EB998C98]);
  v10 = &a5[qword_1EB998CA0];
  *v10 = a3;
  *(v10 + 1) = a4;
  v11 = a1;

  v14.receiver = a5;
  v14.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997300, &qword_1B783D568);
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [v11 setDelegate_];
  [v11 resume];

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t dispatch thunk of ImageProcessingUIXPCServiceProviding.generateIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7201BB0;

  return v11(a1, a2, a3, a4);
}

__n128 RawBankConnectData.InsightsRequestBody.init(baaIdentification:transactions:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *(a1 + 32);
  v6 = *(a1 + 48);
  sub_1B72DE64C(0, 0, 0, 0, 0, 0, 0);
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  result = v9;
  *(a3 + 32) = v9;
  *(a3 + 48) = v6;
  *(a3 + 56) = a2;
  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.Entity.brand.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75655B0(v2, v6, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B757E3BC(v6, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    v7 = 1;
  }

  else
  {
    sub_1B7565394(v6, a1, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
    v7 = 0;
  }

  v8 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t RawBankConnectData.TransactionClassificationResult.Entity.merchant.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B75655B0(v2, v6, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B7565394(v6, a1, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
    v7 = 0;
  }

  else
  {
    sub_1B757E3BC(v6, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    v7 = 1;
  }

  v8 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_1B7565394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.transactionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RawBankConnectData.TransactionClassificationResult.transactionId.setter(uint64_t a1)
{
  v3 = sub_1B77FFA18();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1B75655B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.init(transactionId:representativeDescription:classificationOutcome:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult(0);
  v11 = (a5 + *(v10 + 20));
  v12 = sub_1B77FFA18();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  *v11 = a2;
  v11[1] = a3;
  return sub_1B7565394(a4, a5 + *(v10 + 24), type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
}

unint64_t sub_1B7565770()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361736E617274;
  }
}

uint64_t sub_1B75657E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B75838CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B756580C(uint64_t a1)
{
  v2 = sub_1B757E368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7565848(uint64_t a1)
{
  v2 = sub_1B757E368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997308, &qword_1B783D600);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B757E368();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B77FFA18();
  sub_1B71A6A8C(&qword_1EB98F718, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.TransactionClassificationResult(0);
    v8[14] = 1;
    sub_1B7801EF8();
    v8[13] = 2;
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome(0);
    sub_1B71A6A8C(&qword_1EB997318, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.Outcome);
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

void RawBankConnectData.TransactionClassificationResult.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome(0);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1B77FFA18();
  v25 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v26 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997320, &qword_1B783D608);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v19 - v7;
  v9 = type metadata accessor for RawBankConnectData.TransactionClassificationResult(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B757E368();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v24;
    v13 = v25;
    v20 = v5;
    v21 = v11;
    v31 = 0;
    sub_1B71A6A8C(&qword_1EB98F740, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v14 = v26;
    sub_1B7801E48();
    (*(v13 + 32))(v21, v14, v28);
    v30 = 1;
    v15 = sub_1B7801D78();
    v16 = v21;
    v17 = &v21[*(v9 + 20)];
    *v17 = v15;
    v17[1] = v18;
    v26 = v18;
    v29 = 2;
    sub_1B71A6A8C(&qword_1EB997328, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.Outcome);
    sub_1B7801E48();
    (*(v12 + 8))(v8, v27);
    sub_1B7565394(v20, v16 + *(v9 + 24), type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
    sub_1B75655B0(v16, v22, type metadata accessor for RawBankConnectData.TransactionClassificationResult);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B757E3BC(v16, type metadata accessor for RawBankConnectData.TransactionClassificationResult);
  }
}

uint64_t sub_1B7565F28(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E40, &qword_1B7841B18);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758A9A8();
  sub_1B78023F8();
  v9[15] = a2;
  sub_1B758BBBC();
  sub_1B7801FC8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B75660B8(uint64_t a1)
{
  v2 = sub_1B758A9A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75660F4(uint64_t a1)
{
  v2 = sub_1B758A9A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B7566130@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B75839F8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.Outcome.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome(0);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v14 = v28;
  sub_1B78023B8();
  if (!v14)
  {
    v23 = v9;
    v24 = v6;
    v15 = v27;
    v28 = v12;
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    sub_1B757E47C();
    sub_1B7802138();
    v17 = LOBYTE(v29[0]);
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    if (v17)
    {
      sub_1B78023B8();
      v20 = v15;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      if (v17 == 1)
      {
        sub_1B71A6A8C(&qword_1EB997340, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
        v18 = v24;
        sub_1B7802138();
        __swift_destroy_boxed_opaque_existential_1(v29);
        v22 = v28;
        sub_1B7565394(v18, v28, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
      }

      else
      {
        sub_1B71A6A8C(&qword_1EB997338, type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.FailedOutcome);
        v21 = v25;
        sub_1B7802138();
        __swift_destroy_boxed_opaque_existential_1(v29);
        v22 = v28;
        sub_1B7565394(v21, v28, type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome);
      }
    }

    else
    {
      sub_1B78023B8();
      __swift_project_boxed_opaque_existential_1(v29, v30);
      sub_1B71A6A8C(&qword_1EB997348, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
      v19 = v23;
      sub_1B7802138();
      __swift_destroy_boxed_opaque_existential_1(v29);
      v22 = v28;
      sub_1B7565394(v19, v28, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
      v20 = v15;
    }

    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_1B7565394(v22, v20, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
  }

  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_1B7566654()
{
  v1 = 0x536C616974726170;
  if (*v0 != 1)
  {
    v1 = 0x64656C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1B75666B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7583B68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B75666E0(uint64_t a1)
{
  v2 = sub_1B7581A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B756671C(uint64_t a1)
{
  v2 = sub_1B7581A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7566758(uint64_t a1)
{
  v2 = sub_1B7581AB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7566794(uint64_t a1)
{
  v2 = sub_1B7581AB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75667D0(uint64_t a1)
{
  v2 = sub_1B7581B04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B756680C(uint64_t a1)
{
  v2 = sub_1B7581B04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7566848(uint64_t a1)
{
  v2 = sub_1B7581B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7566884(uint64_t a1)
{
  v2 = sub_1B7581B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.Outcome.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997350, &qword_1B783D610);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v31 - v3;
  v39 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome(0);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997358, &qword_1B783D618);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v31 - v6;
  v34 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome(0);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997360, &qword_1B783D620);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v31 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome(0);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997368, &qword_1B783D628);
  v16 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v18 = &v31 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7581A5C();
  sub_1B78023F8();
  sub_1B75655B0(v44, v15, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Outcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = (v16 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v35;
      sub_1B7565394(v15, v35, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
      v47 = 1;
      sub_1B7581B04();
      v22 = v36;
      v23 = v45;
      sub_1B7801ED8();
      sub_1B71A6A8C(&qword_1EB997390, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
      v24 = v38;
      sub_1B7801FC8();
      (*(v37 + 8))(v22, v24);
      v25 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome;
    }

    else
    {
      v21 = v40;
      sub_1B7565394(v15, v40, type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome);
      v48 = 2;
      sub_1B7581AB0();
      v29 = v41;
      v23 = v45;
      sub_1B7801ED8();
      sub_1B71A6A8C(&qword_1EB997380, type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.FailedOutcome);
      v30 = v43;
      sub_1B7801FC8();
      (*(v42 + 8))(v29, v30);
      v25 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome;
    }

    sub_1B757E3BC(v21, v25);
    return (*v20)(v18, v23);
  }

  else
  {
    sub_1B7565394(v15, v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
    v46 = 0;
    sub_1B7581B58();
    v26 = v45;
    sub_1B7801ED8();
    sub_1B71A6A8C(&qword_1EB9973A0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
    v27 = v33;
    sub_1B7801FC8();
    (*(v32 + 8))(v10, v27);
    sub_1B757E3BC(v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
    return (*v20)(v18, v26);
  }
}

unint64_t RawBankConnectData.TransactionClassificationResult.OutcomeIndicator.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0xD000000000000016;
  }

  return 0xD000000000000011;
}

unint64_t sub_1B756706C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV16OutcomeIndicatorO8rawValueAGSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1B756709C@<X0>(unint64_t *a1@<X8>)
{
  result = RawBankConnectData.TransactionClassificationResult.OutcomeIndicator.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.SuccessOutcome.walletCategorisation.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.SuccessOutcome.walletCategorisation.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t sub_1B7567398(uint64_t a1)
{
  v2 = sub_1B7583D58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75673D4(uint64_t a1)
{
  v2 = sub_1B7583D58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.SuccessOutcome.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9973A8, &qword_1B783D630);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7583D58();
  sub_1B78023F8();
  v16 = 0;
  sub_1B7801FA8();
  if (!v2)
  {
    v15 = *(v3 + 8);
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9973B8, &qword_1B783D638);
    sub_1B7583E00(&qword_1EB9973C0, &qword_1EB9973C8, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.Entity, MEMORY[0x1E69E6300]);
    sub_1B7801F38();
    v9 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome(0);
    v13 = 2;
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
    sub_1B71A6A8C(&qword_1EB9973D0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    sub_1B7801FC8();
    v12 = *(v3 + *(v9 + 28));
    v11[11] = 3;
    sub_1B7583DAC();
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

void RawBankConnectData.TransactionClassificationResult.SuccessOutcome.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9973E0, &qword_1B783D640);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome(0);
  v22 = MEMORY[0x1EEE9AC00](v10);
  v23 = a1;
  v12 = *(v22 + 28);
  v13 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v13 + v12) = 2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7583D58();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v17 = v12;
    v18 = v6;
    v14 = v20;
    v15 = v21;
    v29 = 0;
    *v13 = sub_1B7801E28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9973B8, &qword_1B783D638);
    v28 = 1;
    sub_1B7583E00(&qword_1EB9973E8, &qword_1EB9973F0, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.Entity, MEMORY[0x1E69E6330]);
    sub_1B7801DB8();
    v13[1] = v24;
    v27 = 2;
    sub_1B71A6A8C(&qword_1EB9973F8, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    v16 = v18;
    sub_1B7801E48();
    sub_1B7565394(v16, v13 + *(v22 + 24), type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    v26 = 3;
    sub_1B7583E9C();
    sub_1B7801DB8();
    (*(v14 + 8))(v9, v15);
    *(v13 + v17) = v25;
    sub_1B75655B0(v13, v19, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1B757E3BC(v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.SuccessOutcome);
  }
}

uint64_t RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome.walletCategorisation.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome.walletCategorisation.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t sub_1B7567D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t (*a5)(void)@<X4>, void *a6@<X8>)
{
  v10 = *a4;
  v11 = a5(0);
  v12 = *(v11 + 28);
  *(a6 + v12) = 2;
  *a6 = a1;
  a6[1] = a2;
  result = sub_1B7565394(a3, a6 + *(v11 + 24), type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  *(a6 + v12) = v10;
  return result;
}

unint64_t sub_1B7567E2C()
{
  v1 = 0x6D6574744177656ELL;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x7365697469746E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7567EB8(uint64_t a1)
{
  v2 = sub_1B7583EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7567EF4(uint64_t a1)
{
  v2 = sub_1B7583EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997408, &qword_1B783D648);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7583EF0();
  sub_1B78023F8();
  v16 = 0;
  sub_1B7801FA8();
  if (!v2)
  {
    v15 = *(v3 + 8);
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9973B8, &qword_1B783D638);
    sub_1B7583E00(&qword_1EB9973C0, &qword_1EB9973C8, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.Entity, MEMORY[0x1E69E6300]);
    sub_1B7801F38();
    v9 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome(0);
    v13 = 2;
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
    sub_1B71A6A8C(&qword_1EB9973D0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    sub_1B7801FC8();
    v12 = *(v3 + *(v9 + 28));
    v11[11] = 3;
    sub_1B7583DAC();
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

void RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997418, &qword_1B783D650);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome(0);
  v22 = MEMORY[0x1EEE9AC00](v10);
  v23 = a1;
  v12 = *(v22 + 28);
  v13 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v13 + v12) = 2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7583EF0();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v17 = v12;
    v18 = v6;
    v14 = v20;
    v15 = v21;
    v29 = 0;
    *v13 = sub_1B7801E28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9973B8, &qword_1B783D638);
    v28 = 1;
    sub_1B7583E00(&qword_1EB9973E8, &qword_1EB9973F0, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.Entity, MEMORY[0x1E69E6330]);
    sub_1B7801DB8();
    v13[1] = v24;
    v27 = 2;
    sub_1B71A6A8C(&qword_1EB9973F8, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    v16 = v18;
    sub_1B7801E48();
    sub_1B7565394(v16, v13 + *(v22 + 24), type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    v26 = 3;
    sub_1B7583E9C();
    sub_1B7801DB8();
    (*(v14 + 8))(v9, v15);
    *(v13 + v17) = v25;
    sub_1B75655B0(v13, v19, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1B757E3BC(v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.PartialSuccessOutcome);
  }
}

uint64_t RawBankConnectData.TransactionClassificationResult.FailedOutcome.init(newAttemptCount:retryInstructions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome(0);
  return sub_1B7565394(a2, a3 + *(v5 + 20), type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
}

uint64_t sub_1B75687DC()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6D6574744177656ELL;
  }
}

void sub_1B7568828(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6574744177656ELL && a2 == 0xEF746E756F437470;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7884FA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7568914(uint64_t a1)
{
  v2 = sub_1B7583F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7568950(uint64_t a1)
{
  v2 = sub_1B7583F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.FailedOutcome.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997420, &qword_1B783D658);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7583F44();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801FA8();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome(0);
    v8[14] = 1;
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
    sub_1B71A6A8C(&qword_1EB9973D0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.TransactionClassificationResult.FailedOutcome.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997430, &qword_1B783D660);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7583F44();
  sub_1B78023C8();
  if (!v2)
  {
    v17 = v8;
    v11 = v19;
    v23 = 0;
    v12 = v21;
    v13 = sub_1B7801E28();
    v16 = v10;
    *v10 = v13;
    v22 = 1;
    sub_1B71A6A8C(&qword_1EB9973F8, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    sub_1B7801E48();
    (*(v11 + 8))(v7, v12);
    v14 = v16;
    sub_1B7565394(v5, v16 + *(v17 + 20), type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
    sub_1B7565394(v14, v18, type metadata accessor for RawBankConnectData.TransactionClassificationResult.FailedOutcome);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7568E14(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E30, &qword_1B7841B10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758AA50();
  sub_1B78023F8();
  v9[15] = a2 & 1;
  sub_1B758BB68();
  sub_1B7801FC8();
  return (*(v5 + 8))(v7, v4);
}

void sub_1B7568FB0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B7569040(uint64_t a1)
{
  v2 = sub_1B758AA50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B756907C(uint64_t a1)
{
  v2 = sub_1B758AA50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75690B8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B758506C(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.Entity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = v24;
  sub_1B78023B8();
  if (v13)
  {
    v14 = v27;
  }

  else
  {
    v21 = v11;
    v22 = v8;
    v24 = v5;
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_1B7583F98();
    sub_1B7802138();
    v15 = v25[0];
    v16 = v27;
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    sub_1B78023B8();
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    if (v15)
    {
      sub_1B71A6A8C(&qword_1EB997440, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.Merchant);
      v17 = v24;
      sub_1B7802138();
      __swift_destroy_boxed_opaque_existential_1(v25);
      v18 = v21;
      sub_1B7565394(v17, v21, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
    }

    else
    {
      sub_1B71A6A8C(&qword_1EB997448, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.Brand);
      v19 = v22;
      sub_1B7802138();
      __swift_destroy_boxed_opaque_existential_1(v25);
      v18 = v21;
      sub_1B7565394(v19, v21, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
    }

    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_1B7565394(v18, v23, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
    v14 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1B75694C0(uint64_t a1)
{
  v2 = sub_1B7584094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75694FC(uint64_t a1)
{
  v2 = sub_1B7584094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7569538()
{
  if (*v0)
  {
    return 0x746E61686372656DLL;
  }

  else
  {
    return 0x646E617262;
  }
}

void sub_1B7569570(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E617262 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7569648(uint64_t a1)
{
  v2 = sub_1B7583FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7569684(uint64_t a1)
{
  v2 = sub_1B7583FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75696C0(uint64_t a1)
{
  v2 = sub_1B7584040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75696FC(uint64_t a1)
{
  v2 = sub_1B7584040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.Entity.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997450, &qword_1B783D668);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v24 - v3;
  v28 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997458, &qword_1B783D670);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v25 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997460, &qword_1B783D678);
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7583FEC();
  sub_1B78023F8();
  sub_1B75655B0(v33, v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Entity);
  v16 = (v13 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v29;
    sub_1B7565394(v12, v29, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
    v36 = 1;
    sub_1B7584040();
    v18 = v30;
    v19 = v34;
    sub_1B7801ED8();
    sub_1B71A6A8C(&qword_1EB997478, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.Merchant);
    v20 = v32;
    sub_1B7801FC8();
    (*(v31 + 8))(v18, v20);
    sub_1B757E3BC(v17, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
    return (*v16)(v15, v19);
  }

  else
  {
    sub_1B7565394(v12, v9, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
    v35 = 0;
    sub_1B7584094();
    v22 = v34;
    sub_1B7801ED8();
    sub_1B71A6A8C(&qword_1EB997488, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.Brand);
    v23 = v27;
    sub_1B7801FC8();
    (*(v26 + 8))(v7, v23);
    sub_1B757E3BC(v9, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
    return (*v16)(v15, v22);
  }
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityIndicator.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x544E41484352454DLL;
  }

  else
  {
    return 0x444E415242;
  }
}

uint64_t sub_1B7569CD8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B7569D58(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B7569DC4(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7569E4C(uint64_t *a1@<X8>)
{
  v2 = 0x444E415242;
  if (*v1)
  {
    v2 = 0x544E41484352454DLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B7569F38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x544E41484352454DLL;
  }

  else
  {
    v3 = 0x444E415242;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x544E41484352454DLL;
  }

  else
  {
    v5 = 0x444E415242;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

double RawBankConnectData.TransactionClassificationResult.Brand.identifier.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void RawBankConnectData.TransactionClassificationResult.Brand.identifier.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
}

double RawBankConnectData.TransactionClassificationResult.Brand.mapsSystemDetails.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(v3 + 40);

  return sub_1B75840E8(v4, v5, v6, v7);
}

__n128 RawBankConnectData.TransactionClassificationResult.Brand.mapsSystemDetails.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0) + 32);
  sub_1B7531560(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.Brand.vendorCategorisation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.Brand.vendorCategorisation.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  v5 = (v1 + *(result + 36));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.Brand.init(identifier:name:contactDetails:imagery:mapsSystemDetails:vendorCategorisation:website:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v14 = *a1;
  v13 = a1[1];
  v30 = *(a6 + 4);
  v29 = *(a6 + 40);
  v31 = a7[1];
  v32 = *a7;
  v15 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  v16 = v15[6];
  v17 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v26 = a6[1];
  v27 = *a6;
  (*(*(v17 - 8) + 56))(&a9[v16], 1, 1, v17);
  v18 = v15[7];
  v19 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v15[8]];
  *v20 = xmmword_1B78301C0;
  *(v20 + 3) = 0;
  *(v20 + 4) = 0;
  *(v20 + 2) = 0;
  v20[40] = 0;
  v21 = v15[10];
  v22 = sub_1B77FF4F8();
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  *a9 = v14;
  *(a9 + 1) = v13;
  *(a9 + 2) = a2;
  *(a9 + 3) = a3;
  sub_1B7213740(a4, &a9[v16], &qword_1EB997490, &qword_1B783D680);
  sub_1B7213740(a5, &a9[v18], &qword_1EB997498, &qword_1B78587F0);
  sub_1B7531560(*v20, *(v20 + 1), *(v20 + 2), *(v20 + 3));
  *v20 = v27;
  *(v20 + 1) = v26;
  *(v20 + 4) = v30;
  v20[40] = v29;
  v23 = &a9[v15[9]];
  *v23 = v32;
  v23[1] = v31;
  return sub_1B7213740(a8, &a9[v21], &unk_1EB994C70, &qword_1B7809800);
}

unint64_t sub_1B756A69C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0x65746973626577;
  }

  v4 = 0x79726567616D69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x44746361746E6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B756A788@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B75851DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B756A7B0(uint64_t a1)
{
  v2 = sub_1B7584170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B756A7EC(uint64_t a1)
{
  v2 = sub_1B7584170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.Brand.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9974A0, &qword_1B783D688);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584170();
  sub_1B78023F8();
  v9 = v3[1];
  v20 = *v3;
  v21 = v9;
  v26 = 0;
  sub_1B75841C4();

  sub_1B7801FC8();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v20) = 1;
    sub_1B7801EF8();
    v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
    LOBYTE(v20) = 2;
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
    sub_1B71A6A8C(&qword_1EB9974B8, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
    sub_1B7801F38();
    LOBYTE(v20) = 3;
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
    sub_1B71A6A8C(&qword_1EB9974C0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    sub_1B7801F38();
    v11 = v3 + *(v10 + 32);
    v12 = *(v11 + 1);
    v13 = *(v11 + 2);
    v14 = *(v11 + 3);
    v15 = *(v11 + 4);
    v16 = v11[40];
    v20 = *v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = 4;
    sub_1B75840E8(v20, v12, v13, v14);
    sub_1B7584218();
    sub_1B7801F38();
    sub_1B7531560(v20, v21, v22, v23);
    v17 = v3 + *(v10 + 36);
    v18 = *v17;
    LOBYTE(v17) = v17[1];
    LOBYTE(v20) = v18;
    BYTE1(v20) = v17;
    v26 = 5;
    sub_1B758426C();
    sub_1B7801FC8();
    LOBYTE(v20) = 6;
    sub_1B77FF4F8();
    sub_1B71A6A8C(&qword_1EB98F700, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.TransactionClassificationResult.Brand.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498, &qword_1B78587F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  *&v58 = v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490, &qword_1B783D680);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = v51 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9974D8, &qword_1B783D690);
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v10 = v51 - v9;
  v11 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 24);
  v16 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v17 = *(*(v16 - 8) + 56);
  v64 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = v11[7];
  v19 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  v20 = *(*(v19 - 8) + 56);
  v63 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = &v14[v11[8]];
  *v21 = xmmword_1B78301C0;
  *(v21 + 3) = 0;
  *(v21 + 4) = 0;
  *(v21 + 2) = 0;
  v21[40] = 0;
  v22 = v11[10];
  v23 = sub_1B77FF4F8();
  v24 = *(*(v23 - 8) + 56);
  v62 = v22;
  v66 = v14;
  v24(&v14[v22], 1, 1, v23);
  v25 = a1[3];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1B7584170();
  v59 = v10;
  v26 = v61;
  sub_1B78023C8();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v65);
    v30 = v63;
    v31 = v64;
    v32 = v66;

    sub_1B7205418(v32 + v31, &qword_1EB997490, &qword_1B783D680);
    sub_1B7205418(v32 + v30, &qword_1EB997498, &qword_1B78587F0);
    sub_1B7531560(*v21, *(v21 + 1), *(v21 + 2), *(v21 + 3));
    return sub_1B7205418(v32 + v62, &unk_1EB994C70, &qword_1B7809800);
  }

  else
  {
    v52 = v11;
    *&v61 = v19;
    v27 = v57;
    v53 = v23;
    v28 = v58;
    v29 = v56;
    v71 = 0;
    sub_1B75842C0();
    sub_1B7801E48();
    v33 = *(&v67 + 1);
    v34 = v66;
    *v66 = v67;
    v34[1] = v33;
    LOBYTE(v67) = 1;
    v34[2] = sub_1B7801D78();
    v34[3] = v35;
    v51[1] = v35;
    LOBYTE(v67) = 2;
    sub_1B71A6A8C(&qword_1EB9974E8, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
    sub_1B7801DB8();
    sub_1B7213740(v27, v34 + v64, &qword_1EB997490, &qword_1B783D680);
    LOBYTE(v67) = 3;
    sub_1B71A6A8C(&qword_1EB9974F0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    sub_1B7801DB8();
    sub_1B7213740(v28, v34 + v63, &qword_1EB997498, &qword_1B78587F0);
    v71 = 4;
    sub_1B7584314();
    sub_1B7801DB8();
    v36 = v69;
    v37 = v70;
    v38 = *v21;
    v39 = *(v21 + 1);
    v40 = *(v21 + 2);
    v41 = *(v21 + 3);
    v61 = v67;
    v58 = v68;
    sub_1B7531560(v38, v39, v40, v41);
    v42 = v58;
    *v21 = v61;
    *(v21 + 1) = v42;
    *(v21 + 4) = v36;
    v21[40] = v37;
    v71 = 5;
    sub_1B7584368();
    sub_1B7801E48();
    v43 = BYTE1(v67);
    v44 = v34 + v52[9];
    *v44 = v67;
    v44[1] = v43;
    LOBYTE(v67) = 6;
    sub_1B71A6A8C(&qword_1EB98F730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v45 = v55;
    v46 = v59;
    v47 = v60;
    sub_1B7801DB8();
    v48 = v47;
    v49 = v66;
    (*(v29 + 8))(v46, v48);
    sub_1B7213740(v45, v49 + v62, &unk_1EB994C70, &qword_1B7809800);
    sub_1B75655B0(v49, v54, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
    __swift_destroy_boxed_opaque_existential_1(v65);
    return sub_1B757E3BC(v49, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Brand);
  }
}

double RawBankConnectData.TransactionClassificationResult.Merchant.associatedBrand.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

void RawBankConnectData.TransactionClassificationResult.Merchant.associatedBrand.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

__n128 RawBankConnectData.TransactionClassificationResult.Merchant.geographicCoordinates.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0) + 32));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.Merchant.geographicCoordinates.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  v6 = v1 + *(result + 32);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

double RawBankConnectData.TransactionClassificationResult.Merchant.mapsSystemDetails.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0) + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(v3 + 40);

  return sub_1B75840E8(v4, v5, v6, v7);
}

__n128 RawBankConnectData.TransactionClassificationResult.Merchant.mapsSystemDetails.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0) + 40);
  sub_1B7531560(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.Merchant.postalAddress.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0) + 44));
  v4 = v3[3];
  v5 = v3[5];
  v20 = v3[4];
  v6 = v20;
  v21 = v5;
  v7 = v3[7];
  v9 = v3[5];
  v22 = v3[6];
  v8 = v22;
  v23 = v7;
  v10 = v3[3];
  v11 = v3[1];
  v18 = v3[2];
  v19 = v10;
  v12 = v3[1];
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  a1[2] = v18;
  a1[3] = v4;
  *a1 = v13;
  a1[1] = v11;
  v14 = v3[7];
  a1[6] = v8;
  a1[7] = v14;
  a1[4] = v6;
  a1[5] = v9;
  return sub_1B7205588(v17, &v16, &qword_1EB997508, &qword_1B783D698);
}

__n128 RawBankConnectData.TransactionClassificationResult.Merchant.postalAddress.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0) + 44));
  v4 = v3[5];
  v13[4] = v3[4];
  v13[5] = v4;
  v5 = v3[7];
  v13[6] = v3[6];
  v13[7] = v5;
  v6 = v3[3];
  v13[2] = v3[2];
  v13[3] = v6;
  v7 = v3[1];
  v13[0] = *v3;
  v13[1] = v7;
  sub_1B7205418(v13, &qword_1EB997508, &qword_1B783D698);
  v8 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v8;
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v10;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v12;
  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.Merchant.vendorCategorisation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.Merchant.vendorCategorisation.setter(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  v5 = (v1 + *(result + 48));
  *v5 = v2;
  v5[1] = v3;
  return result;
}

uint64_t RawBankConnectData.TransactionClassificationResult.Merchant.init(identifier:name:associatedBrand:contactDetails:geographicCoordinates:imagery:mapsSystemDetails:postalAddress:vendorCategorisation:website:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, char *a9@<X8>, __int128 *a10, char *a11, uint64_t a12)
{
  v14 = *a1;
  v15 = a1[1];
  v38 = a4[1];
  v39 = *a4;
  v43 = a6[1];
  v44 = *a6;
  v42 = *(a6 + 16);
  v48 = *(a8 + 4);
  v47 = *(a8 + 40);
  v55 = a10[4];
  v56 = a10[5];
  v57 = a10[6];
  v58 = a10[7];
  v51 = *a10;
  v52 = a10[1];
  v53 = a10[2];
  v54 = a10[3];
  v49 = a11[1];
  v50 = *a11;
  v16 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  *(a9 + 4) = 0;
  *(a9 + 5) = 0;
  v17 = v16[7];
  v18 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v36 = a8[1];
  v37 = *a8;
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = &a9[v16[8]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = v16[9];
  v21 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  (*(*(v21 - 8) + 56))(&a9[v20], 1, 1, v21);
  v22 = &a9[v16[10]];
  *v22 = xmmword_1B78301C0;
  *(v22 + 3) = 0;
  *(v22 + 4) = 0;
  *(v22 + 2) = 0;
  v22[40] = 0;
  v23 = &a9[v16[11]];
  sub_1B71CDF28(v59);
  v24 = v59[5];
  *(v23 + 4) = v59[4];
  *(v23 + 5) = v24;
  v25 = v59[7];
  *(v23 + 6) = v59[6];
  *(v23 + 7) = v25;
  v26 = v59[1];
  *v23 = v59[0];
  *(v23 + 1) = v26;
  v27 = v59[3];
  *(v23 + 2) = v59[2];
  *(v23 + 3) = v27;
  v28 = v16[13];
  v29 = sub_1B77FF4F8();
  (*(*(v29 - 8) + 56))(&a9[v28], 1, 1, v29);
  *a9 = v14;
  *(a9 + 1) = v15;
  *(a9 + 2) = a2;
  *(a9 + 3) = a3;

  *(a9 + 4) = v39;
  *(a9 + 5) = v38;
  sub_1B7213740(a5, &a9[v17], &qword_1EB997490, &qword_1B783D680);
  *v19 = v44;
  *(v19 + 1) = v43;
  v19[16] = v42;
  sub_1B7213740(a7, &a9[v20], &qword_1EB997498, &qword_1B78587F0);
  sub_1B7531560(*v22, *(v22 + 1), *(v22 + 2), *(v22 + 3));
  *v22 = v37;
  *(v22 + 1) = v36;
  *(v22 + 4) = v48;
  v22[40] = v47;
  v30 = *(v23 + 5);
  v60[4] = *(v23 + 4);
  v60[5] = v30;
  v31 = *(v23 + 7);
  v60[6] = *(v23 + 6);
  v60[7] = v31;
  v32 = *(v23 + 1);
  v60[0] = *v23;
  v60[1] = v32;
  v33 = *(v23 + 3);
  v60[2] = *(v23 + 2);
  v60[3] = v33;
  sub_1B7205418(v60, &qword_1EB997508, &qword_1B783D698);
  *(v23 + 4) = v55;
  *(v23 + 5) = v56;
  *(v23 + 6) = v57;
  *(v23 + 7) = v58;
  *v23 = v51;
  *(v23 + 1) = v52;
  *(v23 + 2) = v53;
  *(v23 + 3) = v54;
  v34 = &a9[v16[12]];
  *v34 = v50;
  v34[1] = v49;
  return sub_1B7213740(a12, &a9[v28], &unk_1EB994C70, &qword_1B7809800);
}

unint64_t sub_1B756BED0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x64416C6174736F70;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0x65746973626577;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x79726567616D69;
    if (a1 != 5)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x746169636F737361;
    v3 = 0x44746361746E6F63;
    if (a1 != 3)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B756C048@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7585440(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B756C070(uint64_t a1)
{
  v2 = sub_1B75843BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B756C0AC(uint64_t a1)
{
  v2 = sub_1B75843BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.Merchant.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997510, &qword_1B783D6A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75843BC();
  sub_1B78023F8();
  v9 = v3[1];
  *&v45 = *v3;
  *(&v45 + 1) = v9;
  LOBYTE(v37) = 0;
  sub_1B75841C4();

  sub_1B7801FC8();

  if (!v2)
  {
    LOBYTE(v45) = 1;
    sub_1B7801EF8();
    v11 = v3[5];
    *&v45 = v3[4];
    *(&v45 + 1) = v11;
    LOBYTE(v37) = 2;

    sub_1B7801F38();

    v60 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
    LOBYTE(v45) = 3;
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
    sub_1B71A6A8C(&qword_1EB9974B8, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
    sub_1B7801F38();
    v12 = v3 + v60[8];
    v13 = v12[16];
    v45 = *v12;
    LOBYTE(v46) = v13;
    LOBYTE(v37) = 4;
    sub_1B7584410();
    sub_1B7801F38();
    LOBYTE(v45) = 5;
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
    sub_1B71A6A8C(&qword_1EB9974C0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    sub_1B7801F38();
    v14 = v3 + v60[10];
    v15 = *(v14 + 1);
    v16 = *(v14 + 2);
    v17 = *(v14 + 3);
    v18 = *(v14 + 4);
    v19 = v14[40];
    v54 = *v14;
    v55 = v15;
    v56 = v16;
    v57 = v17;
    v58 = v18;
    v59 = v19;
    v53 = 6;
    sub_1B75840E8(v54, v15, v16, v17);
    sub_1B7584218();
    sub_1B7801F38();
    sub_1B7531560(v54, v55, v56, v57);
    v20 = (v3 + v60[11]);
    v21 = v20[5];
    v22 = v20[3];
    v49 = v20[4];
    v50 = v21;
    v23 = v20[5];
    v24 = v20[7];
    v51 = v20[6];
    v52 = v24;
    v25 = v20[1];
    v45 = *v20;
    v46 = v25;
    v26 = v20[3];
    v28 = *v20;
    v27 = v20[1];
    v47 = v20[2];
    v48 = v26;
    v41 = v49;
    v42 = v23;
    v29 = v20[7];
    v43 = v51;
    v44 = v29;
    v37 = v28;
    v38 = v27;
    v39 = v47;
    v40 = v22;
    v36 = 7;
    sub_1B7205588(&v45, v35, &qword_1EB997508, &qword_1B783D698);
    sub_1B7584464();
    sub_1B7801F38();
    v35[4] = v41;
    v35[5] = v42;
    v35[6] = v43;
    v35[7] = v44;
    v35[0] = v37;
    v35[1] = v38;
    v35[2] = v39;
    v35[3] = v40;
    sub_1B7205418(v35, &qword_1EB997508, &qword_1B783D698);
    v30 = v3 + v60[12];
    v31 = *v30;
    LOBYTE(v30) = v30[1];
    v33 = v31;
    v34 = v30;
    v32[13] = 8;
    sub_1B758426C();
    sub_1B7801FC8();
    v33 = 9;
    sub_1B77FF4F8();
    sub_1B71A6A8C(&qword_1EB98F700, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RawBankConnectData.TransactionClassificationResult.Merchant.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a1;
  v74 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = v72 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997498, &qword_1B78587F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997490, &qword_1B783D680);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *&v78 = v72 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997530, &qword_1B783D6A8);
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v9 = v72 - v8;
  v10 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  v14 = *(v11 + 28);
  v15 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v16 = *(*(v15 - 8) + 56);
  v85 = v14;
  *&v77 = v15;
  v16(&v13[v14], 1, 1);
  v17 = &v13[v10[8]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = v10[9];
  v19 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  v20 = *(*(v19 - 8) + 56);
  v87 = v18;
  v20(&v13[v18], 1, 1, v19);
  v21 = &v13[v10[10]];
  *v21 = xmmword_1B78301C0;
  *(v21 + 3) = 0;
  *(v21 + 4) = 0;
  *(v21 + 2) = 0;
  v88 = v21;
  v21[40] = 0;
  v22 = &v13[v10[11]];
  sub_1B71CDF28(v110);
  v23 = v110[5];
  *(v22 + 4) = v110[4];
  *(v22 + 5) = v23;
  v24 = v110[7];
  *(v22 + 6) = v110[6];
  *(v22 + 7) = v24;
  v25 = v110[1];
  *v22 = v110[0];
  *(v22 + 1) = v25;
  v26 = v110[3];
  *(v22 + 2) = v110[2];
  *(v22 + 3) = v26;
  v84 = v22;
  v27 = v10[13];
  v28 = sub_1B77FF4F8();
  v29 = *(*(v28 - 8) + 56);
  v83 = v27;
  v86 = v13;
  v29(&v13[v27], 1, 1, v28);
  __swift_project_boxed_opaque_existential_1(v111, v111[3]);
  sub_1B75843BC();
  v80 = v9;
  v30 = v82;
  sub_1B78023C8();
  if (v30)
  {
    v31 = v87;
    v33 = v86;
    v34 = v84;
    __swift_destroy_boxed_opaque_existential_1(v111);
    v35 = v85;

    sub_1B7205418(v33 + v35, &qword_1EB997490, &qword_1B783D680);
    sub_1B7205418(v33 + v31, &qword_1EB997498, &qword_1B78587F0);
    sub_1B7531560(*v88, v88[1], v88[2], v88[3]);
    v36 = *(v34 + 5);
    v106 = *(v34 + 4);
    v107 = v36;
    v37 = *(v34 + 7);
    v108 = *(v34 + 6);
    v109 = v37;
    v38 = *(v34 + 1);
    v102 = *v34;
    v103 = v38;
    v39 = *(v34 + 3);
    v104 = *(v34 + 2);
    v105 = v39;
    sub_1B7205418(&v102, &qword_1EB997508, &qword_1B783D698);
    return sub_1B7205418(v33 + v83, &unk_1EB994C70, &qword_1B7809800);
  }

  else
  {
    v73 = v17;
    v82 = v19;
    LOBYTE(v100[0]) = 0;
    sub_1B75842C0();
    sub_1B7801E48();
    v32 = v87;
    v41 = *(&v102 + 1);
    v42 = v86;
    *v86 = v102;
    v42[1] = v41;
    LOBYTE(v102) = 1;
    v43 = sub_1B7801D78();
    v44 = v84;
    v42[2] = v43;
    v42[3] = v45;
    v72[1] = v45;
    LOBYTE(v100[0]) = 2;
    sub_1B7801DB8();
    v46 = v102;

    *(v42 + 2) = v46;
    LOBYTE(v102) = 3;
    sub_1B71A6A8C(&qword_1EB9974E8, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
    v47 = v78;
    sub_1B7801DB8();
    sub_1B7213740(v47, v42 + v85, &qword_1EB997490, &qword_1B783D680);
    LOBYTE(v100[0]) = 4;
    sub_1B75844B8();
    sub_1B7801DB8();
    v48 = v103;
    v49 = v73;
    *v73 = v102;
    v49[16] = v48;
    LOBYTE(v102) = 5;
    sub_1B71A6A8C(&qword_1EB9974F0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
    sub_1B7801DB8();
    sub_1B7213740(v76, v42 + v32, &qword_1EB997498, &qword_1B78587F0);
    LOBYTE(v100[0]) = 6;
    sub_1B7584314();
    sub_1B7801DB8();
    v82 = v104;
    LOBYTE(v32) = BYTE8(v104);
    v50 = v88;
    v51 = *v88;
    v52 = v88[1];
    v53 = v88[2];
    v54 = v88[3];
    v77 = v103;
    v78 = v102;
    sub_1B7531560(v51, v52, v53, v54);
    v55 = v77;
    *v50 = v78;
    *(v50 + 1) = v55;
    v50[4] = v82;
    *(v50 + 40) = v32;
    v101 = 7;
    sub_1B758450C();
    sub_1B7801DB8();
    v96 = v106;
    v97 = v107;
    v98 = v108;
    v99 = v109;
    v92 = v102;
    v93 = v103;
    v94 = v104;
    v95 = v105;
    v56 = *v44;
    v57 = *(v44 + 1);
    v58 = *(v44 + 3);
    v100[2] = *(v44 + 2);
    v100[3] = v58;
    v100[0] = v56;
    v100[1] = v57;
    v59 = *(v44 + 4);
    v60 = *(v44 + 5);
    v61 = *(v44 + 7);
    v100[6] = *(v44 + 6);
    v100[7] = v61;
    v100[4] = v59;
    v100[5] = v60;
    sub_1B7205418(v100, &qword_1EB997508, &qword_1B783D698);
    v62 = v97;
    *(v44 + 4) = v96;
    *(v44 + 5) = v62;
    v63 = v99;
    *(v44 + 6) = v98;
    *(v44 + 7) = v63;
    v64 = v93;
    *v44 = v92;
    *(v44 + 1) = v64;
    v65 = v95;
    *(v44 + 2) = v94;
    *(v44 + 3) = v65;
    v89 = 8;
    sub_1B7584368();
    sub_1B7801E48();
    v66 = v79;
    v67 = v91;
    v68 = v42 + v10[12];
    *v68 = v90;
    v68[1] = v67;
    v90 = 9;
    sub_1B71A6A8C(&qword_1EB98F730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v69 = v80;
    v70 = v81;
    sub_1B7801DB8();
    (*(v66 + 8))(v69, v70);
    v71 = v86;
    sub_1B7213740(v75, v86 + v83, &unk_1EB994C70, &qword_1B7809800);
    sub_1B75655B0(v71, v74, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
    __swift_destroy_boxed_opaque_existential_1(v111);
    return sub_1B757E3BC(v71, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
  }
}

void RawBankConnectData.TransactionClassificationResult.EntityIdentifier.IdentifierType.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1B7801D18();

  *a3 = v4 != 0;
}

void sub_1B756D180(BOOL *a2@<X8>)
{
  v3 = sub_1B7801D18();

  *a2 = v3 != 0;
}

uint64_t sub_1B756D2A4()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B756D318(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityIdentifier.id.getter()
{
  v1 = *v0;

  return v1;
}

void RawBankConnectData.TransactionClassificationResult.EntityIdentifier.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityIdentifier.init(id:identifierType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static RawBankConnectData.TransactionClassificationResult.EntityIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_1B78020F8();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B756D474()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 25705;
  }
}

void sub_1B756D4B0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEE00657079547265)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B756D58C(uint64_t a1)
{
  v2 = sub_1B7584560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B756D5C8(uint64_t a1)
{
  v2 = sub_1B7584560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997548, &qword_1B783D6B0);
  v8 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584560();
  sub_1B78023F8();
  v10 = 0;
  sub_1B7801F78();
  if (!v1)
  {
    v9 = 1;
    sub_1B75845B4();
    sub_1B7801FC8();
  }

  return (*(v8 + 8))(v5, v3);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityIdentifier.hash(into:)(uint64_t a1)
{
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityIdentifier.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

void RawBankConnectData.TransactionClassificationResult.EntityIdentifier.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997560, &qword_1B783D6B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584560();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = 0;
    v9 = sub_1B7801DF8();
    v11 = v10;
    v12 = v9;
    v14 = 1;
    sub_1B7584608();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    a2[1] = v11;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1B756DA5C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = sub_1B78020F8();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B756DAAC()
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B756DB18(uint64_t a1)
{
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t sub_1B756DB6C(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t static RawBankConnectData.TransactionClassificationResult.EntityIdentifierType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B78020F8();
  }
}

void sub_1B756DC10(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B756DC90(uint64_t a1)
{
  v2 = sub_1B758465C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B756DCCC(uint64_t a1)
{
  v2 = sub_1B758465C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityIdentifierType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997570, &qword_1B783D6C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758465C();
  sub_1B78023F8();
  sub_1B7801F78();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityIdentifierType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997580, &qword_1B783D6C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758465C();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801DF8();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B756DFD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997570, &qword_1B783D6C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758465C();
  sub_1B78023F8();
  sub_1B7801F78();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B756E1A0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

void sub_1B756E200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityContactDetails.init(businessChatURL:phoneNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B77FF4F8();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = (a4 + *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0) + 20));
  result = sub_1B7213740(a1, a4, &unk_1EB994C70, &qword_1B7809800);
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_1B756E344()
{
  if (*v0)
  {
    return 0x6D754E656E6F6870;
  }

  else
  {
    return 0x7373656E69737562;
  }
}

void sub_1B756E394(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7373656E69737562 && a2 == 0xEF4C525574616843;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B756E47C(uint64_t a1)
{
  v2 = sub_1B75846B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B756E4B8(uint64_t a1)
{
  v2 = sub_1B75846B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityContactDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997588, &qword_1B783D6D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75846B0();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B77FF4F8();
  sub_1B71A6A8C(&qword_1EB98F700, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1B7801F38();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
    v8[14] = 1;
    sub_1B7801EF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityContactDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v21 = &v19 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997598, &qword_1B783D6D8);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v19 - v6;
  v8 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B77FF4F8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = &v11[*(v9 + 28)];
  *v13 = 0;
  v13[1] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75846B0();
  sub_1B78023C8();
  if (!v2)
  {
    v14 = v20;
    v24 = 0;
    sub_1B71A6A8C(&qword_1EB98F730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1B7801DB8();
    sub_1B7213740(v21, v11, &unk_1EB994C70, &qword_1B7809800);
    v23 = 1;
    v16 = sub_1B7801D78();
    v18 = v17;
    (*(v14 + 8))(v7, v22);
    *v13 = v16;
    v13[1] = v18;
    sub_1B75655B0(v11, v19, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B757E3BC(v11, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityContactDetails);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage.attributionName.getter()
{
  v1 = *v0;

  return v1;
}

void RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage.attributionName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0) + 20);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0) + 20);
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage.init(attributionName:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0) + 20);
  v7 = sub_1B77FF4F8();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1B78020F8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_8:
  type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);

  return sub_1B77FF458();
}

uint64_t sub_1B756ECF8()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x7475626972747461;
  }
}

void sub_1B756ED38(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475626972747461 && a2 == 0xEF656D614E6E6F69;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B756EE1C(uint64_t a1)
{
  v2 = sub_1B7584724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B756EE58(uint64_t a1)
{
  v2 = sub_1B7584724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975A0, &qword_1B783D6E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584724();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801EF8();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
    v8[14] = 1;
    sub_1B77FF4F8();
    sub_1B71A6A8C(&qword_1EB98F700, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

void RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_1B77FF4F8();
  v19 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975B0, &qword_1B783D6E8);
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v16 - v6;
  v8 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584724();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = v8;
    v12 = v21;
    v11 = v22;
    v25 = 0;
    *v10 = sub_1B7801D78();
    v10[1] = v13;
    v17 = v10;
    v24 = 1;
    sub_1B71A6A8C(&qword_1EB98F730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v14 = v23;
    sub_1B7801E48();
    (*(v12 + 8))(v7, v14);
    v15 = v17;
    (*(v19 + 32))(v17 + *(v18 + 20), v5, v11);
    sub_1B75655B0(v15, v20, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B757E3BC(v15, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
  }
}

uint64_t sub_1B756F3AC(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (v5)
    {
      v6 = *a1 == *a2 && v4 == v5;
      if (v6 || (sub_1B78020F8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_1B77FF458();
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityImagery.init(heroImageDetails:logoUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0) + 20);
  v8 = sub_1B77FF4F8();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  sub_1B7213740(a1, a3, &qword_1EB9975B8, &qword_1B783D6F0);
  return sub_1B7213740(a2, a3 + v7, &unk_1EB994C70, &qword_1B7809800);
}

uint64_t sub_1B756F708()
{
  if (*v0)
  {
    return 0x6C72556F676F6CLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1B756F748(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001B7885040 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x6C72556F676F6CLL && a2 == 0xE700000000000000)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1B78020F8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1B756F830(uint64_t a1)
{
  v2 = sub_1B7584778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B756F86C(uint64_t a1)
{
  v2 = sub_1B7584778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityImagery.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975C0, &qword_1B783D6F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584778();
  sub_1B78023F8();
  v8[15] = 0;
  type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
  sub_1B71A6A8C(&qword_1EB9975D0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
  sub_1B7801F38();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
    v8[14] = 1;
    sub_1B77FF4F8();
    sub_1B71A6A8C(&qword_1EB98F700, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityImagery.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70, &qword_1B7809800);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975B8, &qword_1B783D6F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = &v22 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975D8, &qword_1B783D700);
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v22 - v7;
  v9 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = *(v10 + 28);
  v15 = sub_1B77FF4F8();
  (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584778();
  v16 = v27;
  sub_1B78023C8();
  if (!v16)
  {
    v27 = v14;
    v18 = v23;
    v17 = v24;
    v29 = 0;
    sub_1B71A6A8C(&qword_1EB9975E0, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage, protocol conformance descriptor for RawBankConnectData.TransactionClassificationResult.EntityImagery.HeroImage);
    sub_1B7801DB8();
    sub_1B7213740(v25, v12, &qword_1EB9975B8, &qword_1B783D6F0);
    v28 = 1;
    sub_1B71A6A8C(&qword_1EB98F730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v19 = v17;
    v20 = v26;
    sub_1B7801DB8();
    (*(v18 + 8))(v8, v20);
    sub_1B7213740(v19, &v12[v27], &unk_1EB994C70, &qword_1B7809800);
    sub_1B75655B0(v12, v22, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B757E3BC(v12, type metadata accessor for RawBankConnectData.TransactionClassificationResult.EntityImagery);
}

uint64_t sub_1B756FF80()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

void sub_1B756FFB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7570088(uint64_t a1)
{
  v2 = sub_1B75847CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75700C4(uint64_t a1)
{
  v2 = sub_1B75847CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttribute.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975E8, &qword_1B783D708);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75847CC();
  sub_1B78023F8();
  v11 = 0;
  sub_1B7801FA8();
  if (!v2)
  {
    v10 = 1;
    sub_1B7801FA8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttribute.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9975F8, &qword_1B783D710);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75847CC();
  sub_1B78023C8();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1B7801E28();
    v13 = 1;
    v10 = sub_1B7801E28();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttributes.customIconId.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_1B757051C()
{
  if (*v0)
  {
    return 0x63496D6F74737563;
  }

  else
  {
    return 0x7475626972747461;
  }
}

void sub_1B7570564(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x63496D6F74737563 && a2 == 0xEC00000064496E6FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B757064C(uint64_t a1)
{
  v2 = sub_1B7584820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7570688(uint64_t a1)
{
  v2 = sub_1B7584820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttributes.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997600, &qword_1B783D718);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  v10[3] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584820();

  sub_1B78023F8();
  v14 = v8;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997610, &qword_1B783D720);
  sub_1B75848C8(&qword_1EB997618, sub_1B7584874, MEMORY[0x1E69E6300]);
  sub_1B7801FC8();

  if (!v2)
  {
    v12 = 1;
    sub_1B7801F28();
  }

  return (*(v5 + 8))(v7, v4);
}

void RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.StyleAttributes.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997628, &qword_1B783D728);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584820();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997610, &qword_1B783D720);
    v13[15] = 0;
    sub_1B75848C8(&qword_1EB997630, sub_1B7584940, MEMORY[0x1E69E6330]);
    sub_1B7801E48();
    v9 = v14;
    v13[14] = 1;
    v10 = sub_1B7801DA8();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12 & 1;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1B7570B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1B731E934(*a1, *a2))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v7 = v5;
      }

      else
      {
        v7 = 1;
      }

      if ((v7 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.mapsCategoryIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.mapsCategoryIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.resultProviderIdentifier.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

double RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.styleAttributes.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;

  return result;
}

void RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.styleAttributes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
}

void RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.init(mapsCategoryIdentifier:resultProviderIdentifier:styleAttributes:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a4;
  v7 = a4[1];
  v8 = *(a4 + 16);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 20) = BYTE4(a3) & 1;

  *(a5 + 24) = v6;
  *(a5 + 32) = v7;
  *(a5 + 40) = v8;
}

unint64_t sub_1B7570D20()
{
  v1 = 0x747441656C797473;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1B7570D8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B7585798(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7570DB4(uint64_t a1)
{
  v2 = sub_1B7584994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7570DF0(uint64_t a1)
{
  v2 = sub_1B7584994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997640, &qword_1B783D730);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v16 = *(v1 + 16);
  v21 = *(v1 + 20);
  v7 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = v7;
  HIDWORD(v13) = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584994();
  sub_1B78023F8();
  LOBYTE(v18) = 0;
  v8 = v17;
  sub_1B7801EF8();
  if (!v8)
  {
    v10 = BYTE4(v13);
    v12 = v14;
    v11 = v15;
    LOBYTE(v18) = 1;
    v22[0] = v21;
    sub_1B7801F58();
    v18 = v11;
    v19 = v12;
    v20 = v10;
    v22[0] = 2;
    sub_1B75849E8();

    sub_1B7801F38();
  }

  return (*(v4 + 8))(v6, v3);
}

void RawBankConnectData.TransactionClassificationResult.MapsSystemDetails.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997658, &qword_1B783D738);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584994();
  sub_1B78023C8();
  if (!v2)
  {
    LOBYTE(v18) = 0;
    v9 = sub_1B7801D78();
    v11 = v10;
    v12 = v9;
    LOBYTE(v18) = 1;
    v17 = sub_1B7801DD8();
    v21 = 2;
    sub_1B7584A3C();
    sub_1B7801DB8();
    (*(v6 + 8))(v8, v5);
    v13 = v18;
    v14 = v19;
    v15 = v20;

    *a2 = v12;
    *(a2 + 8) = v11;
    v16 = BYTE4(v17);
    *(a2 + 16) = v17;
    *(a2 + 20) = v16 & 1;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.city.getter()
{
  v1 = *v0;

  return v1;
}

void RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.city.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.country.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.country.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.isoCountryCode.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.isoCountryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.postalCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.postalCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.state.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.state.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.street.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.street.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.subAdministrativeArea.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.subAdministrativeArea.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.subLocality.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.subLocality.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
}

__n128 RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.init(city:country:isoCountryCode:postalCode:state:street:subAdministrativeArea:subLocality:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  return result;
}

unint64_t sub_1B7571768()
{
  v1 = *v0;
  v2 = 2037672291;
  v3 = 0xD000000000000015;
  if (v1 != 6)
  {
    v3 = 0x6C61636F4C627573;
  }

  v4 = 0x6574617473;
  if (v1 != 4)
  {
    v4 = 0x746565727473;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x746E756F436F7369;
  if (v1 != 2)
  {
    v5 = 0x6F436C6174736F70;
  }

  if (*v0)
  {
    v2 = 0x7972746E756F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7571870@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B75858C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7571898(uint64_t a1)
{
  v2 = sub_1B7584A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75718D4(uint64_t a1)
{
  v2 = sub_1B7584A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997668, &qword_1B783D740);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v1[2];
  v18[11] = v1[3];
  v18[12] = v5;
  v6 = v1[4];
  v18[9] = v1[5];
  v18[10] = v6;
  v7 = v1[6];
  v18[7] = v1[7];
  v18[8] = v7;
  v8 = v1[9];
  v18[4] = v1[8];
  v18[5] = v8;
  v9 = v1[11];
  v18[2] = v1[10];
  v18[3] = v9;
  v10 = v1[13];
  v18[0] = v1[12];
  v18[1] = v10;
  v11 = v1[15];
  v18[6] = v1[14];
  v12 = a1[3];
  v13 = a1;
  v15 = v18 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_1B7584A90();
  sub_1B78023F8();
  v27 = 0;
  v16 = v19;
  sub_1B7801EF8();
  if (v16)
  {
    return (*(v4 + 8))(v15, v3);
  }

  v19 = v11;
  v26 = 1;
  sub_1B7801EF8();
  v25 = 2;
  sub_1B7801EF8();
  v24 = 3;
  sub_1B7801EF8();
  v23 = 4;
  sub_1B7801EF8();
  v22 = 5;
  sub_1B7801EF8();
  v21 = 6;
  sub_1B7801EF8();
  v20 = 7;
  sub_1B7801EF8();
  return (*(v4 + 8))(v15, v3);
}

uint64_t RawBankConnectData.TransactionClassificationResult.EntityPostalAddress.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997678, &unk_1B783D748);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B7584A90();
  sub_1B78023C8();
  if (v2)
  {
    v52 = v2;
    v54 = 0uLL;
    v49 = 0;
    v50 = 0;
    v55 = 0;
    v53 = 0;
    __swift_destroy_boxed_opaque_existential_1(v51);
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = v53;
    v73 = v55;
    v74 = v49;
    v75 = v50;
    v76 = v54;
    v77 = 0;
    v78 = 0;
  }

  else
  {
    LOBYTE(v64) = 0;
    v10 = sub_1B7801D78();
    v47 = v12;
    v48 = v10;
    LOBYTE(v64) = 1;
    v13 = sub_1B7801D78();
    v45 = v14;
    v46 = v13;
    LOBYTE(v64) = 2;
    v15 = sub_1B7801D78();
    v44 = v16;
    LOBYTE(v64) = 3;
    v17 = sub_1B7801D78();
    v43 = v18;
    LOBYTE(v64) = 4;
    v53 = sub_1B7801D78();
    v55 = v19;
    LOBYTE(v64) = 5;
    v20 = sub_1B7801D78();
    v50 = v21;
    LOBYTE(v64) = 6;
    v22 = sub_1B7801D78();
    v49 = v20;
    *&v54 = v22;
    *(&v54 + 1) = v23;
    v79 = 7;
    v24 = sub_1B7801D78();
    v52 = 0;
    v25 = v24;
    v26 = v8;
    v28 = v27;
    (*(v6 + 8))(v26, v5);
    v29 = v47;
    *&v56 = v48;
    *(&v56 + 1) = v47;
    v30 = v45;
    *&v57 = v46;
    *(&v57 + 1) = v45;
    *&v58 = v15;
    v41 = v17;
    v42 = v15;
    v31 = v44;
    *(&v58 + 1) = v44;
    *&v59 = v17;
    v32 = v43;
    *(&v59 + 1) = v43;
    *&v60 = v53;
    *(&v60 + 1) = v55;
    *&v61 = v20;
    v33 = v50;
    *(&v61 + 1) = v50;
    v62 = v54;
    *&v63 = v25;
    *(&v63 + 1) = v28;
    v34 = v56;
    v35 = v57;
    v36 = v59;
    a2[2] = v58;
    a2[3] = v36;
    *a2 = v34;
    a2[1] = v35;
    v37 = v60;
    v38 = v61;
    v39 = v63;
    a2[6] = v62;
    a2[7] = v39;
    a2[4] = v37;
    a2[5] = v38;
    sub_1B745E8C0(&v56, &v64);
    __swift_destroy_boxed_opaque_existential_1(v51);
    v64 = v48;
    v65 = v29;
    v66 = v46;
    v67 = v30;
    v68 = v42;
    v69 = v31;
    v70 = v41;
    v71 = v32;
    v72 = v53;
    v73 = v55;
    v74 = v49;
    v75 = v33;
    v76 = v54;
    v77 = v25;
    v78 = v28;
  }

  return sub_1B745E86C(&v64);
}

uint64_t sub_1B75720E0(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E18, &qword_1B7841B00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758AAF8();
  sub_1B78023F8();
  v9[15] = a2 & 1;
  sub_1B758BB14();
  sub_1B7801FC8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B757222C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1B77FF988();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E08, &qword_1B7841AF8);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = _s31TransactionClassificationResultV17RetryInstructionsO7DoRetryVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758ABA0();
  sub_1B78023C8();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1B71A6A8C(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1B7801E48();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1B7565394(v11, v13, _s31TransactionClassificationResultV17RetryInstructionsO7DoRetryVMa);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1B75724FC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B7572580(uint64_t a1)
{
  v2 = sub_1B758AAF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75725BC(uint64_t a1)
{
  v2 = sub_1B758AAF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75725F8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B7585B70(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1B7572660(uint64_t a1)
{
  v2 = sub_1B758ABA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B757269C(uint64_t a1)
{
  v2 = sub_1B758ABA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75726F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997E28, &qword_1B7841B08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B758ABA0();
  sub_1B78023F8();
  sub_1B77FF988();
  sub_1B71A6A8C(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.RetryInstructions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s31TransactionClassificationResultV17RetryInstructionsO7DoRetryVMa(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B78023B8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_1B7584B04();
    sub_1B7802138();
    if (v15[0])
    {
      v11 = 1;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1B78023B8();
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      sub_1B71A6A8C(&qword_1EB997688, _s31TransactionClassificationResultV17RetryInstructionsO7DoRetryVMa, ")|e7([\a");
      sub_1B7802138();
      __swift_destroy_boxed_opaque_existential_1(v15);
      v14 = sub_1B77FF988();
      (*(*(v14 - 8) + 32))(v10, v7, v14);
      v11 = 0;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958, &qword_1B7824460);
    (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_1B7565394(v10, a2, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7572B48()
{
  if (*v0)
  {
    return 0x746552746F4E6F64;
  }

  else
  {
    return 0x7972746572;
  }
}

void sub_1B7572B84(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972746572 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746552746F4E6F64 && a2 == 0xEA00000000007972)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7572C64(uint64_t a1)
{
  v2 = sub_1B7584B58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7572CA0(uint64_t a1)
{
  v2 = sub_1B7584B58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7572CDC(uint64_t a1)
{
  v2 = sub_1B7584BAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7572D18(uint64_t a1)
{
  v2 = sub_1B7584BAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B7572D54(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7466417972746572 && a2 == 0xEA00000000007265)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1B7572DE4(uint64_t a1)
{
  v2 = sub_1B7584C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7572E20(uint64_t a1)
{
  v2 = sub_1B7584C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.RetryInstructions.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997690, &qword_1B783D758);
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v23 = &v22 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997698, &qword_1B783D760);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v26 = sub_1B77FF988();
  v30 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9976A0, &qword_1B783D768);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584B58();
  sub_1B78023F8();
  sub_1B75655B0(v29, v11, type metadata accessor for RawBankConnectData.TransactionClassificationResult.RetryInstructions);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB993958, &qword_1B7824460);
  if ((*(*(v16 - 8) + 48))(v11, 1, v16) == 1)
  {
    v32 = 1;
    sub_1B7584BAC();
    v17 = v23;
    sub_1B7801ED8();
    (*(v24 + 8))(v17, v25);
  }

  else
  {
    v19 = v11;
    v20 = v26;
    (*(v30 + 32))(v8, v19, v26);
    v31 = 0;
    sub_1B7584C00();
    sub_1B7801ED8();
    sub_1B71A6A8C(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    v21 = v28;
    sub_1B7801FC8();
    (*(v27 + 8))(v6, v21);
    (*(v30 + 8))(v8, v20);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t RawBankConnectData.TransactionClassificationResult.RetryStatusIndicator.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x525F544F4E5F4F44;
  }

  else
  {
    return 0x5952544552;
  }
}

uint64_t sub_1B7573370()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B75733F8(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B757346C(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B75734FC(uint64_t *a1@<X8>)
{
  v2 = 0x5952544552;
  if (*v1)
  {
    v2 = 0x525F544F4E5F4F44;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEC00000059525445;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1B75735F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x525F544F4E5F4F44;
  }

  else
  {
    v3 = 0x5952544552;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEC00000059525445;
  }

  if (*a2)
  {
    v5 = 0x525F544F4E5F4F44;
  }

  else
  {
    v5 = 0x5952544552;
  }

  if (*a2)
  {
    v6 = 0xEC00000059525445;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

uint64_t RawBankConnectData.TransactionClassificationResult.WalletTransactionCategory.init(classificationSource:walletCategory:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = result & 1;
  a3[1] = a2;
  return result;
}

uint64_t sub_1B7573714()
{
  if (*v0)
  {
    return 0x614374656C6C6177;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_1B7573760(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001B78850A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x614374656C6C6177 && a2 == 0xEE0079726F676574)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1B78020F8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1B7573850(uint64_t a1)
{
  v2 = sub_1B7584C54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B757388C(uint64_t a1)
{
  v2 = sub_1B7584C54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.WalletTransactionCategory.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9976C0, &qword_1B783D770);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584C54();
  sub_1B78023F8();
  v15 = v8;
  v14 = 0;
  sub_1B7584CA8();
  sub_1B7801FC8();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1B7584CFC();
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RawBankConnectData.TransactionClassificationResult.WalletTransactionCategory.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9976E0, &qword_1B783D778);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584C54();
  sub_1B78023C8();
  if (!v2)
  {
    v15 = 0;
    sub_1B7584D50();
    sub_1B7801E48();
    v9 = v16;
    v13 = 1;
    sub_1B7584DA4();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7573CB0()
{
  if (*v0)
  {
    return 0x6143726F646E6576;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_1B7573CFC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001B78850A0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x6143726F646E6576 && a2 == 0xEE0079726F676574)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1B78020F8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1B7573DEC(uint64_t a1)
{
  v2 = sub_1B7584DF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7573E28(uint64_t a1)
{
  v2 = sub_1B7584DF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionClassificationResult.VendorCategorisation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9976F8, &qword_1B783D780);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584DF8();
  sub_1B78023F8();
  v15 = v8;
  v14 = 0;
  sub_1B7584CA8();
  sub_1B7801FC8();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1B7584E4C();
    sub_1B7801FC8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RawBankConnectData.TransactionClassificationResult.VendorCategorisation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997710, &qword_1B783D788);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7584DF8();
  sub_1B78023C8();
  if (!v2)
  {
    v15 = 0;
    sub_1B7584D50();
    sub_1B7801E48();
    v9 = v16;
    v13 = 1;
    sub_1B7584EA0();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RawBankConnectData.TransactionClassificationResult.VendorCategory.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x444E415F444F4F46;
  v2 = 0x4C4556415254;
  if (a1 != 6)
  {
    v2 = 0x4E574F4E4B4E55;
  }

  v3 = 0x474E4950504F4853;
  if (a1 != 4)
  {
    v3 = 0x524F50534E415254;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x48544C414548;
  if (a1 != 2)
  {
    v4 = 0x5345434956524553;
  }

  if (a1)
  {
    v1 = 5133638;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7574314()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B7574458(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B7574588(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

unint64_t sub_1B75746C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV14VendorCategoryO8rawValueAGSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B75746F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF534B4E4952445FLL;
  v4 = 0x444E415F444F4F46;
  v5 = 0xE600000000000000;
  v6 = 0x4C4556415254;
  if (v2 != 6)
  {
    v6 = 0x4E574F4E4B4E55;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x474E4950504F4853;
  if (v2 != 4)
  {
    v8 = 0x524F50534E415254;
    v7 = 0xE900000000000054;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x48544C414548;
  if (v2 != 2)
  {
    v10 = 0x5345434956524553;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 5133638;
    v3 = 0xE300000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1B75748A8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEF534B4E4952445FLL;
  v3 = 0x444E415F444F4F46;
  v4 = *a1;
  v5 = *a2;
  v6 = 0xE600000000000000;
  v7 = 0x4C4556415254;
  if (v4 != 6)
  {
    v7 = 0x4E574F4E4B4E55;
    v6 = 0xE700000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x474E4950504F4853;
  if (v4 != 4)
  {
    v9 = 0x524F50534E415254;
    v8 = 0xE900000000000054;
  }

  if (*a1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xE600000000000000;
  v11 = 0x48544C414548;
  if (v4 != 2)
  {
    v11 = 0x5345434956524553;
    v10 = 0xE800000000000000;
  }

  v12 = 0xE300000000000000;
  v13 = 5133638;
  if (!*a1)
  {
    v13 = 0x444E415F444F4F46;
    v12 = 0xEF534B4E4952445FLL;
  }

  if (*a1 <= 1u)
  {
    v11 = v13;
    v10 = v12;
  }

  if (*a1 <= 3u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  if (v4 <= 3)
  {
    v15 = v10;
  }

  else
  {
    v15 = v6;
  }

  if (*a2 > 3u)
  {
    if (*a2 > 5u)
    {
      if (v5 == 6)
      {
        v2 = 0xE600000000000000;
        if (v14 != 0x4C4556415254)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v14 != 0x4E574F4E4B4E55)
        {
          goto LABEL_41;
        }
      }
    }

    else if (v5 == 4)
    {
      v2 = 0xE800000000000000;
      if (v14 != 0x474E4950504F4853)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE900000000000054;
      if (v14 != 0x524F50534E415254)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (*a2 > 1u)
    {
      if (v5 == 2)
      {
        v2 = 0xE600000000000000;
        if (v14 != 0x48544C414548)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE800000000000000;
      v3 = 0x5345434956524553;
    }

    else if (*a2)
    {
      v2 = 0xE300000000000000;
      if (v14 != 5133638)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v14 != v3)
    {
LABEL_41:
      v16 = sub_1B78020F8();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v15 != v2)
  {
    goto LABEL_41;
  }

  v16 = 1;
LABEL_42:

  return v16 & 1;
}

uint64_t RawBankConnectData.TransactionClassificationResult.ClassificationSource.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1397768525;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1B7574B5C()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B7574BDC(uint64_t a1)
{
  sub_1B7800798();

  return result;
}

uint64_t sub_1B7574C48(uint64_t a1)
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7574CD0(unint64_t *a1@<X8>)
{
  v2 = 0x80000001B7874540;
  v3 = 1397768525;
  if (*v1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1B7574DBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1397768525;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = 0x80000001B7874540;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1397768525;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0x80000001B7874540;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();
  }

  return v8 & 1;
}

unint64_t RawBankConnectData.TransactionClassificationResult.WalletCategory.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x524546534E415254;
    v6 = 0x524F50534E415254;
    if (a1 != 10)
    {
      v6 = 0x4C4556415254;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x535255424D494552;
    v8 = 0x5345434956524553;
    if (a1 != 7)
    {
      v8 = 0x474E4950504F4853;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x444E415F444F4F46;
    v2 = 0x48544C414548;
    v3 = 0x454D4F434E49;
    if (a1 != 4)
    {
      v3 = 0x524548544FLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 5133638;
    }

    if (!a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B7575018(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1B78022F8();
  a3(v5);
  sub_1B7800798();

  return sub_1B7802368();
}

double sub_1B757509C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1B7800798();

  return result;
}

uint64_t sub_1B757510C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1B78022F8();
  a4(v6);
  sub_1B7800798();

  return sub_1B7802368();
}

unint64_t sub_1B7575174@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10FinanceKit18RawBankConnectDataO31TransactionClassificationResultV14WalletCategoryO8rawValueAGSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1B75751A4@<X0>(unint64_t *a1@<X8>)
{
  result = RawBankConnectData.TransactionClassificationResult.WalletCategory.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B7575298(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B78020F8();
  }

  return v12 & 1;
}

double RawBankConnectData.InsightsRequestBody.baaIdentification.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B7585D78(v2, v3, v4, v5, v6, v7, v8);
}

__n128 RawBankConnectData.InsightsRequestBody.baaIdentification.setter(uint64_t a1)
{
  v6 = *(a1 + 32);
  v3 = *(a1 + 48);
  sub_1B72DE64C(*v1, v1[1], v1[2], v1[3], v1[4], v1[5], v1[6]);
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v4;
  result = v6;
  *(v1 + 2) = v6;
  v1[6] = v3;
  return result;
}

uint64_t sub_1B757543C()
{
  if (*v0)
  {
    return 0x746361736E617274;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_1B7575484(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001B78850C0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEC000000736E6F69)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1B78020F8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1B7575570(uint64_t a1)
{
  v2 = sub_1B7585DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75755AC(uint64_t a1)
{
  v2 = sub_1B7585DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.InsightsRequestBody.encode(to:)(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997720, &unk_1B783D790);
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v19 = v1[7];
  v20 = v5;
  v10 = a1[3];
  v22 = a1[4];
  v23 = &v18 - v11;
  v21 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = v20;
  sub_1B7585D78(v3, v4, v6, v20, v8, v7, v9);
  sub_1B7585DD8();
  sub_1B78023F8();
  v27 = v3;
  v28 = v4;
  v29 = v6;
  v30 = v12;
  v31 = v8;
  v32 = v7;
  v33 = v9;
  v13 = v24;
  v34 = 0;
  sub_1B7585E2C();
  v14 = v23;
  v15 = v25;
  sub_1B7801F38();
  v16.n128_f64[0] = sub_1B72DE64C(v27, v28, v29, v30, v31, v32, v33);
  if (!v15)
  {
    v27 = v19;
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A690, &qword_1B78548C0);
    sub_1B7585E80(&qword_1EB997738, &qword_1EB997740, protocol conformance descriptor for RawBankConnectData.TransactionForInsights, MEMORY[0x1E69E6300]);
    sub_1B7801FC8();
  }

  return (*(v26 + 8))(v14, v13, v16);
}

uint64_t RawBankConnectData.InsightsRequestBody.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for RawBankConnectData.TransactionForInsights(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[7];
  if (*v1)
  {
    v8 = v1[5];
    v9 = v1[6];
    v10 = v1[3];
    v11 = v1[4];
    v12 = v1[1];
    v13 = v1[2];
    v18[1] = *v1;
    v18[2] = v12;
    v18[3] = v13;
    v18[4] = v10;
    v18[5] = v11;
    v18[6] = v8;
    v18[7] = v9;
    sub_1B7802318();

    RawBankConnectData.ClassificationBAAIdentification.hash(into:)(a1);
  }

  else
  {
    sub_1B7802318();
  }

  result = MEMORY[0x1B8CA6620](*(v7 + 16));
  v15 = *(v7 + 16);
  if (v15)
  {
    v16 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v17 = *(v4 + 72);
    do
    {
      sub_1B75655B0(v16, v6, type metadata accessor for RawBankConnectData.TransactionForInsights);
      RawBankConnectData.TransactionForInsights.hash(into:)(a1);
      result = sub_1B757E3BC(v6, type metadata accessor for RawBankConnectData.TransactionForInsights);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t RawBankConnectData.InsightsRequestBody.hashValue.getter()
{
  sub_1B78022F8();
  RawBankConnectData.InsightsRequestBody.hash(into:)(v1);
  return sub_1B7802368();
}

void RawBankConnectData.InsightsRequestBody.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997748, &qword_1B783D7A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7585DD8();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1B72DE64C(0, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_1B7585F3C();
    sub_1B7801DB8();
    v24 = v6;
    v20 = a2;
    v10 = v29;
    v9 = v30;
    v11 = v31;
    v12 = v32;
    v22 = v34;
    v23 = v33;
    v21 = v35;
    sub_1B72DE64C(0, 0, 0, 0, 0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A690, &qword_1B78548C0);
    v37 = 1;
    sub_1B7585E80(&qword_1EB997758, &qword_1EB997760, protocol conformance descriptor for RawBankConnectData.TransactionForInsights, MEMORY[0x1E69E6330]);
    sub_1B7801E48();
    (*(v24 + 8))(v8, v5);
    v24 = v38;
    *&v25 = v10;
    *(&v25 + 1) = v9;
    *&v26 = v11;
    v14 = v22;
    v13 = v23;
    *(&v26 + 1) = v12;
    *&v27 = v23;
    v15 = v21;
    *(&v27 + 1) = v22;
    *&v28 = v21;
    *(&v28 + 1) = v38;
    v16 = v26;
    v17 = v20;
    *v20 = v25;
    v17[1] = v16;
    v18 = v28;
    v17[2] = v27;
    v17[3] = v18;
    sub_1B7585F90(&v25, &v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v29 = v10;
    v30 = v9;
    v31 = v11;
    v32 = v12;
    v33 = v13;
    v34 = v14;
    v35 = v15;
    v36 = v24;
    sub_1B7585FC8(&v29);
  }
}

uint64_t sub_1B7575D94()
{
  sub_1B78022F8();
  RawBankConnectData.InsightsRequestBody.hash(into:)(v1);
  return sub_1B7802368();
}

uint64_t sub_1B7575DD8(uint64_t a1)
{
  sub_1B78022F8();
  RawBankConnectData.InsightsRequestBody.hash(into:)(v2);
  return sub_1B7802368();
}

double RawBankConnectData.ClassificationBAAIdentification.baaIdentification.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

__n128 RawBankConnectData.ClassificationBAAIdentification.baaIdentification.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t RawBankConnectData.ClassificationBAAIdentification.baaSalt.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void RawBankConnectData.ClassificationBAAIdentification.baaSalt.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t RawBankConnectData.ClassificationBAAIdentification.hashes.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void RawBankConnectData.ClassificationBAAIdentification.hashes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

__n128 RawBankConnectData.ClassificationBAAIdentification.init(baaIdentification:baaSalt:hashes:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  result = *a1;
  v7 = a1[1].n128_u64[0];
  *a6 = *a1;
  a6[1].n128_u64[0] = v7;
  a6[1].n128_u64[1] = a2;
  a6[2].n128_u64[0] = a3;
  a6[2].n128_u64[1] = a4;
  a6[3].n128_u64[0] = a5;
  return result;
}

uint64_t sub_1B7576000()
{
  v1 = 0x746C6153616162;
  if (*v0 != 1)
  {
    v1 = 0x736568736168;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1B757605C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B758ABF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7576084(uint64_t a1)
{
  v2 = sub_1B7585FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75760C0(uint64_t a1)
{
  v2 = sub_1B7585FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.ClassificationBAAIdentification.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997768, &qword_1B783D7A8);
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14 - v4;
  v7 = *v1;
  v6 = v1[1];
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[5];
  v14[3] = v1[4];
  v14[4] = v8;
  v14[1] = v1[6];
  v14[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7585FF8();

  sub_1B78023F8();
  v16 = v7;
  v17 = v6;
  v18 = v9;
  v19 = 0;
  sub_1B758604C();
  v11 = v14[5];
  sub_1B7801FC8();

  if (v11)
  {
    return (*(v15 + 8))(v5, v3);
  }

  v13 = v15;
  LOBYTE(v16) = 1;
  sub_1B7801F78();
  LOBYTE(v16) = 2;
  sub_1B7801F78();
  return (*(v13 + 8))(v5, v3);
}

uint64_t RawBankConnectData.ClassificationBAAIdentification.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  MEMORY[0x1B8CA6620](*(*v1 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_1B7800798();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  sub_1B7800798();
  sub_1B7800798();

  return sub_1B7800798();
}

uint64_t RawBankConnectData.ClassificationBAAIdentification.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *&v5[72] = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  sub_1B78022F8();
  RawBankConnectData.ClassificationBAAIdentification.hash(into:)(v5);
  return sub_1B7802368();
}

void RawBankConnectData.ClassificationBAAIdentification.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997780, &qword_1B783D7B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7585FF8();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = 0;
    sub_1B75860A0();
    sub_1B7801E48();
    v9 = v24;
    v21 = v25;
    v22 = v23;
    LOBYTE(v23) = 1;
    v18 = sub_1B7801DF8();
    v19 = v9;
    v20 = v10;
    LOBYTE(v23) = 2;
    v11 = sub_1B7801DF8();
    v13 = v12;
    v14 = v11;
    (*(v6 + 8))(v8, v5);
    v15 = v21;
    v16 = v18;
    v17 = v19;
    *a2 = v22;
    a2[1] = v17;
    a2[2] = v15;
    a2[3] = v16;
    a2[4] = v20;
    a2[5] = v14;
    a2[6] = v13;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1B7576740()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *&v5[72] = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  sub_1B78022F8();
  RawBankConnectData.ClassificationBAAIdentification.hash(into:)(v5);
  return sub_1B7802368();
}

uint64_t sub_1B75767A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  *&v6[72] = *v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_1B78022F8();
  RawBankConnectData.ClassificationBAAIdentification.hash(into:)(v6);
  return sub_1B7802368();
}

uint64_t RawBankConnectData.BAAIdentification.signature.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void RawBankConnectData.BAAIdentification.signature.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t RawBankConnectData.BAAIdentification.init(certificates:signature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static RawBankConnectData.BAAIdentification.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1B731D168(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1B78020F8();
}

uint64_t sub_1B7576978()
{
  if (*v0)
  {
    return 0x727574616E676973;
  }

  else
  {
    return 0x6369666974726563;
  }
}

void sub_1B75769C0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369666974726563 && a2 == 0xEC00000073657461;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1B7576AA8(uint64_t a1)
{
  v2 = sub_1B75860F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7576AE4(uint64_t a1)
{
  v2 = sub_1B75860F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.BAAIdentification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB997790, &unk_1B783D7B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75860F4();

  sub_1B78023F8();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
  sub_1B721523C(&qword_1EB98F960, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1B7801FC8();

  if (!v2)
  {
    v12 = 1;
    sub_1B7801F78();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RawBankConnectData.BAAIdentification.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  MEMORY[0x1B8CA6620](*(*v1 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_1B7800798();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return sub_1B7800798();
}

uint64_t RawBankConnectData.BAAIdentification.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_1B7800798();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  sub_1B7800798();
  return sub_1B7802368();
}

void RawBankConnectData.BAAIdentification.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9977A0, &qword_1B783D7C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75860F4();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670, &qword_1B78097E0);
    v13[15] = 0;
    sub_1B721523C(&qword_1EDAF64A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1B7801E48();
    v9 = v14;
    v13[14] = 1;
    v10 = sub_1B7801DF8();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_1B75770B8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1B731D168(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1B78020F8();
}

uint64_t sub_1B7577150(uint64_t a1)
{
  v2 = *v1;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_1B7800798();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t RawBankConnectData.TransactionForInsights.creditDebitIndicator.setter(char a1)
{
  result = type metadata accessor for RawBankConnectData.TransactionForInsights(0);
  *(v1 + *(result + 24)) = a1 & 1;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.currencyCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 28));

  return v1;
}

void RawBankConnectData.TransactionForInsights.currencyCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 32));

  return v1;
}

void RawBankConnectData.TransactionForInsights.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.institutionId.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 36));

  return v1;
}

void RawBankConnectData.TransactionForInsights.institutionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.isPiiRedacted.setter(char a1)
{
  result = type metadata accessor for RawBankConnectData.TransactionForInsights(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.merchantInformation.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 44));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_1B7205588(v20, &v19, &qword_1EB995668, &unk_1B785BD10);
}

__n128 RawBankConnectData.TransactionForInsights.merchantInformation.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 44));
  v4 = v3[7];
  v15[6] = v3[6];
  v15[7] = v4;
  v5 = v3[9];
  v15[8] = v3[8];
  v15[9] = v5;
  v6 = v3[3];
  v15[2] = v3[2];
  v15[3] = v6;
  v7 = v3[5];
  v15[4] = v3[4];
  v15[5] = v7;
  v8 = v3[1];
  v15[0] = *v3;
  v15[1] = v8;
  sub_1B7205418(v15, &qword_1EB995668, &unk_1B785BD10);
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v10;
  v11 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v11;
  v12 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v14;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.originalDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 48));

  return v1;
}

void RawBankConnectData.TransactionForInsights.originalDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 48));

  *v5 = a1;
  v5[1] = a2;
}

double RawBankConnectData.TransactionForInsights.otherTransactionLocations.getter()
{
  type metadata accessor for RawBankConnectData.TransactionForInsights(0);

  return result;
}

void RawBankConnectData.TransactionForInsights.otherTransactionLocations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 52);

  *(v1 + v3) = a1;
}

double RawBankConnectData.TransactionForInsights.proprietaryBankTransactionCode.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_1B7586148(v4, v5, v6, v7);
}

__n128 RawBankConnectData.TransactionForInsights.proprietaryBankTransactionCode.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 56));
  sub_1B74204FC(*v3, v3[1], v3[2], v3[3]);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v5;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.status.setter(char a1)
{
  result = type metadata accessor for RawBankConnectData.TransactionForInsights(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.transactionId.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 64));

  return v1;
}

void RawBankConnectData.TransactionForInsights.transactionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawBankConnectData.TransactionForInsights(0) + 64));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t RawBankConnectData.TransactionForInsights.transactionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RawBankConnectData.TransactionForInsights(0);
  *a1 = *(v1 + *(result + 72));
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.transactionType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RawBankConnectData.TransactionForInsights(0);
  *(v1 + *(result + 72)) = v2;
  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.init(attemptCount:applePayDetails:creditDebitIndicator:currencyCode:description:institutionId:isPiiRedacted:merchantInformation:originalDescription:otherTransactionLocations:proprietaryBankTransactionCode:status:transactionId:transactionTimestamp:transactionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, __int128 *a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  v65 = a12[6];
  v66 = a12[7];
  v67 = a12[8];
  v68 = a12[9];
  v61 = a12[2];
  v62 = a12[3];
  v63 = a12[4];
  v64 = a12[5];
  v59 = *a12;
  v60 = a12[1];
  v58 = *a21;
  v24 = type metadata accessor for RawBankConnectData.TransactionForInsights(0);
  v25 = v24[5];
  v26 = type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0);
  v27 = a3 & 1;
  v56 = a16[1];
  v57 = *a16;
  (*(*(v26 - 8) + 56))(&a9[v25], 1, 1, v26);
  v28 = &a9[v24[11]];
  sub_1B7484FC0(v69);
  v29 = v69[7];
  *(v28 + 6) = v69[6];
  *(v28 + 7) = v29;
  v30 = v69[9];
  *(v28 + 8) = v69[8];
  *(v28 + 9) = v30;
  v31 = v69[3];
  *(v28 + 2) = v69[2];
  *(v28 + 3) = v31;
  v32 = v69[5];
  *(v28 + 4) = v69[4];
  *(v28 + 5) = v32;
  v33 = v69[1];
  *v28 = v69[0];
  *(v28 + 1) = v33;
  v34 = v24[13];
  v35 = &a9[v24[14]];
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v36 = v24[15];
  v37 = v24[17];
  v38 = sub_1B77FF988();
  (*(*(v38 - 8) + 56))(&a9[v37], 1, 1, v38);
  *a9 = a1;
  sub_1B7213740(a2, &a9[v25], &qword_1EB9977A8, &qword_1B783D7D0);
  a9[v24[6]] = v27;
  v39 = &a9[v24[7]];
  *v39 = a4;
  *(v39 + 1) = a5;
  v40 = &a9[v24[8]];
  *v40 = a6;
  *(v40 + 1) = a7;
  v41 = &a9[v24[9]];
  *v41 = a8;
  *(v41 + 1) = a10;
  a9[v24[10]] = a11;
  v42 = *(v28 + 7);
  v70[6] = *(v28 + 6);
  v70[7] = v42;
  v43 = *(v28 + 9);
  v70[8] = *(v28 + 8);
  v70[9] = v43;
  v44 = *(v28 + 3);
  v70[2] = *(v28 + 2);
  v70[3] = v44;
  v45 = *(v28 + 5);
  v70[4] = *(v28 + 4);
  v70[5] = v45;
  v46 = *(v28 + 1);
  v70[0] = *v28;
  v70[1] = v46;
  sub_1B7205418(v70, &qword_1EB995668, &unk_1B785BD10);
  *(v28 + 6) = v65;
  *(v28 + 7) = v66;
  *(v28 + 8) = v67;
  *(v28 + 9) = v68;
  *(v28 + 2) = v61;
  *(v28 + 3) = v62;
  *(v28 + 4) = v63;
  *(v28 + 5) = v64;
  *v28 = v59;
  *(v28 + 1) = v60;
  v47 = &a9[v24[12]];
  *v47 = a13;
  *(v47 + 1) = a14;
  *&a9[v34] = a15;
  sub_1B74204FC(*v35, v35[1], v35[2], v35[3]);
  *v35 = v57;
  *(v35 + 1) = v56;
  a9[v36] = a17;
  v48 = &a9[v24[16]];
  *v48 = a18;
  *(v48 + 1) = a19;
  result = sub_1B7213740(a20, &a9[v37], &qword_1EB98EBD0, &unk_1B7809780);
  a9[v24[18]] = v58;
  return result;
}

unint64_t sub_1B7578064(char a1)
{
  result = 0x4374706D65747461;
  switch(a1)
  {
    case 1:
      result = 0x796150656C707061;
      break;
    case 2:
    case 13:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x79636E6572727563;
      break;
    case 4:
      result = 0x7470697263736564;
      break;
    case 5:
      result = 0x7475746974736E69;
      break;
    case 6:
      result = 0x6465526969507369;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0x737574617473;
      break;
    case 12:
      result = 0x746361736E617274;
      break;
    case 14:
      result = 0x746361736E617274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B7578244@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B758AD14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B7578278(uint64_t a1)
{
  v2 = sub_1B75861AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75782B4(uint64_t a1)
{
  v2 = sub_1B75861AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.TransactionForInsights.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9977B0, &qword_1B783D7D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75861AC();
  sub_1B78023F8();
  LOBYTE(v44[0]) = 0;
  sub_1B7801FA8();
  if (!v2)
  {
    v9 = type metadata accessor for RawBankConnectData.TransactionForInsights(0);
    LOBYTE(v44[0]) = 1;
    type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0);
    sub_1B71A6A8C(&qword_1EB9977C0, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails, protocol conformance descriptor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
    sub_1B7801F38();
    LOBYTE(v44[0]) = *(v3 + v9[6]);
    LOBYTE(v34) = 2;
    sub_1B7586200();
    sub_1B7801FC8();
    LOBYTE(v44[0]) = 3;
    sub_1B7801F78();
    LOBYTE(v44[0]) = 4;
    sub_1B7801F78();
    LOBYTE(v44[0]) = 5;
    sub_1B7801F78();
    v53[0] = 6;
    sub_1B7801F88();
    v10 = (v3 + v9[11]);
    v11 = v10[7];
    v12 = v10[5];
    v49 = v10[6];
    v50 = v11;
    v13 = v10[7];
    v14 = v10[9];
    v51 = v10[8];
    v52 = v14;
    v15 = v10[3];
    v16 = v10[1];
    v45 = v10[2];
    v46 = v15;
    v17 = v10[3];
    v18 = v10[5];
    v47 = v10[4];
    v48 = v18;
    v19 = v10[1];
    v44[0] = *v10;
    v44[1] = v19;
    v40 = v49;
    v41 = v13;
    v20 = v10[9];
    v42 = v51;
    v43 = v20;
    v36 = v45;
    v37 = v17;
    v38 = v47;
    v39 = v12;
    v34 = v44[0];
    v35 = v16;
    v33 = 7;
    sub_1B7205588(v44, v32, &qword_1EB995668, &unk_1B785BD10);
    sub_1B7586254();
    sub_1B7801F38();
    v32[6] = v40;
    v32[7] = v41;
    v32[8] = v42;
    v32[9] = v43;
    v32[2] = v36;
    v32[3] = v37;
    v32[4] = v38;
    v32[5] = v39;
    v32[0] = v34;
    v32[1] = v35;
    sub_1B7205418(v32, &qword_1EB995668, &unk_1B785BD10);
    LOBYTE(v27) = 8;
    sub_1B7801F78();
    v27 = *(v3 + v9[13]);
    v31 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9977D8, &qword_1B783D7E0);
    sub_1B75862A8(&qword_1EB9977E0, sub_1B7584410, MEMORY[0x1E69E6300]);
    sub_1B7801F38();
    v21 = (v3 + v9[14]);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v27 = *v21;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    v31 = 10;
    sub_1B7586148(v27, v22, v23, v24);
    sub_1B7586320();
    sub_1B7801F38();
    sub_1B74204FC(v27, v28, v29, v30);
    LOBYTE(v27) = *(v3 + v9[15]);
    v31 = 11;
    sub_1B7586374();
    sub_1B7801F38();
    LOBYTE(v27) = 12;
    sub_1B7801F78();
    LOBYTE(v27) = 13;
    sub_1B77FF988();
    sub_1B71A6A8C(&qword_1EDAF65F0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B7801F38();
    LOBYTE(v27) = *(v3 + v9[18]);
    v31 = 14;
    sub_1B75863C8();
    sub_1B7801FC8();
  }

  return (*(v6 + 8))(v8, v5);
}

double RawBankConnectData.TransactionForInsights.hash(into:)(uint64_t a1)
{
  v3 = sub_1B77FF988();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v45 - v6;
  v7 = type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9977A8, &qword_1B783D7D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  MEMORY[0x1B8CA6620](*v1);
  v14 = type metadata accessor for RawBankConnectData.TransactionForInsights(0);
  v49 = v1;
  v50 = v14;
  sub_1B7205588(v1 + *(v14 + 20), v13, &qword_1EB9977A8, &qword_1B783D7D0);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    sub_1B7565394(v13, v10, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
    sub_1B7802318();
    RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails.hash(into:)(a1);
    sub_1B757E3BC(v10, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
  }

  v16 = v49;
  v15 = v50;
  sub_1B7800798();

  sub_1B7800798();
  sub_1B7800798();
  sub_1B7800798();
  sub_1B7802318();
  v17 = (v16 + v15[11]);
  v18 = v17[7];
  v19 = v17[5];
  v69 = v17[6];
  v70 = v18;
  v20 = v17[7];
  v21 = v17[9];
  v71 = v17[8];
  v72 = v21;
  v22 = v17[3];
  v23 = v17[1];
  v65 = v17[2];
  v66 = v22;
  v24 = v17[3];
  v25 = v17[5];
  v67 = v17[4];
  v68 = v25;
  v26 = v17[1];
  v63 = *v17;
  v64 = v26;
  v73[6] = v69;
  v73[7] = v20;
  v27 = v17[9];
  v73[8] = v71;
  v73[9] = v27;
  v73[2] = v65;
  v73[3] = v24;
  v73[4] = v67;
  v73[5] = v19;
  v73[0] = v63;
  v73[1] = v23;
  enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0 = get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v73);
  v29 = v47;
  if (enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0 == 1)
  {
    sub_1B7802318();
  }

  else
  {
    v57 = v69;
    v58 = v70;
    v59 = v71;
    v60 = v72;
    v53 = v65;
    v54 = v66;
    v55 = v67;
    v56 = v68;
    v51 = v63;
    v52 = v64;
    sub_1B7802318();
    v61[6] = v69;
    v61[7] = v70;
    v61[8] = v71;
    v61[9] = v72;
    v61[2] = v65;
    v61[3] = v66;
    v61[4] = v67;
    v61[5] = v68;
    v61[0] = v63;
    v61[1] = v64;
    sub_1B758641C(v61, v62);
    RawBankConnectData.MerchantInformation.hash(into:)(a1);
    v62[6] = v57;
    v62[7] = v58;
    v62[8] = v59;
    v62[9] = v60;
    v62[2] = v53;
    v62[3] = v54;
    v62[4] = v55;
    v62[5] = v56;
    v62[0] = v51;
    v62[1] = v52;
    sub_1B7586478(v62);
  }

  sub_1B7800798();
  v30 = *(v16 + v15[13]);
  sub_1B7802318();
  if (v30)
  {
    sub_1B734F664(a1, v30);
  }

  v31 = (v16 + v15[14]);
  v32 = v31[1];
  if (v32)
  {
    v33 = *v31;
    v35 = v31[2];
    v34 = v31[3];
    sub_1B7802318();

    sub_1B7800798();
    sub_1B7802318();
    if (v34)
    {
      sub_1B7800798();
      v36 = v33;
      v37 = v32;
      v38 = v35;
      v39 = v34;
    }

    else
    {
      v36 = v33;
      v37 = v32;
      v38 = v35;
      v39 = 0;
    }

    sub_1B74204FC(v36, v37, v38, v39);
    v15 = v50;
  }

  else
  {
    sub_1B7802318();
  }

  v40 = *(v16 + v15[15]);
  sub_1B7802318();
  if (v40 == 5)
  {
    v41 = v48;
  }

  else
  {
    v41 = v48;
    sub_1B7800798();
  }

  sub_1B7800798();
  v42 = v46;
  sub_1B7205588(v16 + v15[17], v46, &qword_1EB98EBD0, &unk_1B7809780);
  if ((*(v29 + 48))(v42, 1, v41) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    v43 = v45;
    (*(v29 + 32))(v45, v42, v41);
    sub_1B7802318();
    sub_1B71A6A8C(&qword_1EB98EBB8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1B7800768();
    (*(v29 + 8))(v43, v41);
  }

  LOBYTE(v62[0]) = *(v16 + v15[18]);
  RawBankConnectData.Transaction.TransactionType.rawValue.getter();
  sub_1B7800798();

  return result;
}

uint64_t RawBankConnectData.TransactionForInsights.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0, &unk_1B7809780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v94 = &v91 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9977A8, &qword_1B783D7D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  *&v95 = &v91 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9977F8, &qword_1B783D7E8);
  v96 = *(v7 - 8);
  v97 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v91 - v8;
  v10 = type metadata accessor for RawBankConnectData.TransactionForInsights(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 20);
  v15 = type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails(0);
  v16 = *(*(v15 - 8) + 56);
  v102 = v14;
  v16(v13 + v14, 1, 1, v15);
  v17 = v13 + v10[11];
  sub_1B7484FC0(v129);
  v18 = v129[7];
  *(v17 + 6) = v129[6];
  *(v17 + 7) = v18;
  v19 = v129[9];
  *(v17 + 8) = v129[8];
  *(v17 + 9) = v19;
  v20 = v129[3];
  *(v17 + 2) = v129[2];
  *(v17 + 3) = v20;
  v21 = v129[5];
  *(v17 + 4) = v129[4];
  *(v17 + 5) = v21;
  v22 = v129[1];
  *v17 = v129[0];
  *(v17 + 1) = v22;
  v23 = (v13 + v10[14]);
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v100 = v23;
  v130 = v10;
  v24 = v10[17];
  v25 = sub_1B77FF988();
  v26 = *(*(v25 - 8) + 56);
  v99 = v24;
  v101 = v13;
  v26(v13 + v24, 1, 1, v25);
  v27 = a1[3];
  v98 = a1;
  v28 = a1;
  v29 = v9;
  __swift_project_boxed_opaque_existential_1(v28, v27);
  sub_1B75861AC();
  v30 = v103;
  sub_1B78023C8();
  if (v30)
  {
    v103 = v30;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
LABEL_4:
    v39 = v101;
    goto LABEL_5;
  }

  v31 = v95;
  v92 = v25;
  LOBYTE(v119) = 0;
  v32 = v97;
  v33 = sub_1B7801E28();
  v103 = 0;
  v39 = v101;
  *v101 = v33;
  LOBYTE(v119) = 1;
  sub_1B71A6A8C(&qword_1EB997800, type metadata accessor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails, protocol conformance descriptor for RawBankConnectData.TransactionForInsights.ApplePayTransactionDetails);
  v46 = v103;
  sub_1B7801DB8();
  v103 = v46;
  v47 = v96;
  if (v46)
  {
    goto LABEL_21;
  }

  sub_1B7213740(v31, v39 + v102, &qword_1EB9977A8, &qword_1B783D7D0);
  LOBYTE(v117[0]) = 2;
  sub_1B75864CC();
  v48 = v103;
  sub_1B7801E48();
  if (v48)
  {
    v103 = v48;
LABEL_21:
    (*(v47 + 8))(v29, v32);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    goto LABEL_5;
  }

  v49 = v130;
  *(v39 + v130[6]) = v119;
  LOBYTE(v119) = 3;
  v50 = sub_1B7801DF8();
  v51 = (v39 + v49[7]);
  *v51 = v50;
  v51[1] = v52;
  LOBYTE(v119) = 4;
  v53 = sub_1B7801DF8();
  v54 = (v39 + v49[8]);
  *v54 = v53;
  v54[1] = v55;
  LOBYTE(v119) = 5;
  v56 = sub_1B7801DF8();
  v57 = (v39 + v49[9]);
  *v57 = v56;
  v57[1] = v58;
  LOBYTE(v119) = 6;
  v59 = sub_1B7801E08();
  v103 = 0;
  *(v39 + v49[10]) = v59 & 1;
  v118 = 7;
  sub_1B7586520();
  v60 = v103;
  sub_1B7801DB8();
  v103 = v60;
  if (!v60)
  {
    v113 = v125;
    v114 = v126;
    v115 = v127;
    v116 = v128;
    v109 = v121;
    v110 = v122;
    v111 = v123;
    v112 = v124;
    v107 = v119;
    v108 = v120;
    v61 = *(v17 + 7);
    v117[6] = *(v17 + 6);
    v117[7] = v61;
    v62 = *(v17 + 9);
    v117[8] = *(v17 + 8);
    v117[9] = v62;
    v63 = *(v17 + 3);
    v117[2] = *(v17 + 2);
    v117[3] = v63;
    v64 = *(v17 + 5);
    v117[4] = *(v17 + 4);
    v117[5] = v64;
    v65 = *(v17 + 1);
    v117[0] = *v17;
    v117[1] = v65;
    sub_1B7205418(v117, &qword_1EB995668, &unk_1B785BD10);
    v66 = v114;
    *(v17 + 6) = v113;
    *(v17 + 7) = v66;
    v67 = v116;
    *(v17 + 8) = v115;
    *(v17 + 9) = v67;
    v68 = v110;
    *(v17 + 2) = v109;
    *(v17 + 3) = v68;
    v69 = v112;
    *(v17 + 4) = v111;
    *(v17 + 5) = v69;
    v70 = v108;
    *v17 = v107;
    *(v17 + 1) = v70;
    LOBYTE(v104) = 8;
    v71 = v103;
    v72 = sub_1B7801DF8();
    v103 = v71;
    if (!v71)
    {
      v74 = (v39 + v130[12]);
      *v74 = v72;
      v74[1] = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9977D8, &qword_1B783D7E0);
      v106 = 9;
      sub_1B75862A8(&qword_1EB997818, sub_1B75844B8, MEMORY[0x1E69E6330]);
      v75 = v103;
      sub_1B7801DB8();
      v103 = v75;
      if (v75 || (*(v101 + v130[13]) = v104, v106 = 10, sub_1B7586574(), v76 = v103, sub_1B7801DB8(), (v103 = v76) != 0) || (v77 = v100, v78 = *v100, v79 = v100[1], v80 = v100[2], v81 = v100[3], v95 = v104, v91 = v105, sub_1B74204FC(v78, v79, v80, v81), v82 = v91, *v77 = v95, *(v77 + 1) = v82, v106 = 11, sub_1B75865C8(), v83 = v103, sub_1B7801DB8(), (v103 = v83) != 0) || (*(v101 + v130[15]) = v104, LOBYTE(v104) = 12, v84 = v103, v85 = sub_1B7801DF8(), (v103 = v84) != 0))
      {
        (*(v96 + 8))(v29, v97);
        v38 = 0;
        v34 = 1;
        v35 = 1;
        v36 = 1;
        v37 = 1;
      }

      else
      {
        v87 = (v101 + v130[16]);
        *v87 = v85;
        v87[1] = v86;
        LOBYTE(v104) = 13;
        sub_1B71A6A8C(&unk_1EDAF65E0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
        v88 = v103;
        sub_1B7801DB8();
        v103 = v88;
        if (!v88)
        {
          sub_1B7213740(v94, v101 + v99, &qword_1EB98EBD0, &unk_1B7809780);
          v106 = 14;
          sub_1B758661C();
          v89 = v103;
          sub_1B7801E48();
          v103 = v89;
          if (!v89)
          {
            (*(v96 + 8))(v29, v97);
            v90 = v101;
            *(v101 + v130[18]) = v104;
            sub_1B75655B0(v90, v93, type metadata accessor for RawBankConnectData.TransactionForInsights);
            __swift_destroy_boxed_opaque_existential_1(v98);
            return sub_1B757E3BC(v90, type metadata accessor for RawBankConnectData.TransactionForInsights);
          }
        }

        (*(v96 + 8))(v29, v97);
        v34 = 1;
        v35 = 1;
        v36 = 1;
        v37 = 1;
        v38 = 1;
      }

      goto LABEL_4;
    }
  }

  (*(v47 + 8))(v29, v32);
  v37 = 0;
  v38 = 0;
  v34 = 1;
  v35 = 1;
  v36 = 1;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(v98);
  sub_1B7205418(v39 + v102, &qword_1EB9977A8, &qword_1B783D7D0);
  if (!v34)
  {
    if (!v35)
    {
      goto LABEL_7;
    }

LABEL_15:

    if (!v36)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v36)
  {
LABEL_8:
  }

LABEL_9:
  v40 = *(v17 + 7);
  v125 = *(v17 + 6);
  v126 = v40;
  v41 = *(v17 + 9);
  v127 = *(v17 + 8);
  v128 = v41;
  v42 = *(v17 + 3);
  v121 = *(v17 + 2);
  v122 = v42;
  v43 = *(v17 + 5);
  v123 = *(v17 + 4);
  v124 = v43;
  v44 = *(v17 + 1);
  v119 = *v17;
  v120 = v44;
  sub_1B7205418(&v119, &qword_1EB995668, &unk_1B785BD10);
  if (v37)
  {
  }

  sub_1B74204FC(*v100, v100[1], v100[2], v100[3]);
  if (v38)
  {
  }

  return sub_1B7205418(v39 + v99, &qword_1EB98EBD0, &unk_1B7809780);
}