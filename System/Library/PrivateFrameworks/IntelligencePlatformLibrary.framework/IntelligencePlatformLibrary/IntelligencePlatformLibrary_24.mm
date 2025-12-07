uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x64657070696853;
  switch(*v0)
  {
    case 1:
      result = 0x7961576568546E4FLL;
      break;
    case 2:
      result = OUTLINED_FUNCTION_37_19();
      break;
    case 3:
      result = 0x65726576696C6544;
      break;
    case 4:
      result = 0x656C6C65636E6143;
      break;
    case 5:
      result = 0x6575737349;
      break;
    case 6:
      result = OUTLINED_FUNCTION_36_1();
      break;
    case 7:
      result = 0x705564656B636950;
      break;
    case 8:
      result = 0x69737365636F7250;
      break;
    default:
      return result;
  }

  return result;
}

void WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x64657070696853 ? (v5 = v0 == 0xE700000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x64657070696853, 0xE700000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = v1 == 0x7961576568546E4FLL && v0 == 0xE800000000000000;
    if (v7 || (OUTLINED_FUNCTION_0_9(0x7961576568546E4FLL, 0xE800000000000000) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_37_19();
      v10 = v1 == v8 && v0 == v9;
      if (v10 || (OUTLINED_FUNCTION_0_9(v8, v9) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v11 = v1 == 0x65726576696C6544 && v0 == 0xE900000000000064;
        if (v11 || (OUTLINED_FUNCTION_0_9(0x65726576696C6544, 0xE900000000000064) & 1) != 0)
        {

          v6 = 3;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_32_22();
          v13 = v4 && v0 == 0xE900000000000064;
          if (v13 || (OUTLINED_FUNCTION_0_9(v12, 0xE900000000000064) & 1) != 0)
          {

            v6 = 4;
          }

          else
          {
            v14 = OUTLINED_FUNCTION_44_19();
            v15 = v4 && v0 == 0xE500000000000000;
            if (v15 || (OUTLINED_FUNCTION_0_9(v14, 0xE500000000000000) & 1) != 0)
            {

              v6 = 5;
            }

            else
            {
              v16 = OUTLINED_FUNCTION_36_1();
              v18 = v1 == v16 && v0 == v17;
              if (v18 || (OUTLINED_FUNCTION_0_9(v16, v17) & 1) != 0)
              {

                v6 = 6;
              }

              else
              {
                v19 = v1 == 0x705564656B636950 && v0 == 0xE800000000000000;
                if (v19 || (OUTLINED_FUNCTION_0_9(0x705564656B636950, 0xE800000000000000) & 1) != 0)
                {

                  v6 = 7;
                }

                else
                {
                  v20 = OUTLINED_FUNCTION_19_29();
                  if (v4 && v0 == v21)
                  {

                    v6 = 8;
                  }

                  else
                  {
                    v23 = OUTLINED_FUNCTION_0_9(v20, 0xEA0000000000676ELL);

                    v6 = 8;
                    if ((v23 & 1) == 0)
                    {
                      v6 = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t sub_193616004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_193616690(v13, v10);
        sub_193616690(v14, v7);
        sub_1936166F4(&qword_1EAE3F238, type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment, &protocol conformance descriptor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment);
        v16 = sub_19393C550();
        sub_19361673C(v7, type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment);
        sub_19361673C(v10, type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1936161E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_193616234()
{
  result = qword_1EAE3F1D0;
  if (!qword_1EAE3F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F1D0);
  }

  return result;
}

unint64_t sub_193616288()
{
  result = qword_1EAE3F1D8;
  if (!qword_1EAE3F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F1D8);
  }

  return result;
}

unint64_t sub_193616330()
{
  result = qword_1EAE3F1E0;
  if (!qword_1EAE3F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F1E0);
  }

  return result;
}

uint64_t sub_193616384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1936163E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0) - 8);
    v6 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    sub_1936166F4(&qword_1EAE3F230, type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment, &protocol conformance descriptor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment);
    do
    {
      result = sub_19393C540();
      v6 += v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_1936164E4()
{
  result = qword_1EAE3F1F8;
  if (!qword_1EAE3F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F1F8);
  }

  return result;
}

unint64_t sub_193616538()
{
  result = qword_1EAE3F200;
  if (!qword_1EAE3F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F200);
  }

  return result;
}

unint64_t sub_19361658C()
{
  result = qword_1EAE3F208;
  if (!qword_1EAE3F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F208);
  }

  return result;
}

unint64_t sub_1936165E4()
{
  result = qword_1EAE3F210;
  if (!qword_1EAE3F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F210);
  }

  return result;
}

unint64_t sub_19361663C()
{
  result = qword_1EAE3F218;
  if (!qword_1EAE3F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F218);
  }

  return result;
}

uint64_t sub_193616690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1936166F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19361673C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_36_19(uint64_t a1)
{

  return sub_1934486F8(a1, v1 + 384, v2, v3);
}

void sub_1936167C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v11 = sub_19393C420();
  __swift_allocate_value_buffer(v11, qword_1EAEAB4E0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v13 = *(v12 + 72);
  OUTLINED_FUNCTION_49_0();
  v14 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_24_22(v14, xmmword_1939526C0);
  *v10 = 1;
  *v9 = "orderNumber";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v16 = *(v15 + 104);
  OUTLINED_FUNCTION_2_0();
  v16();
  v17 = OUTLINED_FUNCTION_3_1(v10 + v13);
  *v18 = 2;
  v19 = OUTLINED_FUNCTION_5_4(v17, "orderDate");
  (v16)(v19);
  v20 = OUTLINED_FUNCTION_9_4((v10 + 2 * v13));
  *v20 = "merchant";
  *(v20 + 1) = 8;
  v21 = OUTLINED_FUNCTION_41(v20);
  (v16)(v21);
  OUTLINED_FUNCTION_44(3 * v13);
  OUTLINED_FUNCTION_34_8(v22);
  v24 = OUTLINED_FUNCTION_5_4(v23, "shippingFulfillments");
  (v16)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v10 + 4 * v13);
  *v26 = 5;
  *v25 = "customer";
  v25[1] = 8;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v16)(v27);
  v28 = OUTLINED_FUNCTION_44(5 * v13);
  *v29 = 6;
  *v28 = "payment";
  v28[1] = 7;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v16)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v10 + 6 * v13);
  *v32 = 7;
  v33 = OUTLINED_FUNCTION_5_4(v31, "isTrackedInWallet");
  (v16)(v33);
  OUTLINED_FUNCTION_44(7 * v13);
  OUTLINED_FUNCTION_121_1(v34);
  v36 = OUTLINED_FUNCTION_5_4(v35, "orderUpdateDate");
  (v16)(v36);
  v37 = OUTLINED_FUNCTION_3_1(&v10[v13]);
  *v38 = 9;
  v39 = OUTLINED_FUNCTION_5_4(v37, "trackedOrderIdentifier");
  (v16)(v39);
  v40 = OUTLINED_FUNCTION_44(9 * v13);
  *v41 = 10;
  *v40 = "orderStatus";
  v40[1] = 11;
  v42 = OUTLINED_FUNCTION_41(v40);
  (v16)(v42);
  v43 = OUTLINED_FUNCTION_3_1(v10 + 10 * v13);
  *v44 = 11;
  *v43 = "earliestEmailDateSent";
  v43[1] = 21;
  v45 = OUTLINED_FUNCTION_41(v43);
  (v16)(v45);
  v46 = OUTLINED_FUNCTION_3_1(v10 + 11 * v13);
  *v47 = 12;
  *v46 = "orderStatusUpdateDate";
  *(v46 + 8) = 21;
  *(v46 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v16();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193616AE4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 9:
        type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        continue;
      case 3:
        type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
        type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
        OUTLINED_FUNCTION_42_4();
        goto LABEL_11;
      case 4:
        type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
        type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
        v4 = OUTLINED_FUNCTION_42_4();
        sub_193498238(v4, v5, v6, v7, &off_1F07D8628);
        continue;
      case 5:
      case 6:
        type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
LABEL_11:
        sub_193498018();
        continue;
      case 7:
        type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
        OUTLINED_FUNCTION_113();
        sub_19393C0F0();
        continue;
      case 8:
        v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 56);
        goto LABEL_14;
      case 10:
        type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
        OUTLINED_FUNCTION_54_14();
        sub_1934982A8();
        continue;
      case 11:
        v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 68);
        goto LABEL_14;
      case 12:
        v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 72);
LABEL_14:
        OUTLINED_FUNCTION_28_18(v3);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193616CC4()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  v3 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  v4 = (v0 + v3[7]);
  v5 = v4[1];
  if (v5)
  {
    OUTLINED_FUNCTION_2_7(*v4, v5, 1);
    v2 = v1;
  }

  if (!v2)
  {
    v6 = (v0 + v3[8]);
    v7 = v6[1];
    if (!v7 || (OUTLINED_FUNCTION_2_7(*v6, v7, 2), !v1))
    {
      v8 = OUTLINED_FUNCTION_79();
      sub_193616F54(v8, v9, v10, v11, v12, v13, v14, v15, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10]);
      if (!v1)
      {
        if (*(*(v0 + v3[10]) + 16))
        {
          type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
          OUTLINED_FUNCTION_78_1();
          sub_193451CFC(v16, v17, v18, v19, v20, v21);
        }

        memcpy(__dst, (v0 + v3[11]), 0x108uLL);
        if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) != 1)
        {
          memcpy(v36, __dst, sizeof(v36));
          OUTLINED_FUNCTION_78_1();
          sub_193447600();
        }

        v22 = v0 + v3[12];
        v23 = *(v22 + 32);
        if (v23)
        {
          v24 = *(v22 + 16);
          __dst[0] = *v22;
          __dst[1] = v24;
          *&__dst[2] = v23;
          OUTLINED_FUNCTION_78_1();
          sub_193447600();
        }

        if (*(v0 + v3[13]) != 2)
        {
          sub_19393C2E0();
        }

        OUTLINED_FUNCTION_79();
        sub_1936170AC();
        v25 = (v0 + v3[15]);
        v26 = v25[1];
        if (v26)
        {
          OUTLINED_FUNCTION_2_7(*v25, v26, 9);
        }

        v27 = v0 + v3[16];
        if ((*(v27 + 9) & 1) == 0)
        {
          v28 = *(v27 + 8);
          *&__dst[0] = *v27;
          BYTE8(__dst[0]) = v28 & 1;
          OUTLINED_FUNCTION_78_1();
          sub_193447324(v29, v30, v31, v32, v33, v34);
        }

        OUTLINED_FUNCTION_79();
        sub_193617BE4();
        OUTLINED_FUNCTION_79();
        sub_193617D2C();
      }
    }
  }
}

void sub_193616F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F1A0, &qword_193973038);
  OUTLINED_FUNCTION_47(v26);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_1();
  v32 = OUTLINED_FUNCTION_15_9();
  v33 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v32);
  sub_1934486F8(v25 + *(v33 + 36), v29, &qword_1EAE3F1A0, &qword_193973038);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_19344E6DC(v29, &qword_1EAE3F1A0, &qword_193973038);
  }

  else
  {
    sub_193616384(v29, v20);
    sub_193447600();
    sub_193613CA0(v20);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_1936170AC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_9();
  v7 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  OUTLINED_FUNCTION_80_15(*(v12 + 56));
  v13 = OUTLINED_FUNCTION_173();
  if (__swift_getEnumTagSinglePayload(v13, v14, v7) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_243();
    v16(v15);
    OUTLINED_FUNCTION_231(v11, 8);
    v17 = OUTLINED_FUNCTION_78();
    v18(v17);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_19361725C()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB4F8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "Unknown";
  *(v0 + 8) = 7;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "Open";
  v8[1] = 4;
  v10 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 2;
  *v11 = "Processing";
  v11[1] = 10;
  v13 = OUTLINED_FUNCTION_1_3(v11);
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_9_4((v1 + 3 * v4));
  *v14 = "Cancelled";
  *(v14 + 1) = 9;
  v15 = OUTLINED_FUNCTION_1_3(v14);
  (v7)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v17 = 4;
  *v16 = "Issue";
  *(v16 + 8) = 5;
  *(v16 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_193617470()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB510);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v46 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v46, xmmword_193952670);
  *v1 = 1;
  *v0 = "status";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_29_1();
  *v7 = "trackingNumber";
  v7[1] = 14;
  v8 = OUTLINED_FUNCTION_1_3(v7);
  (v6)(v8);
  v9 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  *v9 = "carrierName";
  *(v9 + 1) = 11;
  v10 = OUTLINED_FUNCTION_1_3(v9);
  (v6)(v10);
  OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  OUTLINED_FUNCTION_34_8(v11);
  *v12 = "shippingMethod";
  v12[1] = 14;
  v13 = OUTLINED_FUNCTION_1_3(v12);
  (v6)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v15 = 5;
  *v14 = "shippingDate";
  v14[1] = 12;
  v16 = OUTLINED_FUNCTION_1_3(v14);
  (v6)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 5 * v4);
  *v18 = 6;
  *v17 = "shippingTime";
  v17[1] = 12;
  v19 = OUTLINED_FUNCTION_1_3(v17);
  (v6)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v21 = 7;
  *v20 = "estimatedDeliveryStartDate";
  v20[1] = 26;
  v22 = OUTLINED_FUNCTION_1_3(v20);
  (v6)(v22);
  OUTLINED_FUNCTION_3_1(v1 + 7 * v4);
  OUTLINED_FUNCTION_121_1(v23);
  *v24 = "estimatedDeliveryStartTime";
  v24[1] = 26;
  v25 = OUTLINED_FUNCTION_1_3(v24);
  (v6)(v25);
  v26 = OUTLINED_FUNCTION_3_1(&v1[v4]);
  *v27 = 9;
  *v26 = "estimatedDeliveryEndDate";
  v26[1] = 24;
  v28 = OUTLINED_FUNCTION_1_3(v26);
  (v6)(v28);
  v29 = OUTLINED_FUNCTION_3_1(v1 + 9 * v4);
  *v30 = 10;
  *v29 = "estimatedDeliveryEndTime";
  v29[1] = 24;
  v31 = OUTLINED_FUNCTION_1_3(v29);
  (v6)(v31);
  v32 = OUTLINED_FUNCTION_3_1(v1 + 10 * v4);
  *v33 = 11;
  *v32 = "deliveryDate";
  v32[1] = 12;
  v34 = OUTLINED_FUNCTION_1_3(v32);
  (v6)(v34);
  v35 = OUTLINED_FUNCTION_3_1(v1 + 11 * v4);
  *v36 = 12;
  *v35 = "deliveryTime";
  v35[1] = 12;
  v37 = OUTLINED_FUNCTION_1_3(v35);
  (v6)(v37);
  v38 = OUTLINED_FUNCTION_3_1(v1 + 12 * v4);
  *v39 = 13;
  *v38 = "shippingRecipient";
  v38[1] = 17;
  v40 = OUTLINED_FUNCTION_1_3(v38);
  (v6)(v40);
  v41 = OUTLINED_FUNCTION_3_1(v1 + 13 * v4);
  *v42 = 14;
  *v41 = "fulfillmentCreationDate";
  v41[1] = 23;
  v43 = OUTLINED_FUNCTION_1_3(v41);
  (v6)(v43);
  v44 = OUTLINED_FUNCTION_3_1(v1 + 14 * v4);
  *v45 = 15;
  *v44 = "fulfillmentUpdateDate";
  *(v44 + 8) = 21;
  *(v44 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193617838()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1934982A8();
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
        OUTLINED_FUNCTION_113();
        sub_19393C200();
        break;
      case 13:
        OUTLINED_FUNCTION_54_14();
        sub_193498018();
        break;
      case 14:
        v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0) + 68);
        goto LABEL_9;
      case 15:
        v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0) + 72);
LABEL_9:
        OUTLINED_FUNCTION_28_18(v3);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_27();
}

void sub_193617980()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  if ((*(v0 + 9) & 1) == 0)
  {
    v3 = *(v0 + 8);
    __dst[0] = *v0;
    LOBYTE(__dst[1]) = v3 & 1;
    OUTLINED_FUNCTION_78_1();
    sub_193447324(v4, v5, v6, v7, v8, v9);
    v2 = v1;
  }

  if (!v2)
  {
    v10 = *(v0 + 24);
    if (!v10 || (OUTLINED_FUNCTION_2_7(*(v0 + 16), v10, 2), !v1))
    {
      v11 = *(v0 + 40);
      if (!v11 || (OUTLINED_FUNCTION_2_7(*(v0 + 32), v11, 3), !v1))
      {
        v12 = *(v0 + 56);
        if (!v12 || (OUTLINED_FUNCTION_2_7(*(v0 + 48), v12, 4), !v1))
        {
          v13 = *(v0 + 72);
          if (!v13 || (OUTLINED_FUNCTION_2_7(*(v0 + 64), v13, 5), !v1))
          {
            v14 = *(v0 + 88);
            if (!v14 || (OUTLINED_FUNCTION_2_7(*(v0 + 80), v14, 6), !v1))
            {
              v15 = *(v0 + 104);
              if (!v15 || (OUTLINED_FUNCTION_2_7(*(v0 + 96), v15, 7), !v1))
              {
                v16 = *(v0 + 120);
                if (!v16 || (OUTLINED_FUNCTION_2_7(*(v0 + 112), v16, 8), !v1))
                {
                  v17 = *(v0 + 136);
                  if (!v17 || (OUTLINED_FUNCTION_2_7(*(v0 + 128), v17, 9), !v1))
                  {
                    v18 = *(v0 + 152);
                    if (!v18 || (OUTLINED_FUNCTION_2_7(*(v0 + 144), v18, 10), !v1))
                    {
                      v19 = *(v0 + 168);
                      if (!v19 || (OUTLINED_FUNCTION_2_7(*(v0 + 160), v19, 11), !v1))
                      {
                        v20 = *(v0 + 184);
                        if (!v20 || (OUTLINED_FUNCTION_2_7(*(v0 + 176), v20, 12), !v1))
                        {
                          memcpy(__dst, (v0 + 192), sizeof(__dst));
                          if (get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(__dst) == 1 || (memcpy(v21, __dst, sizeof(v21)), OUTLINED_FUNCTION_78_1(), sub_193447600(), !v1))
                          {
                            OUTLINED_FUNCTION_79();
                            sub_193617BE4();
                            if (!v1)
                            {
                              OUTLINED_FUNCTION_79();
                              sub_193617D2C();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_193617BE4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41_19(v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_9();
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v12 = v1(0);
  OUTLINED_FUNCTION_79_14(*(v12 + 68));
  v13 = OUTLINED_FUNCTION_173();
  if (__swift_getEnumTagSinglePayload(v13, v14, v10) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_50_16();
    v16(v15);
    OUTLINED_FUNCTION_40_19();
    v17 = OUTLINED_FUNCTION_77_13();
    v18(v17);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193617D2C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41_19(v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_9();
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_1();
  v12 = v1(0);
  OUTLINED_FUNCTION_79_14(*(v12 + 72));
  v13 = OUTLINED_FUNCTION_173();
  if (__swift_getEnumTagSinglePayload(v13, v14, v10) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_50_16();
    v16(v15);
    OUTLINED_FUNCTION_40_19();
    v17 = OUTLINED_FUNCTION_77_13();
    v18(v17);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

void sub_193617ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v11 = sub_19393C420();
  __swift_allocate_value_buffer(v11, qword_1EAEAB528);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v13 = *(v12 + 72);
  OUTLINED_FUNCTION_49_0();
  v14 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_24_22(v14, xmmword_193952660);
  *v10 = 0;
  *v9 = "Unknown";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v16 = *(v15 + 104);
  OUTLINED_FUNCTION_2_0();
  v16();
  v17 = OUTLINED_FUNCTION_3_1(v10 + v13);
  *v18 = 1;
  *v17 = "Shipped";
  v17[1] = 7;
  v19 = OUTLINED_FUNCTION_41(v17);
  (v16)(v19);
  v20 = OUTLINED_FUNCTION_3_1(v10 + 2 * v13);
  *v21 = 2;
  v22 = OUTLINED_FUNCTION_5_4(v20, "OnTheWay");
  (v16)(v22);
  v23 = OUTLINED_FUNCTION_9_4((v10 + 3 * v13));
  v24 = OUTLINED_FUNCTION_5_4(v23, "OutForDelivery");
  (v16)(v24);
  OUTLINED_FUNCTION_3_1(v10 + 4 * v13);
  OUTLINED_FUNCTION_34_8(v25);
  *v26 = "Delivered";
  v26[1] = 9;
  v27 = OUTLINED_FUNCTION_41(v26);
  (v16)(v27);
  v28 = OUTLINED_FUNCTION_44(5 * v13);
  *v29 = 5;
  *v28 = "Cancelled";
  v28[1] = 9;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v16)(v30);
  v31 = (v10 + 6 * v13);
  v32 = (v31 + dword_1EAEAB560);
  *v31 = 6;
  *v32 = "Issue";
  v32[1] = 5;
  v33 = OUTLINED_FUNCTION_41(v32);
  (v16)(v33);
  v34 = OUTLINED_FUNCTION_44(7 * v13);
  *v35 = 7;
  *v34 = "ReadyForPickup";
  v34[1] = 14;
  v36 = OUTLINED_FUNCTION_41(v34);
  (v16)(v36);
  OUTLINED_FUNCTION_3_1(&v10[v13]);
  OUTLINED_FUNCTION_121_1(v37);
  v39 = OUTLINED_FUNCTION_5_4(v38, "PickedUp");
  (v16)(v39);
  v40 = OUTLINED_FUNCTION_44(9 * v13);
  *v41 = 9;
  *v40 = "Processing";
  *(v40 + 8) = 10;
  *(v40 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v16();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_1936181C4()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB540);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_34_24("displayName");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_48(v8, "domainName");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "displayNameUpdateDate");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193618318()
{
  OUTLINED_FUNCTION_53_4();
  while (1)
  {
    result = OUTLINED_FUNCTION_124();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v3 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
      OUTLINED_FUNCTION_28_18(*(v3 + 24));
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_113();
      sub_19393C200();
    }
  }

  return result;
}

void sub_1936183A4()
{
  OUTLINED_FUNCTION_75_3();
  v2 = v0[1];
  if (v2)
  {
    OUTLINED_FUNCTION_181(*v0, v2, 1);
  }

  if (!v1)
  {
    v3 = v0[3];
    if (v3)
    {
      OUTLINED_FUNCTION_181(v0[2], v3, 2);
    }

    sub_193618414();
  }
}

void sub_193618414()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_77(v1, v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_47(v5);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_9();
  v7 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  OUTLINED_FUNCTION_80_15(*(v12 + 24));
  v13 = OUTLINED_FUNCTION_173();
  if (__swift_getEnumTagSinglePayload(v13, v14, v7) == 1)
  {
    sub_19344E6DC(v0, &qword_1EAE3A9E8, &qword_19394F800);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_243();
    v16(v15);
    OUTLINED_FUNCTION_231(v11, 3);
    v17 = OUTLINED_FUNCTION_78();
    v18(v17);
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_27();
}

uint64_t sub_193618658(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_19393C420();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8) - 8);
  v7 = *(*v6 + 72);
  OUTLINED_FUNCTION_49_0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1939526E0;
  v9 = a2 + v8;
  v10 = a2 + v8 + v6[14];
  *(a2 + v8) = 1;
  *v10 = "fullName";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v12 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v14 = *(v13 + 104);
  v14(v10, v11, v12);
  v15 = OUTLINED_FUNCTION_61_14(&v9[v7]);
  *v16 = 2;
  *v15 = "phoneNumber";
  v15[1] = 11;
  v17 = OUTLINED_FUNCTION_28_17(v15);
  (v14)(v17);
  v18 = OUTLINED_FUNCTION_61_14(&v9[2 * v7]);
  *v19 = 3;
  *v18 = "emailAddress";
  v18[1] = 12;
  v20 = OUTLINED_FUNCTION_28_17(v18);
  (v14)(v20);
  v21 = v6[14];
  v22 = &v9[3 * v7];
  *v22 = 4;
  v23 = &v22[v21];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = OUTLINED_FUNCTION_28_17(&v22[v21]);
  (v14)(v24);
  v25 = OUTLINED_FUNCTION_61_14(&v9[4 * v7]);
  *v26 = 5;
  *v25 = "givenName";
  v25[1] = 9;
  v27 = OUTLINED_FUNCTION_28_17(v25);
  (v14)(v27);
  v28 = OUTLINED_FUNCTION_61_14(&v9[5 * v7]);
  *v29 = 6;
  *v28 = "familyName";
  *(v28 + 8) = 10;
  *(v28 + 16) = 2;
  (v14)();
  return sub_19393C410();
}

void sub_1936188D4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 3:
      case 5:
      case 6:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 4:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_193618990()
{
  v2 = v1;
  OUTLINED_FUNCTION_22_0();
  v3 = v0[1];
  v4 = v0[2];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[5];
  v10 = v0[29];
  v13 = v0[30];
  v8 = v0[31];
  v9 = v0[32];
  if (v3)
  {
    OUTLINED_FUNCTION_2_7(*v0, v3, 1);
    v2 = v1;
  }

  if (!v2)
  {
    if (!v6 || (OUTLINED_FUNCTION_2_7(v4, v6, 2), !v1))
    {
      if (!v7 || (OUTLINED_FUNCTION_2_7(v5, v7, 3), !v1))
      {
        memcpy(__dst, v0 + 6, 0xB8uLL);
        if (sub_1934754E0(__dst) == 1 || (memcpy(v11, __dst, sizeof(v11)), OUTLINED_FUNCTION_78_1(), sub_193447600(), !v1))
        {
          if (!v13 || (OUTLINED_FUNCTION_2_7(v10, v13, 5), !v1))
          {
            if (v9)
            {
              OUTLINED_FUNCTION_2_7(v8, v9, 6);
            }
          }
        }
      }
    }
  }
}

void sub_193618B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_115();
  v11 = sub_19393C420();
  __swift_allocate_value_buffer(v11, qword_1EAEAB588);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v13 = *(v12 + 72);
  OUTLINED_FUNCTION_49_0();
  v14 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_24_22(v14, xmmword_1939526C0);
  *v10 = 1;
  *v9 = "street";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v16 = *(v15 + 104);
  OUTLINED_FUNCTION_2_0();
  v16();
  v17 = OUTLINED_FUNCTION_3_1(v10 + v13);
  *v18 = 2;
  *v17 = "city";
  v17[1] = 4;
  v19 = OUTLINED_FUNCTION_41(v17);
  (v16)(v19);
  v20 = OUTLINED_FUNCTION_9_4((v10 + 2 * v13));
  *v20 = "state";
  *(v20 + 1) = 5;
  v21 = OUTLINED_FUNCTION_41(v20);
  (v16)(v21);
  v22 = OUTLINED_FUNCTION_44(3 * v13);
  *v23 = 4;
  v24 = OUTLINED_FUNCTION_5_4(v22, "postalCode");
  (v16)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v10 + 4 * v13);
  *v26 = 5;
  *v25 = "country";
  v25[1] = 7;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v16)(v27);
  v28 = OUTLINED_FUNCTION_44(5 * v13);
  *v29 = 7;
  *v28 = "addressLines";
  v28[1] = 12;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v16)(v30);
  OUTLINED_FUNCTION_3_1(v10 + 6 * v13);
  OUTLINED_FUNCTION_121_1(v31);
  v33 = OUTLINED_FUNCTION_5_4(v32, "locality");
  (v16)(v33);
  v34 = OUTLINED_FUNCTION_44(7 * v13);
  *v35 = 9;
  *v34 = "subLocality";
  v34[1] = 11;
  v36 = OUTLINED_FUNCTION_41(v34);
  (v16)(v36);
  v37 = OUTLINED_FUNCTION_3_1(&v10[v13]);
  *v38 = 10;
  v39 = OUTLINED_FUNCTION_5_4(v37, "administrativeArea");
  (v16)(v39);
  v40 = OUTLINED_FUNCTION_44(9 * v13);
  *v41 = 11;
  v42 = OUTLINED_FUNCTION_5_4(v40, "subAdministrativeArea");
  (v16)(v42);
  v43 = OUTLINED_FUNCTION_3_1(v10 + 10 * v13);
  *v44 = 12;
  *v43 = "countryCode";
  v43[1] = 11;
  v45 = OUTLINED_FUNCTION_41(v43);
  (v16)(v45);
  v46 = OUTLINED_FUNCTION_3_1(v10 + 11 * v13);
  *v47 = 13;
  *v46 = "rawAddress";
  *(v46 + 8) = 10;
  *(v46 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v16();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_193618E30()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 7:
        OUTLINED_FUNCTION_98();
        sub_19393C1B0();
        break;
      default:
        continue;
    }
  }
}

void sub_193618F50()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB5A0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_34_24("totalAmount");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_48(v8, "totalIsoCurrencyCode");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "transactions");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

uint64_t sub_1936190A4()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    result = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_62();
      sub_193498238(v3, v4, v5, v6, v7);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_98();
      sub_19393C200();
    }
  }

  return result;
}

void sub_193619134()
{
  OUTLINED_FUNCTION_75_3();
  v4 = v3[1];
  v5 = v3[2];
  v7 = v3[3];
  v6 = v3[4];
  if (v4)
  {
    OUTLINED_FUNCTION_181(*v3, v4, 1);
  }

  if (!v1)
  {
    if (v7)
    {
      OUTLINED_FUNCTION_181(v5, v7, 2);
    }

    if (*(v6 + 16))
    {
      sub_193451CFC(v6, 3, v2, &type metadata for WalletPaymentsCommerceTrackedOrder.Transaction, v0, &off_1F07D8770);
    }
  }
}

void sub_193619230()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB5B8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_9_8(v5, xmmword_19394FBC0);
  *v1 = 1;
  *v0 = "amount";
  *(v0 + 8) = 6;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_29_1();
  *v8 = "isoCurrencyCode";
  v8[1] = 15;
  v9 = OUTLINED_FUNCTION_1_3(v8);
  (v7)(v9);
  v10 = OUTLINED_FUNCTION_9_4((v1 + 2 * v4));
  *v10 = "paymentMethod";
  *(v10 + 1) = 13;
  v11 = OUTLINED_FUNCTION_1_3(v10);
  (v7)(v11);
  OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  OUTLINED_FUNCTION_34_8(v12);
  *v13 = "transactionIdenifier";
  *(v13 + 8) = 20;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void sub_1936193E0()
{
  OUTLINED_FUNCTION_21_0();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_165_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
      case 4:
        OUTLINED_FUNCTION_98();
        sub_19393C200();
        break;
      case 3:
        OUTLINED_FUNCTION_62();
        sub_193498018();
        break;
      default:
        continue;
    }
  }
}

void sub_19361948C()
{
  OUTLINED_FUNCTION_75_3();
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = v0[10];
  v7 = v0[9];
  if (v2)
  {
    OUTLINED_FUNCTION_181(*v0, v2, 1);
  }

  if (!v1)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_181(v3, v4, 2);
    }

    if (v5 != 1)
    {
      sub_193447600();
    }

    if (v6)
    {
      OUTLINED_FUNCTION_181(v7, v6, 4);
    }
  }
}

void sub_1936195D8()
{
  OUTLINED_FUNCTION_115();
  v1 = sub_19393C420();
  __swift_allocate_value_buffer(v1, qword_1EAEAB5D0);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 72);
  v4 = OUTLINED_FUNCTION_47_2();
  OUTLINED_FUNCTION_4_2(v4, xmmword_19394FBB0);
  OUTLINED_FUNCTION_34_24("displayName");
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  v7 = OUTLINED_FUNCTION_65();
  v6(v7);
  v8 = OUTLINED_FUNCTION_29_1();
  v9 = OUTLINED_FUNCTION_48(v8, "lastFourDigits");
  v6(v9);
  v10 = OUTLINED_FUNCTION_9_4((v0 + 2 * v3));
  v11 = OUTLINED_FUNCTION_48(v10, "isApplePay");
  v6(v11);
  OUTLINED_FUNCTION_160_0();
  OUTLINED_FUNCTION_114();
}

void OUTLINED_FUNCTION_41_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 104) = a3;
  *(v6 - 96) = a6;
  *(v6 - 72) = a4;
  *(v6 - 88) = a2;
}

uint64_t WalletPaymentsCommerceTrackedOrder.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceTrackedOrder.writeTimestamp.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 20), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceTrackedOrder.writeTimestamp.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t WalletPaymentsCommerceTrackedOrder.bookmark.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 24), &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t WalletPaymentsCommerceTrackedOrder.bookmark.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderNumber.getter()
{
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderNumber.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderNumber.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderDate.getter()
{
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderDate.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_193619AC8()
{
  v0 = OUTLINED_FUNCTION_8_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v0);
  v1 = OUTLINED_FUNCTION_189();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t WalletPaymentsCommerceTrackedOrder.merchant.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 36), &qword_1EAE3F1A0, &qword_193973038);
}

uint64_t WalletPaymentsCommerceTrackedOrder.merchant.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 36), &qword_1EAE3F1A0, &qword_193973038);
}

uint64_t WalletPaymentsCommerceTrackedOrder.merchant.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.shippingFulfillments.getter()
{
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
}

uint64_t WalletPaymentsCommerceTrackedOrder.shippingFulfillments.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v2) + 40);

  *(v1 + v3) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.shippingFulfillments.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.customer.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v2) + 44);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x108uLL);
  return sub_193448804(__dst, &v5, &qword_1EAE3F1A8, &qword_1939732B0);
}

void *WalletPaymentsCommerceTrackedOrder.customer.setter()
{
  v2 = OUTLINED_FUNCTION_3_4();
  v3 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v2) + 44);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F1A8, &qword_1939732B0);
  return memcpy((v1 + v3), v0, 0x108uLL);
}

uint64_t WalletPaymentsCommerceTrackedOrder.customer.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.payment.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(v2) + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;

  return sub_1936161E4(v4, v5, v6, v7, v8);
}

__n128 WalletPaymentsCommerceTrackedOrder.payment.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 48));
  sub_193613BF4(*v4, v4[1], v4[2], v4[3], v4[4]);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v4[4] = v3;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.payment.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.isTrackedInWallet.setter(char a1)
{
  result = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.isTrackedInWallet.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderUpdateDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 56), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderUpdateDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 56), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderUpdateDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.trackedOrderIdentifier.getter()
{
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.trackedOrderIdentifier.setter()
{
  OUTLINED_FUNCTION_50_0();
  v3 = (v1 + *(type metadata accessor for WalletPaymentsCommerceTrackedOrder(0) + 60));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.trackedOrderIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderStatus.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  result = type metadata accessor for WalletPaymentsCommerceTrackedOrder(v2);
  v4 = (v1 + *(result + 64));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *v0 = v5;
  *(v0 + 8) = v6;
  *(v0 + 9) = v4;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderStatus.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  result = type metadata accessor for WalletPaymentsCommerceTrackedOrder(0);
  v6 = v1 + *(result + 64);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 9) = v4;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderStatus.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.earliestEmailDateSent.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.orderStatusUpdateDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19361A250@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTrackedOrder.OrderStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19361A278@<X0>(uint64_t *a1@<X8>)
{
  result = static WalletPaymentsCommerceTrackedOrder.OrderStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_19361A2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_19361A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

void WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.trackingNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.carrierName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingMethod.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingDate.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingTime.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.estimatedDeliveryStartDate.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.estimatedDeliveryStartTime.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.estimatedDeliveryEndDate.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.estimatedDeliveryEndTime.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.deliveryDate.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.deliveryTime.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingRecipient.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 192), 0x108uLL);
  memcpy(a1, (v1 + 192), 0x108uLL);
  return sub_193448804(__dst, v4, &qword_1EAE3F2D0, &unk_1939732B8);
}

void *WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.shippingRecipient.setter(const void *a1)
{
  memcpy(v4, (v1 + 192), 0x108uLL);
  sub_19344E6DC(v4, &qword_1EAE3F2D0, &unk_1939732B8);
  return memcpy((v1 + 192), a1, 0x108uLL);
}

uint64_t sub_19361AB84()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_46(*(v2 + 68), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t sub_19361AC00()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_47_0(*(v2 + 68), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.fulfillmentCreationDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t sub_19361AC98()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_46(*(v2 + 72), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t sub_19361ACF4()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v2 = v1(v0);
  return OUTLINED_FUNCTION_47_0(*(v2 + 72), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.fulfillmentUpdateDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 256;
  sub_193463B08(v25);
  memcpy((a1 + 192), v25, 0x108uLL);
  type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
  sub_19393BE00();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  *a1 = 0;
  *(a1 + 8) = 256;
  bzero((a1 + 16), 0xB0uLL);
  memcpy(__dst, (a1 + 192), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F2D0, &unk_1939732B8);
  memcpy((a1 + 192), v25, 0x108uLL);
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v10, v11, v12);
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_175();
  sub_19344E6DC(v17, v18, v19);
  OUTLINED_FUNCTION_26_1();
  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
}

uint64_t sub_19361AEA4@<X0>(uint64_t *a1@<X8>)
{
  result = WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_19361AECC@<X0>(char **a1@<X8>)
{
  result = static WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.allCases.getter();
  *a1 = result;
  return result;
}

void static WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v12 = OUTLINED_FUNCTION_47(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v104 = &v96[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v96[-v24];
  if (*(v3 + 9))
  {
    if ((*(v1 + 9) & 1) == 0)
    {
      goto LABEL_134;
    }
  }

  else
  {
    if (*(v1 + 9))
    {
      goto LABEL_134;
    }

    v26 = *(v3 + 8);
    v27 = *v1;
    v28 = *(v1 + 8);
    v110[0] = *v3;
    LOBYTE(v110[1]) = v26 & 1;
    v108[0] = v27;
    LOBYTE(v108[1]) = v28 & 1;
    v103 = v3;
    v29 = WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.rawValue.getter();
    v102 = v25;
    v32 = v29 == WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.rawValue.getter();
    v25 = v102;
    v3 = v103;
    if (!v32)
    {
      goto LABEL_134;
    }
  }

  v30 = *(v3 + 24);
  v31 = v1[3];
  if (!v30)
  {
    if (v31)
    {
      goto LABEL_134;
    }

LABEL_16:
    v33 = *(v3 + 40);
    v34 = v1[5];
    if (v33)
    {
      if (!v34)
      {
        goto LABEL_134;
      }

      v35 = *(v3 + 32) == v1[4] && v33 == v34;
      if (!v35 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v34)
    {
      goto LABEL_134;
    }

    v36 = *(v3 + 56);
    v37 = v1[7];
    if (v36)
    {
      if (!v37)
      {
        goto LABEL_134;
      }

      v38 = *(v3 + 48) == v1[6] && v36 == v37;
      if (!v38 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v37)
    {
      goto LABEL_134;
    }

    v39 = *(v3 + 72);
    v40 = v1[9];
    if (v39)
    {
      if (!v40)
      {
        goto LABEL_134;
      }

      v41 = *(v3 + 64) == v1[8] && v39 == v40;
      if (!v41 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v40)
    {
      goto LABEL_134;
    }

    v42 = *(v3 + 88);
    v43 = v1[11];
    if (v42)
    {
      if (!v43)
      {
        goto LABEL_134;
      }

      v44 = *(v3 + 80) == v1[10] && v42 == v43;
      if (!v44 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v43)
    {
      goto LABEL_134;
    }

    v45 = *(v3 + 104);
    v46 = v1[13];
    if (v45)
    {
      if (!v46)
      {
        goto LABEL_134;
      }

      v47 = *(v3 + 96) == v1[12] && v45 == v46;
      if (!v47 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v46)
    {
      goto LABEL_134;
    }

    v48 = *(v3 + 120);
    v49 = v1[15];
    if (v48)
    {
      if (!v49)
      {
        goto LABEL_134;
      }

      v50 = *(v3 + 112) == v1[14] && v48 == v49;
      if (!v50 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v49)
    {
      goto LABEL_134;
    }

    v51 = *(v3 + 136);
    v52 = v1[17];
    if (v51)
    {
      if (!v52)
      {
        goto LABEL_134;
      }

      v53 = *(v3 + 128) == v1[16] && v51 == v52;
      if (!v53 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v52)
    {
      goto LABEL_134;
    }

    v54 = *(v3 + 152);
    v55 = v1[19];
    if (v54)
    {
      if (!v55)
      {
        goto LABEL_134;
      }

      v56 = *(v3 + 144) == v1[18] && v54 == v55;
      if (!v56 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v55)
    {
      goto LABEL_134;
    }

    v57 = *(v3 + 168);
    v58 = v1[21];
    if (v57)
    {
      if (!v58)
      {
        goto LABEL_134;
      }

      v59 = *(v3 + 160) == v1[20] && v57 == v58;
      if (!v59 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v58)
    {
      goto LABEL_134;
    }

    v101 = v22;
    v102 = v18;
    v98 = v10;
    v99 = v15;
    v100 = v6;
    v103 = v4;
    v60 = v3;
    v61 = *(v3 + 184);
    v62 = v1;
    v63 = v1[23];
    if (v61)
    {
      if (!v63)
      {
        goto LABEL_134;
      }

      v64 = *(v3 + 176) == v1[22] && v61 == v63;
      if (!v64 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_134;
      }
    }

    else if (v63)
    {
      goto LABEL_134;
    }

    OUTLINED_FUNCTION_56_14(v111);
    memcpy(v112, v1 + 24, sizeof(v112));
    OUTLINED_FUNCTION_56_14(v110);
    memcpy(&v110[33], v1 + 24, 0x108uLL);
    OUTLINED_FUNCTION_56_14(v113);
    if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v113) == 1)
    {
      memcpy(v108, &v110[33], 0x108uLL);
      if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v108) == 1)
      {
        OUTLINED_FUNCTION_55_14(v109);
        sub_193448804(v111, v107, &qword_1EAE3F2D0, &unk_1939732B8);
        sub_193448804(v112, v107, &qword_1EAE3F2D0, &unk_1939732B8);
        sub_19344E6DC(v109, &qword_1EAE3F2D0, &unk_1939732B8);
        goto LABEL_114;
      }

      OUTLINED_FUNCTION_27_7(v111, v109);
      OUTLINED_FUNCTION_27_7(v112, v109);
    }

    else
    {
      OUTLINED_FUNCTION_55_14(v109);
      memcpy(v108, &v110[33], 0x108uLL);
      if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(v108) != 1)
      {
        OUTLINED_FUNCTION_47_20(v111);
        OUTLINED_FUNCTION_47_20(v112);
        OUTLINED_FUNCTION_47_20(v109);
        v68 = static WalletPaymentsCommerceTrackedOrder.ShippingRecipient.== infix(_:_:)(v110, &v110[33]);
        memcpy(v105, &v110[33], sizeof(v105));
        sub_19361B978(v105);
        OUTLINED_FUNCTION_55_14(v106);
        sub_19361B978(v106);
        OUTLINED_FUNCTION_55_14(v107);
        sub_19344E6DC(v107, &qword_1EAE3F2D0, &unk_1939732B8);
        if ((v68 & 1) == 0)
        {
          goto LABEL_134;
        }

LABEL_114:
        v69 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
        v70 = *(v69 + 68);
        v71 = *(v102 + 12);
        sub_193448804(v3 + v70, v25, &qword_1EAE3A9E8, &qword_19394F800);
        sub_193448804(v62 + v70, &v25[v71], &qword_1EAE3A9E8, &qword_19394F800);
        v72 = v25;
        OUTLINED_FUNCTION_13_23(v25);
        if (v32)
        {
          OUTLINED_FUNCTION_13_23(&v25[v71]);
          if (v32)
          {
            sub_19344E6DC(v25, &qword_1EAE3A9E8, &qword_19394F800);
LABEL_124:
            v82 = *(v69 + 72);
            v83 = v101;
            v84 = *(v102 + 12);
            OUTLINED_FUNCTION_27_7(v60 + v82, v101);
            OUTLINED_FUNCTION_27_7(v62 + v82, v83 + v84);
            OUTLINED_FUNCTION_13_23(v83);
            if (v32)
            {
              OUTLINED_FUNCTION_13_23(v101 + v84);
              if (v32)
              {
                sub_19344E6DC(v101, &qword_1EAE3A9E8, &qword_19394F800);
                goto LABEL_134;
              }
            }

            else
            {
              v85 = v101;
              sub_193448804(v101, v99, &qword_1EAE3A9E8, &qword_19394F800);
              OUTLINED_FUNCTION_13_23(v85 + v84);
              if (!v86)
              {
                v87 = v100;
                v88 = v101;
                v89 = v101 + v84;
                v90 = v98;
                v91 = v103;
                (*(v100 + 32))(v98, v89, v103);
                OUTLINED_FUNCTION_0_54();
                sub_19361C84C(v92, v93, MEMORY[0x1E6969550]);
                v94 = v99;
                sub_19393C550();
                v95 = *(v87 + 8);
                v95(v90, v91);
                v95(v94, v91);
                sub_19344E6DC(v88, &qword_1EAE3A9E8, &qword_19394F800);
                goto LABEL_134;
              }

              (*(v100 + 8))(v99, v103);
            }

            v65 = &qword_1EAE3B968;
            v66 = &qword_193972430;
            v67 = v101;
LABEL_133:
            sub_19344E6DC(v67, v65, v66);
            goto LABEL_134;
          }
        }

        else
        {
          sub_193448804(v25, v104, &qword_1EAE3A9E8, &qword_19394F800);
          OUTLINED_FUNCTION_13_23(&v25[v71]);
          if (!v73)
          {
            v74 = v100;
            v75 = &v25[v71];
            v76 = v98;
            v77 = v103;
            (*(v100 + 32))(v98, v75, v103);
            OUTLINED_FUNCTION_0_54();
            sub_19361C84C(v78, v79, MEMORY[0x1E6969550]);
            v80 = v104;
            v97 = sub_19393C550();
            v81 = *(v74 + 8);
            v81(v76, v77);
            v81(v80, v77);
            sub_19344E6DC(v72, &qword_1EAE3A9E8, &qword_19394F800);
            if ((v97 & 1) == 0)
            {
              goto LABEL_134;
            }

            goto LABEL_124;
          }

          (*(v100 + 8))(v104, v103);
        }

        v65 = &qword_1EAE3B968;
        v66 = &qword_193972430;
        v67 = v25;
        goto LABEL_133;
      }

      OUTLINED_FUNCTION_55_14(v107);
      OUTLINED_FUNCTION_27_7(v111, v106);
      OUTLINED_FUNCTION_27_7(v112, v106);
      OUTLINED_FUNCTION_27_7(v109, v106);
      sub_19361B978(v107);
    }

    memcpy(v108, v110, sizeof(v108));
    v65 = &unk_1EAE3F2D8;
    v66 = &unk_1939732C8;
    v67 = v108;
    goto LABEL_133;
  }

  if (v31)
  {
    v32 = *(v3 + 16) == v1[2] && v30 == v31;
    if (v32 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_134:
  OUTLINED_FUNCTION_116();
}

void WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.hash(into:)()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v29 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30[-v15 - 8];
  if (*(v0 + 9) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v17 = *(v0 + 8);
    v18 = *v0;
    OUTLINED_FUNCTION_94();
    v33 = v18;
    v34 = v17 & 1;
    v19 = WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status.rawValue.getter();
    MEMORY[0x193B18030](v19);
  }

  if (v0[3])
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[5])
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[7])
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[9])
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[11])
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[13])
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[15])
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[17])
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[19])
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[21])
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  if (v0[23])
  {
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_16_24();
  }

  else
  {
    OUTLINED_FUNCTION_95_8();
  }

  OUTLINED_FUNCTION_56_14(v32);
  OUTLINED_FUNCTION_56_14(&v33);
  if (j__get_enum_tag_for_layout_string_27IntelligencePlatformLibrary25TextUnderstandingLocationV8MetadataVSg_0(&v33) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    OUTLINED_FUNCTION_94();
    memcpy(v30, v32, sizeof(v30));
    sub_193613D58(v30, v31);
    WalletPaymentsCommerceTrackedOrder.ShippingRecipient.hash(into:)(v2);
    memcpy(v31, v32, sizeof(v31));
    sub_19361B978(v31);
  }

  v20 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment(0);
  sub_193448804(v0 + *(v20 + 68), v16, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v16, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v21 = v29;
    (*(v29 + 32))(v8, v16, v3);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_54();
    v24 = sub_19361C84C(v22, v23, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_66_18(v24);
    (*(v21 + 8))(v8, v3);
  }

  sub_193448804(v0 + *(v20 + 72), v13, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_95_8();
  }

  else
  {
    v25 = v29;
    (*(v29 + 32))(v8, v13, v3);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_0_54();
    v28 = sub_19361C84C(v26, v27, MEMORY[0x1E6969540]);
    OUTLINED_FUNCTION_66_18(v28);
    (*(v25 + 8))(v8, v3);
  }

  OUTLINED_FUNCTION_116();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Merchant.displayName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Merchant.displayNameUpdateDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v0);
  return OUTLINED_FUNCTION_46(*(v1 + 24), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceTrackedOrder.Merchant.displayNameUpdateDate.setter()
{
  v0 = OUTLINED_FUNCTION_3_4();
  v1 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v0);
  return OUTLINED_FUNCTION_47_0(*(v1 + 24), &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t WalletPaymentsCommerceTrackedOrder.Merchant.displayNameUpdateDate.modify()
{
  v0 = OUTLINED_FUNCTION_3_4();
  type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v0);
  return OUTLINED_FUNCTION_1_4();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Merchant.init()()
{
  v1 = OUTLINED_FUNCTION_8_4();
  v2 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(v1) + 24);
  sub_19393BE00();
  OUTLINED_FUNCTION_26_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *v0 = 0u;
  v0[1] = 0u;
  sub_19344E6DC(v0 + v2, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_26_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void static WalletPaymentsCommerceTrackedOrder.Merchant.== infix(_:_:)()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v12 = OUTLINED_FUNCTION_47(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v19 = v3[1];
  v20 = v1[1];
  if (!v19)
  {
    if (v20)
    {
      goto LABEL_28;
    }

LABEL_10:
    v22 = v3[3];
    v23 = v1[3];
    if (v22)
    {
      if (!v23)
      {
        goto LABEL_28;
      }

      v24 = v3[2] == v1[2] && v22 == v23;
      if (!v24 && (sub_19393CA30() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v23)
    {
      goto LABEL_28;
    }

    v34 = v6;
    v25 = *(type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0) + 24);
    v26 = *(v15 + 48);
    sub_193448804(v3 + v25, v18, &qword_1EAE3A9E8, &qword_19394F800);
    sub_193448804(v1 + v25, &v18[v26], &qword_1EAE3A9E8, &qword_19394F800);
    OUTLINED_FUNCTION_31(v18);
    if (v21)
    {
      OUTLINED_FUNCTION_31(&v18[v26]);
      if (v21)
      {
        sub_19344E6DC(v18, &qword_1EAE3A9E8, &qword_19394F800);
        goto LABEL_28;
      }
    }

    else
    {
      sub_193448804(v18, v14, &qword_1EAE3A9E8, &qword_19394F800);
      OUTLINED_FUNCTION_31(&v18[v26]);
      if (!v27)
      {
        v28 = v34;
        (*(v34 + 32))(v10, &v18[v26], v4);
        OUTLINED_FUNCTION_0_54();
        sub_19361C84C(v29, v30, MEMORY[0x1E6969550]);
        sub_19393C550();
        v31 = *(v28 + 8);
        v32 = OUTLINED_FUNCTION_13_0();
        v31(v32);
        (v31)(v14, v4);
        sub_19344E6DC(v18, &qword_1EAE3A9E8, &qword_19394F800);
        goto LABEL_28;
      }

      (*(v34 + 8))(v14, v4);
    }

    sub_19344E6DC(v18, &qword_1EAE3B968, &qword_193972430);
    goto LABEL_28;
  }

  if (v20)
  {
    v21 = *v3 == *v1 && v19 == v20;
    if (v21 || (sub_19393CA30() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_116();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Merchant.hash(into:)(uint64_t a1)
{
  v2 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_1();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v10 = OUTLINED_FUNCTION_47(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  if (*(v1 + 8))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_40_20();
  }

  else
  {
    sub_19393CAD0();
  }

  if (*(v1 + 24))
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_40_20();
  }

  else
  {
    sub_19393CAD0();
  }

  v13 = type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant(0);
  sub_193448804(v1 + *(v13 + 24), v12, &qword_1EAE3A9E8, &qword_19394F800);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    return sub_19393CAD0();
  }

  (*(v4 + 32))(v8, v12, v2);
  sub_19393CAD0();
  OUTLINED_FUNCTION_0_54();
  sub_19361C84C(v15, v16, MEMORY[0x1E6969540]);
  sub_19393C540();
  return (*(v4 + 8))(v8, v2);
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.fullName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.phoneNumber.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.emailAddress.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void *WalletPaymentsCommerceTrackedOrder.ShippingRecipient.address.setter(const void *a1)
{
  memcpy(__dst, (v1 + 48), sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F2E0, &qword_1939732D0);
  return memcpy((v1 + 48), a1, 0xB8uLL);
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.givenName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.ShippingRecipient.familyName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  return result;
}

uint64_t sub_19361C84C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s27IntelligencePlatformLibrary34WalletPaymentsCommerceTrackedOrderV17ShippingRecipientV7addressAC7AddressVSgvg_0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 48), 0xB8uLL);
  memcpy(a1, (v1 + 48), 0xB8uLL);
  return sub_193448804(__dst, v4, &qword_1EAE3F2E0, &qword_1939732D0);
}

double _s27IntelligencePlatformLibrary34WalletPaymentsCommerceTrackedOrderV17ShippingRecipientVAEycfC_0@<D0>(_OWORD *a1@<X8>)
{
  sub_19360E4F0(v3);
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  memcpy(__dst, v3, sizeof(__dst));
  sub_19344E6DC(__dst, &qword_1EAE3F2E0, &qword_1939732D0);
  memcpy(a1 + 3, v3, 0xB8uLL);
  result = 0.0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  return result;
}

void _s27IntelligencePlatformLibrary34WalletPaymentsCommerceTrackedOrderV17ShippingRecipientV2eeoiySbAE_AEtFZ_0()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  v27 = v2[4];
  v28 = v2[2];
  v30 = v2[5];
  OUTLINED_FUNCTION_43_4(v38);
  v7 = v3[29];
  v23 = v3[31];
  v24 = v3[32];
  v25 = v3[30];
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v26 = v1[4];
  v29 = v1[5];
  OUTLINED_FUNCTION_59_15(v39);
  v12 = v1[29];
  if (v5)
  {
    if (!v8)
    {
      goto LABEL_35;
    }

    if (v4 != v9 || v5 != v8)
    {
      v14 = v1[29];
      v15 = sub_19393CA30();
      v12 = v14;
      if ((v15 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v8)
  {
    goto LABEL_35;
  }

  if (v6)
  {
    if (!v11)
    {
      goto LABEL_35;
    }

    if (v28 != v10 || v6 != v11)
    {
      v9 = v12;
      if ((sub_19393CA30() & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v11)
  {
    goto LABEL_35;
  }

  if (v30)
  {
    if (!v29)
    {
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_45_3();
    v19 = v27 == v26 && v17 == v18;
    if (!v19 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_3();
    if (v29)
    {
      goto LABEL_35;
    }
  }

  OUTLINED_FUNCTION_43_4(__src);
  OUTLINED_FUNCTION_59_15(&__src[184]);
  OUTLINED_FUNCTION_43_4(v37);
  if (sub_1934754E0(v37) != 1)
  {
    OUTLINED_FUNCTION_43_4(v35);
    OUTLINED_FUNCTION_59_15(__dst);
    if (sub_1934754E0(__dst) != 1)
    {
      v20 = static WalletPaymentsCommerceTrackedOrder.Address.== infix(_:_:)(v3 + 6, v1 + 6);
      OUTLINED_FUNCTION_59_15(v31);
      OUTLINED_FUNCTION_27_7(v38, v33);
      OUTLINED_FUNCTION_27_7(v39, v33);
      OUTLINED_FUNCTION_27_7(v35, v33);
      sub_19361C894(v31);
      OUTLINED_FUNCTION_43_4(v32);
      sub_19361C894(v32);
      OUTLINED_FUNCTION_43_4(v33);
      sub_19344E6DC(v33, &qword_1EAE3F2E0, &qword_1939732D0);
      if ((v20 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

    OUTLINED_FUNCTION_43_4(v33);
    OUTLINED_FUNCTION_79_1(v38, v32);
    OUTLINED_FUNCTION_79_1(v39, v32);
    OUTLINED_FUNCTION_79_1(v35, v32);
    sub_19361C894(v33);
LABEL_34:
    memcpy(__dst, __src, sizeof(__dst));
    sub_19344E6DC(__dst, &qword_1EAE3F2E8, &qword_1939732D8);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_59_15(__dst);
  if (sub_1934754E0(__dst) != 1)
  {
    OUTLINED_FUNCTION_79_1(v38, v35);
    OUTLINED_FUNCTION_79_1(v39, v35);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_43_4(v35);
  OUTLINED_FUNCTION_79_1(v38, v33);
  OUTLINED_FUNCTION_79_1(v39, v33);
  sub_19344E6DC(v35, &qword_1EAE3F2E0, &qword_1939732D0);
LABEL_37:
  if (v25)
  {
    if (!v10)
    {
      goto LABEL_35;
    }

    v21 = v6 == v11 && v25 == v10;
    if (!v21 && (sub_19393CA30() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v10)
  {
    goto LABEL_35;
  }

  if (v24 && v9 && (v23 != v7 || v24 != v9))
  {
    sub_19393CA30();
  }

LABEL_35:
  OUTLINED_FUNCTION_116();
}

void _s27IntelligencePlatformLibrary34WalletPaymentsCommerceTrackedOrderV17ShippingRecipientV4hash4intoys6HasherVz_tF_0()
{
  OUTLINED_FUNCTION_117();
  v2 = v1;
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[30];
  v6 = v0[32];
  if (v0[1])
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_104_0();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_0();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (v4)
  {
LABEL_4:
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_104_0();
LABEL_8:
  memcpy(__dst, v0 + 6, 0xB8uLL);
  if (sub_1934754E0(__dst) == 1)
  {
    OUTLINED_FUNCTION_104_0();
    if (v5)
    {
      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_104_0();
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_14:
    OUTLINED_FUNCTION_104_0();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_103_0();
  memcpy(v7, v0 + 6, sizeof(v7));
  sub_193613E10(v7, v8);
  WalletPaymentsCommerceTrackedOrder.Address.hash(into:)(v2);
  memcpy(v8, v0 + 6, sizeof(v8));
  sub_19361C894(v8);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_10:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_11:
  OUTLINED_FUNCTION_103_0();
  sub_19393C640();
LABEL_15:
  OUTLINED_FUNCTION_116();
}

uint64_t sub_19361CF98(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19361CFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.street.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.city.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.state.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.postalCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.country.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.addressLines.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.locality.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.subLocality.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.administrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.countryCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.rawAddress.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceTrackedOrder.Address.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceTrackedOrder::Address *__return_ptr retstr)
{
  retstr->postalCode = 0u;
  retstr->country = 0u;
  retstr->city = 0u;
  retstr->state = 0u;
  retstr->street = 0u;
  retstr->addressLines._rawValue = MEMORY[0x1E69E7CC0];
  retstr->locality = 0u;
  retstr->subLocality = 0u;
  retstr->administrativeArea = 0u;
  retstr->subAdministrativeArea = 0u;
  retstr->countryCode = 0u;
  retstr->rawAddress = 0u;
}

uint64_t static WalletPaymentsCommerceTrackedOrder.Address.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v109 = a1[2];
  v4 = a1[3];
  v105 = a1[4];
  v112 = a1[5];
  v101 = a1[6];
  v107 = a1[7];
  v99 = a1[8];
  v5 = a1[10];
  v6 = a1[11];
  v7 = a1[12];
  v8 = a1[13];
  v9 = a1[14];
  v11 = a1[15];
  v10 = a1[16];
  v12 = a1[17];
  v13 = a1[18];
  v94 = a1[19];
  v96 = a1[20];
  v14 = a1[21];
  v15 = a1[22];
  v16 = a2[1];
  v108 = a2[2];
  v17 = a2[3];
  v104 = a2[4];
  v110 = a2[5];
  v114 = a2[6];
  v106 = a2[7];
  v98 = a2[8];
  v102 = a2[9];
  v100 = a2[10];
  v19 = a2[11];
  v18 = a2[12];
  v20 = a2[13];
  v21 = a2[14];
  v22 = a2[15];
  v23 = a2[16];
  v25 = a2[17];
  v24 = a2[18];
  v95 = a2[19];
  v26 = a2[21];
  v97 = a2[20];
  v27 = a2[22];
  if (v3)
  {
    if (!v16)
    {
      return 0;
    }

    v103 = a1[9];
    if (*a1 != *a2 || v3 != v16)
    {
      v83 = a1[11];
      v85 = a2[14];
      v73 = a2[17];
      v74 = a2[22];
      v75 = a2[21];
      v76 = a2[16];
      v29 = a1[22];
      v30 = a1[21];
      v31 = a1[17];
      v77 = a1[16];
      v78 = a2[13];
      v32 = a1[18];
      v87 = a1[14];
      v89 = a2[15];
      v80 = a1[13];
      v72 = a1[15];
      v33 = a2[18];
      v34 = a1[12];
      v35 = a2[12];
      v36 = sub_19393CA30();
      v18 = v35;
      v7 = v34;
      v6 = v83;
      v24 = v33;
      v11 = v72;
      v25 = v73;
      v20 = v78;
      v8 = v80;
      v21 = v85;
      v9 = v87;
      v22 = v89;
      v13 = v32;
      v12 = v31;
      v23 = v76;
      v10 = v77;
      v14 = v30;
      v15 = v29;
      v27 = v74;
      v26 = v75;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v103 = a1[9];
    if (v16)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v17)
    {
      return 0;
    }

    if (v109 != v108 || v4 != v17)
    {
      v38 = v14;
      v90 = v22;
      OUTLINED_FUNCTION_19_13();
      v26 = v39;
      sub_19393CA30();
      OUTLINED_FUNCTION_16_22();
      v5 = v40;
      v22 = v90;
      v14 = v38;
      if ((v41 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v112)
  {
    v42 = v103;
    v43 = v114;
    if (!v110)
    {
      return 0;
    }

    if (v105 != v104 || v112 != v110)
    {
      v45 = v14;
      v91 = v22;
      OUTLINED_FUNCTION_19_13();
      v26 = v46;
      sub_19393CA30();
      OUTLINED_FUNCTION_16_22();
      v5 = v47;
      v22 = v91;
      v14 = v45;
      v43 = v114;
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v42 = v103;
    v43 = v114;
    if (v110)
    {
      return 0;
    }
  }

  if (v107)
  {
    if (!v106)
    {
      return 0;
    }

    if (v101 != v43 || v107 != v106)
    {
      v50 = v14;
      v92 = v22;
      OUTLINED_FUNCTION_19_13();
      v26 = v51;
      sub_19393CA30();
      OUTLINED_FUNCTION_16_22();
      v5 = v52;
      v22 = v92;
      v14 = v50;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v106)
  {
    return 0;
  }

  if (v42)
  {
    if (!v102)
    {
      return 0;
    }

    v82 = v19;
    v84 = v6;
    v54 = v18;
    v55 = v7;
    v79 = v20;
    v81 = v8;
    v86 = v21;
    v88 = v9;
    v93 = v22;
    v113 = v13;
    v115 = v24;
    v56 = v12;
    v111 = v14;
    v57 = v99 == v98 && v42 == v102;
    if (!v57 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v82 = v19;
    v84 = v6;
    v54 = v18;
    v55 = v7;
    v79 = v20;
    v81 = v8;
    v86 = v21;
    v88 = v9;
    v93 = v22;
    v113 = v13;
    v115 = v24;
    v56 = v12;
    v111 = v14;
    if (v102)
    {
      return 0;
    }
  }

  if (sub_19344FC94(v5, v100))
  {
    if (v55)
    {
      v58 = v113;
      v59 = v115;
      if (!v54)
      {
        return 0;
      }

      v60 = v56;
      if (v84 != v82 || v55 != v54)
      {
        OUTLINED_FUNCTION_48_19(v84);
        OUTLINED_FUNCTION_41_3();
        if ((v62 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v60 = v56;
      v58 = v113;
      v59 = v115;
      if (v54)
      {
        return 0;
      }
    }

    if (v88)
    {
      v63 = v93;
      if (!v86)
      {
        return 0;
      }

      if (v81 != v79 || v88 != v86)
      {
        OUTLINED_FUNCTION_48_19(v81);
        OUTLINED_FUNCTION_41_3();
        v63 = v93;
        if ((v65 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v63 = v93;
      if (v86)
      {
        return 0;
      }
    }

    if (v10)
    {
      if (!v23)
      {
        return 0;
      }

      if (v11 != v63 || v10 != v23)
      {
        OUTLINED_FUNCTION_48_19(v11);
        OUTLINED_FUNCTION_41_3();
        if ((v67 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v23)
    {
      return 0;
    }

    if (v58)
    {
      if (!v59)
      {
        return 0;
      }

      v68 = v60 == v25 && v58 == v59;
      if (!v68 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v59)
    {
      return 0;
    }

    if (v96)
    {
      if (!v97)
      {
        return 0;
      }

      v69 = v94 == v95 && v96 == v97;
      if (!v69 && (sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v97)
    {
      return 0;
    }

    if (v15)
    {
      if (v27)
      {
        v70 = v111 == v26 && v15 == v27;
        if (v70 || (sub_19393CA30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v27)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_19361DB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 88)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_193613E6C(__dst, v7);
      sub_193613E6C(v11, v7);
      v5 = static WalletPaymentsCommerceTrackedOrder.Transaction.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_19361FB78(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_19361FB78(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 88;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[3];
  v5 = v2[5];
  v11 = v2[7];
  v12 = v2[9];
  v6 = v2[12];
  v7 = v2[14];
  v13 = v2[10];
  v14 = v2[16];
  v8 = v2[18];
  v15 = v2[20];
  v9 = v2[22];
  if (v2[1])
  {
    sub_19393CAD0();
    sub_19393C640();
  }

  else
  {
    sub_19393CAD0();
  }

  sub_19393CAD0();
  if (v4)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v5)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v11)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v12)
  {
    sub_19393C640();
  }

  sub_1934D11C8(a1, v13);
  if (v6)
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v7)
    {
LABEL_14:
      sub_19393CAD0();
      sub_19393C640();
      if (v14)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  sub_19393CAD0();
  if (v14)
  {
LABEL_15:
    sub_19393CAD0();
    sub_19393C640();
    if (v8)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_23:
  sub_19393CAD0();
  if (v8)
  {
LABEL_16:
    sub_19393CAD0();
    sub_19393C640();
    if (v15)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_19393CAD0();
    if (v9)
    {
      goto LABEL_18;
    }

    return sub_19393CAD0();
  }

LABEL_24:
  sub_19393CAD0();
  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_17:
  sub_19393CAD0();
  sub_19393C640();
  if (!v9)
  {
    return sub_19393CAD0();
  }

LABEL_18:
  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Address.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceTrackedOrder.Address.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19361DF38(uint64_t a1)
{
  sub_19393CAB0();
  WalletPaymentsCommerceTrackedOrder.Address.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Payment.totalAmount.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Payment.totalIsoCurrencyCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Payment.transactions.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall WalletPaymentsCommerceTrackedOrder.Payment.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceTrackedOrder::Payment *__return_ptr retstr)
{
  retstr->totalAmount = 0u;
  retstr->totalIsoCurrencyCode = 0u;
  retstr->transactions._rawValue = MEMORY[0x1E69E7CC0];
}

uint64_t static WalletPaymentsCommerceTrackedOrder.Payment.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_19393CA30() & 1) != 0)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_17:
  v11 = OUTLINED_FUNCTION_13_0();

  return sub_19361DB3C(v11, v12);
}

uint64_t WalletPaymentsCommerceTrackedOrder.Payment.hash(into:)(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  if (v1[1])
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v4)
    {
LABEL_3:
      sub_19393CAD0();
      OUTLINED_FUNCTION_175();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:

  return sub_19361EF28(a1, v3);
}

uint64_t WalletPaymentsCommerceTrackedOrder.Payment.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_119();
  sub_19393CAD0();
  if (v1)
  {
    sub_19393C640();
  }

  sub_19393CAD0();
  if (v2)
  {
    OUTLINED_FUNCTION_175();
    sub_19393C640();
  }

  sub_19361EF28(v5, v3);
  return sub_19393CB00();
}

uint64_t sub_19361E300(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_19393CAB0();
  WalletPaymentsCommerceTrackedOrder.Payment.hash(into:)(v5);
  return sub_19393CB00();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.amount.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.isoCurrencyCode.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void WalletPaymentsCommerceTrackedOrder.Transaction.paymentMethod.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 64);
  sub_1934D1694(v2, v3, v4, v5);
}

__n128 WalletPaymentsCommerceTrackedOrder.Transaction.paymentMethod.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1934D16DC(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = v3;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.transactionIdenifier.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceTrackedOrder.Transaction.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceTrackedOrder::Transaction *__return_ptr retstr)
{
  retstr->amount = 0u;
  retstr->isoCurrencyCode = 0u;
  sub_1934D16DC(0, 1, 0, 0);
  retstr->paymentMethod.value.displayName = xmmword_1939526A0;
  retstr->paymentMethod.value.lastFourDigits.value._countAndFlagsBits = 0;
  retstr->paymentMethod.value.lastFourDigits.value._object = 0;
  retstr->paymentMethod.value.isApplePay.value = 0;
  *&retstr->paymentMethod.is_nil = 0;
  retstr->transactionIdenifier.value._countAndFlagsBits = 0;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.displayName.setter()
{
  OUTLINED_FUNCTION_50_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.lastFourDigits.setter()
{
  OUTLINED_FUNCTION_50_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

void __swiftcall WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.init()(IntelligencePlatformLibrary::WalletPaymentsCommerceTrackedOrder::Transaction::PaymentMethod *__return_ptr retstr)
{
  retstr->displayName = 0u;
  retstr->lastFourDigits = 0u;
  retstr->isApplePay.value = 2;
}

uint64_t static WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    if (v4 != v8 || v5 != v9)
    {
      OUTLINED_FUNCTION_13_0();
      if ((sub_19393CA30() & 1) == 0)
      {
        return 0;
      }
    }

LABEL_19:
    if (v6 == 2)
    {
      if (v10 != 2)
      {
        return 0;
      }
    }

    else if (v10 == 2 || ((v10 ^ v6) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (!v9)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (*(v1 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v3 != 2)
  {
    sub_19393CAD0();
  }

  return sub_19393CAD0();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.hashValue.getter()
{
  OUTLINED_FUNCTION_44_1();
  sub_19393CAB0();
  WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19361E894()
{
  OUTLINED_FUNCTION_44_1();
  sub_19393CAB0();
  WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t static WalletPaymentsCommerceTrackedOrder.Transaction.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = *(a1 + 64);
  v12 = a1[9];
  v11 = a1[10];
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  v16 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a2 + 64);
  v22 = *(a2 + 72);
  v21 = *(a2 + 80);
  if (v3)
  {
    if (!v13)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v13)
    {
      v86 = a1[10];
      v90 = a1[5];
      v83 = a1[9];
      v84 = a1[7];
      v81 = a1[6];
      v82 = a1[4];
      v93 = *(a1 + 64);
      v96 = *(a2 + 64);
      v24 = *(a2 + 56);
      v25 = *(a2 + 80);
      v26 = *(a2 + 72);
      v27 = *(a2 + 40);
      v28 = *(a2 + 48);
      v29 = *(a2 + 32);
      v30 = a1[2];
      v31 = sub_19393CA30();
      v4 = v30;
      v15 = v29;
      v18 = v28;
      v20 = v96;
      v17 = v27;
      v22 = v26;
      v21 = v25;
      v19 = v24;
      v10 = v93;
      v7 = v81;
      v6 = v82;
      v12 = v83;
      v9 = v84;
      v11 = v86;
      v8 = v90;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v5)
  {
    if (!v16)
    {
      return 0;
    }

    if (v4 != v14 || v5 != v16)
    {
      v94 = v10;
      v97 = v20;
      v33 = v19;
      v34 = v21;
      v87 = v18;
      v91 = v22;
      v35 = v17;
      v36 = v15;
      v37 = sub_19393CA30();
      v15 = v36;
      v18 = v87;
      v22 = v91;
      v20 = v97;
      v17 = v35;
      v21 = v34;
      v19 = v33;
      v10 = v94;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v8 != 1)
  {
    v100[0] = v6;
    v100[1] = v8;
    v100[2] = v7;
    v100[3] = v9;
    v101 = v10;
    if (v17 != 1)
    {
      v92 = v22;
      v95 = v21;
      v98[0] = v15;
      v98[1] = v17;
      v98[2] = v18;
      v98[3] = v19;
      v99 = v20;
      v65 = v19;
      v66 = v17;
      v89 = v18;
      v67 = v15;
      v85 = static WalletPaymentsCommerceTrackedOrder.Transaction.PaymentMethod.== infix(_:_:)(v100, v98);
      v68 = OUTLINED_FUNCTION_5_39();
      sub_1934D1694(v68, v69, v70, v71);
      sub_1934D1694(v67, v66, v89, v65);
      v72 = OUTLINED_FUNCTION_5_39();
      sub_1934D1694(v72, v73, v74, v75);

      v76 = OUTLINED_FUNCTION_5_39();
      sub_1934D16DC(v76, v77, v78, v79);
      if ((v85 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    v50 = v19;
    v51 = 1;
    v52 = v18;
    v53 = v15;
    sub_1934D1694(v6, v8, v7, v9);
    sub_1934D1694(v53, 1, v52, v50);
    v54 = OUTLINED_FUNCTION_5_39();
    sub_1934D1694(v54, v55, v56, v57);

LABEL_25:
    v60 = OUTLINED_FUNCTION_5_39();
    sub_1934D16DC(v60, v61, v62, v63);
    sub_1934D16DC(v53, v51, v52, v50);
    return 0;
  }

  v38 = v15;
  v39 = v18;
  v92 = v22;
  v95 = v21;
  v88 = v19;
  v40 = OUTLINED_FUNCTION_60_16();
  v42 = v41;
  sub_1934D1694(v40, v43, v44, v45);
  if (v42 != 1)
  {
    v53 = v38;
    v58 = v38;
    v52 = v39;
    v59 = v39;
    v50 = v88;
    v51 = v42;
    sub_1934D1694(v58, v42, v59, v88);
    goto LABEL_25;
  }

  sub_1934D1694(v38, 1, v39, v88);
  v46 = OUTLINED_FUNCTION_60_16();
  sub_1934D16DC(v46, v47, v48, v49);
LABEL_29:
  if (v11)
  {
    if (v95)
    {
      v80 = v12 == v92 && v11 == v95;
      if (v80 || (sub_19393CA30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v95)
  {
    return 1;
  }

  return 0;
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  if (*(v1 + 8))
  {
    sub_19393CAD0();
    sub_19393C640();
    if (v2)
    {
LABEL_3:
      sub_19393CAD0();
      sub_19393C640();
      goto LABEL_6;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_19393CAD0();
LABEL_6:
  if (v3 == 1)
  {
    goto LABEL_15;
  }

  sub_19393CAD0();
  if (v3)
  {
    sub_19393CAD0();
    OUTLINED_FUNCTION_40_20();
    if (v4)
    {
LABEL_9:
      sub_19393CAD0();
      sub_19393C640();
      goto LABEL_12;
    }
  }

  else
  {
    sub_19393CAD0();
    if (v4)
    {
      goto LABEL_9;
    }
  }

  sub_19393CAD0();
LABEL_12:
  if (v5 != 2)
  {
    sub_19393CAD0();
  }

LABEL_15:
  sub_19393CAD0();
  if (!v6)
  {
    return sub_19393CAD0();
  }

  sub_19393CAD0();

  return sub_19393C640();
}

uint64_t WalletPaymentsCommerceTrackedOrder.Transaction.hashValue.getter()
{
  OUTLINED_FUNCTION_119();
  WalletPaymentsCommerceTrackedOrder.Transaction.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_19361EE20(uint64_t a1)
{
  sub_19393CAB0();
  WalletPaymentsCommerceTrackedOrder.Transaction.hash(into:)(v2);
  return sub_19393CB00();
}

uint64_t sub_19361EE7C(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_119();
  a1(v3);
  return sub_19393CB00();
}

uint64_t sub_19361EEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_19393CAB0();
  a4(v6);
  return sub_19393CB00();
}

uint64_t sub_19361EF28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x193B18030](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v7 = *v5;
      v6 = v5[1];
      v8 = v5[2];
      v9 = v5[3];
      v10 = v5[4];
      v11 = *(v5 + 40);
      v12 = v5[7];
      v18 = v8;
      v17 = v6;
      if (*(v5 - 2))
      {
        sub_19393CAD0();

        v13 = v6;
        v14 = v11;
        sub_1934D1694(v13, v8, v9, v10);
        v15 = v12;

        sub_19393C640();
      }

      else
      {
        sub_19393CAD0();

        v16 = v6;
        v14 = v11;
        sub_1934D1694(v16, v8, v9, v10);
        v15 = v12;
      }

      sub_19393CAD0();
      if (v7)
      {
        sub_19393C640();
      }

      if (v18 == 1)
      {
        goto LABEL_16;
      }

      sub_19393CAD0();
      if (v18)
      {
        sub_19393CAD0();
        sub_19393C640();
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_19393CAD0();
        if (v10)
        {
LABEL_11:
          sub_19393CAD0();
          sub_19393C640();
          goto LABEL_14;
        }
      }

      sub_19393CAD0();
LABEL_14:
      if (v14 != 2)
      {
        sub_19393CAD0();
      }

LABEL_16:
      sub_19393CAD0();
      sub_19393CAD0();
      if (v15)
      {
        sub_19393C640();
      }

      sub_1934D16DC(v17, v18, v9, v10);

      v5 += 11;
      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_19361F208()
{
  result = qword_1EAE3F310;
  if (!qword_1EAE3F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F310);
  }

  return result;
}

unint64_t sub_19361F2F0()
{
  result = qword_1EAE3F318;
  if (!qword_1EAE3F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F318);
  }

  return result;
}

unint64_t sub_19361F34C()
{
  result = qword_1EAE3F320;
  if (!qword_1EAE3F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F320);
  }

  return result;
}

unint64_t sub_19361F3A8()
{
  result = qword_1EAE3F328;
  if (!qword_1EAE3F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F328);
  }

  return result;
}

unint64_t sub_19361F400()
{
  result = qword_1EAE3F330;
  if (!qword_1EAE3F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F330);
  }

  return result;
}

uint64_t sub_19361F4C4()
{
  OUTLINED_FUNCTION_2_46();
  sub_19361F704(319, v0, v1, MEMORY[0x1E69E6720]);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    sub_19349D198(319);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_19361F704(319, &qword_1ED5037A0, type metadata accessor for WalletPaymentsCommerceTrackedOrder.Merchant, MEMORY[0x1E69E6720]);
    if (v9 > 0x3F)
    {
      return v5;
    }

    sub_19361F704(319, &qword_1ED5034D8, type metadata accessor for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment, MEMORY[0x1E69E62F8]);
    if (v10 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED5037A8, &type metadata for WalletPaymentsCommerceTrackedOrder.Customer);
    if (v11 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, qword_1ED5037B0, &type metadata for WalletPaymentsCommerceTrackedOrder.Payment);
    if (v12 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1ED506698, MEMORY[0x1E69E6370]);
    if (v13 > 0x3F)
    {
      return v5;
    }

    sub_19349D1FC(319, &qword_1EAE3F340, &type metadata for WalletPaymentsCommerceTrackedOrder.OrderStatus);
    if (v14 > 0x3F)
    {
      return v5;
    }

    else
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

void sub_19361F704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_19361F7A0()
{
  sub_19349D1FC(319, &qword_1ED503870, &type metadata for WalletPaymentsCommerceTrackedOrder.ShippingFulfillment.Status);
  if (v0 <= 0x3F)
  {
    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v1 <= 0x3F)
    {
      sub_19349D1FC(319, qword_1ED503878, &type metadata for WalletPaymentsCommerceTrackedOrder.ShippingRecipient);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_2_46();
        sub_19361F704(319, v3, v4, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_15_2();
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19361F8F4()
{
  sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_2_46();
    sub_19361F704(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_2();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary34WalletPaymentsCommerceTrackedOrderV7AddressVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_19361F9E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19361FA28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27IntelligencePlatformLibrary34WalletPaymentsCommerceTrackedOrderV11TransactionV13PaymentMethodVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19361FAAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      return OUTLINED_FUNCTION_46_4(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_71();
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_46_4(v3);
}

uint64_t sub_19361FAF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_41_0(result, a2);
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_55_14(void *a1)
{

  return memcpy(a1, (v1 + 1648), 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_66_18(uint64_t a1)
{

  return sub_19393C540();
}

_BYTE *_s19AggregatedReportingOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s16AdAttributionKitOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_19361FDBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510F98);
  v4 = __swift_project_value_buffer(v3, qword_1ED510F98);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AdAttributionKit.AggregatedReporting.Conversion.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:500 maxEventCount:12960000.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_28 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510F98);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F348, &qword_193973D50);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD000000000000019, 0x8000000193A29D00, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AdAttributionKit.AggregatedReporting.Conversion.attribute(_:)(void (*a1)(void))
{
  result = sub_1936201D8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193620214(void (*a1)(void))
{
  result = sub_1936201D8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19362027C(uint64_t a1)
{
  result = sub_1936202A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936202A4()
{
  result = qword_1ED506890;
  if (!qword_1ED506890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506890);
  }

  return result;
}

_BYTE *_s10ConversionOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1936203C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AA88, &qword_19394F9C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_19393BE60();
  __swift_allocate_value_buffer(v3, qword_1ED510FF8);
  v4 = __swift_project_value_buffer(v3, qword_1ED510FF8);
  sub_19393BE10();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

id static Library.Streams.AdAttributionKit.AggregatedReporting.Purchase.configuration.getter()
{
  result = [objc_allocWithZone(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:10485760 maxStreamSize:*MEMORY[0x1E698F108] maxEventCount:3888000.0];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = sub_19393C570();
    v4 = [v2 newLibraryStoreConfigForStreamIdentifier:v3 domain:0 segmentSize:0x40000 protectionClass:3 pruningPolicy:v1];

    v5 = objc_opt_self();
    if (_MergedGlobals_29 != -1)
    {
      swift_once();
    }

    v6 = sub_19393BE60();
    __swift_project_value_buffer(v6, qword_1ED510FF8);
    v7 = sub_19393BE30();
    v8 = sub_19393C570();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F350, &qword_193973DD0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = sub_19393C6C0();
    v11 = sub_19343E840(v7, v8, ObjCClassFromMetadata, v4, 0, v10, 0, 1, 0, 0, 0, 0, 0xD000000000000019, 0x8000000193A29D00, v5);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static Library.Streams.AdAttributionKit.AggregatedReporting.Purchase.attribute(_:)(void (*a1)(void))
{
  result = sub_1936207E8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_193620824(void (*a1)(void))
{
  result = sub_1936207E8(a1);
  if (!v1)
  {
  }

  return result;
}

unint64_t sub_19362088C(uint64_t a1)
{
  result = sub_1936208B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1936208B4()
{
  result = qword_1ED506880;
  if (!qword_1ED506880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED506880);
  }

  return result;
}

_BYTE *_s8PurchaseOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AdAttributionKitConversion.json()()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v22 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for AdAttributionKitConversion(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F358, &qword_193973E48);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_193620B80(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3F358, &qword_193973E48, v17);
  sub_19393C250();
  (*(v3 + 8))(v7, v22);
  sub_19344E6DC(v15, &qword_1EAE3F358, &qword_193973E48);
  OUTLINED_FUNCTION_27();
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t sub_193620B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitConversion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static AdAttributionKitConversion.event(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F358, &qword_193973E48);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v29, &qword_1EAE3F358, &qword_193973E48, v30);
  sub_19393C260();
  if (!v20)
  {
    sub_193620D14(v28, v24);
  }

  OUTLINED_FUNCTION_27();
}

uint64_t sub_193620D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitConversion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static AdAttributionKitConversion.event(from:dataVersion:writeTimestamp:bookmark:)()
{
  OUTLINED_FUNCTION_26();
  v35 = v2;
  v36 = v1;
  v34 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F358, &qword_193973E48);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  if (*sub_1936240AC() == v5)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v20 = OUTLINED_FUNCTION_24_1();
    v21(v20);
    sub_193450688(v9, v7);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v22, v23, v24, v25);
    sub_19393C280();
    (*(v15 + 8))(v19, v13);
    if (!v0)
    {
      v27 = v35;
      sub_193620D14(v12, v35);
      v28 = type metadata accessor for AdAttributionKitConversion(0);
      v29 = *(v28 + 20);
      sub_19344E6DC(v27 + v29, &qword_1EAE3A9E8, &qword_19394F800);
      v30 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v31 + 16))(v27 + v29, v34, v30);
      __swift_storeEnumTagSinglePayload(v27 + v29, 0, 1, v30);
      v32 = *(v28 + 24);
      sub_19344E6DC(v27 + v32, &qword_1EAE3AA00, &unk_19394F8F0);
      sub_1934970B0(v36, v27 + v32);
    }
  }

  else
  {
    sub_19349AB64();
    swift_allocError();
    *v26 = v5;
    *(v26 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();
}

uint64_t AdAttributionKitConversion.serialize()()
{
  v1 = type metadata accessor for AdAttributionKitConversion(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  v6 = OUTLINED_FUNCTION_24_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_193620B80(v0, v5);
  sub_1934470C8(v5, v1, v10);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v11, &qword_1EAE3F358, &qword_193973E48, v12);
  v13 = sub_19393C290();
  sub_19344E6DC(v10, &qword_1EAE3F358, &qword_193973E48);
  return v13;
}

id static AdAttributionKitConversion.columns.getter()
{
  v286 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  v2 = OUTLINED_FUNCTION_22_15(inited, xmmword_193950B10);
  OUTLINED_FUNCTION_2_47(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v13 = OUTLINED_FUNCTION_24_1();
  result = OUTLINED_FUNCTION_5_40(v13, v14);
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_8_37(result);
  v16 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v26 = swift_allocObject();
  OUTLINED_FUNCTION_2_47(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v36 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v36);
  OUTLINED_FUNCTION_9_49();
  result = sub_19343D150(v37, v38, v39, v40, v41, 5, 0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_8_37(result);
  v42 = swift_initStackObject();
  v50 = OUTLINED_FUNCTION_1_50(v42, v43, v44, v45, v46, v47, v48, v49, xmmword_193950B10);
  OUTLINED_FUNCTION_2_47(v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  v60 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v60);
  OUTLINED_FUNCTION_22_27();
  OUTLINED_FUNCTION_9_49();
  result = sub_19343D150(v61, v62, v63, v64, v65, 4, 0);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_37(result);
  v66 = swift_initStackObject();
  v74 = OUTLINED_FUNCTION_1_50(v66, v67, v68, v69, v70, v71, v72, v73, v277);
  OUTLINED_FUNCTION_2_47(v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  v84 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v84);
  v85 = OUTLINED_FUNCTION_20_26();
  result = OUTLINED_FUNCTION_5_40(v85, 0xEB0000000044496BLL);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_8_37(result);
  v86 = swift_initStackObject();
  v94 = OUTLINED_FUNCTION_1_50(v86, v87, v88, v89, v90, v91, v92, v93, v278);
  OUTLINED_FUNCTION_2_47(v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
  v104 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v104);
  OUTLINED_FUNCTION_10_35();
  OUTLINED_FUNCTION_9_49();
  result = sub_19343D150(v105, v106, v107, v108, v109, 4, 0);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_8_37(result);
  v110 = swift_initStackObject();
  v118 = OUTLINED_FUNCTION_1_50(v110, v111, v112, v113, v114, v115, v116, v117, v279);
  OUTLINED_FUNCTION_2_47(v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
  v128 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v128);
  OUTLINED_FUNCTION_17_26();
  OUTLINED_FUNCTION_27_20();
  OUTLINED_FUNCTION_9_49();
  result = sub_19343D150(v129, v130, v131, v132, v133, 5, 0);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_8_37(result);
  v134 = swift_initStackObject();
  v142 = OUTLINED_FUNCTION_1_50(v134, v135, v136, v137, v138, v139, v140, v141, v280);
  OUTLINED_FUNCTION_2_47(v142, v143, v144, v145, v146, v147, v148, v149, v150, v151);
  v152 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v152);
  v153 = OUTLINED_FUNCTION_10_35();
  result = OUTLINED_FUNCTION_5_40(v153 & 0xFFFFFFFFFFFFLL | 0x6F44000000000000, 0xEC0000006E69616DLL);
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_8_37(result);
  v154 = swift_initStackObject();
  v162 = OUTLINED_FUNCTION_1_50(v154, v155, v156, v157, v158, v159, v160, v161, v281);
  OUTLINED_FUNCTION_2_47(v162, v163, v164, v165, v166, v167, v168, v169, v170, v171);
  v172 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v172);
  OUTLINED_FUNCTION_26_17();
  OUTLINED_FUNCTION_25_24();
  result = OUTLINED_FUNCTION_5_40(v173, v174);
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_8_37(result);
  v175 = swift_initStackObject();
  v183 = OUTLINED_FUNCTION_1_50(v175, v176, v177, v178, v179, v180, v181, v182, v282);
  OUTLINED_FUNCTION_2_47(v183, v184, v185, v186, v187, v188, v189, v190, v191, v192);
  v193 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v193);
  v194 = OUTLINED_FUNCTION_23_12();
  result = OUTLINED_FUNCTION_5_40(v194, 0xEC0000004449746ELL);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_8_37(result);
  v195 = swift_initStackObject();
  v203 = OUTLINED_FUNCTION_1_50(v195, v196, v197, v198, v199, v200, v201, v202, v283);
  OUTLINED_FUNCTION_2_47(v203, v204, v205, v206, v207, v208, v209, v210, v211, v212);
  v213 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v213);
  OUTLINED_FUNCTION_21_26();
  OUTLINED_FUNCTION_9_49();
  result = sub_19343D150(v214, v215, v216, v217, v218, 0, 2);
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_8_37(result);
  v219 = swift_initStackObject();
  v227 = OUTLINED_FUNCTION_1_50(v219, v220, v221, v222, v223, v224, v225, v226, v284);
  OUTLINED_FUNCTION_2_47(v227, v228, v229, v230, v231, v232, v233, v234, v235, v236);
  v237 = sub_19393C850();
  OUTLINED_FUNCTION_13_24(v237);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_9_49();
  result = sub_19343D150(v238, v239, v240, v241, v242, 0, 2);
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_8_37(result);
  v243 = swift_initStackObject();
  OUTLINED_FUNCTION_2_13(v243, v244, v245, v246, v247, v248, v249, v250, v251, v252);
  v253 = swift_allocObject();
  OUTLINED_FUNCTION_2_13(v253, v254, v255, v256, v257, v258, v259, v260, v261, v262);
  v253[2].n128_u64[0] = sub_19393C850();
  v263 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  result = sub_19343D150(0xD000000000000011, 0x8000000193A29DC0, 0, 0, v253, 4, 0);
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v243[2].n128_u64[0] = result;
  sub_19343D230(v243);
  v264 = swift_initStackObject();
  v265 = OUTLINED_FUNCTION_22_15(v264, v285);
  OUTLINED_FUNCTION_2_13(v265, v266, v267, v268, v269, v270, v271, v272, v273, v274);
  v265[2].n128_u64[0] = sub_19393C850();
  v275 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v276 = OUTLINED_FUNCTION_16_25();
  result = sub_19343D150(v276, 0xEB0000000065646FLL, 2, 0, v265, 13, 0);
  if (result)
  {
    v264[2].n128_u64[0] = result;
    sub_19343D230(v264);
    return v286;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_193621730()
{
  OUTLINED_FUNCTION_26();
  v66 = v0;
  v67 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v13 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v65 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  v22 = v5 == 0x69737265766E6F63 && v3 == 0xEC00000044496E6FLL;
  if (v22 || (OUTLINED_FUNCTION_59_0(0x69737265766E6F63, 0xEC00000044496E6FLL) & 1) != 0)
  {
    v23 = *(type metadata accessor for AdAttributionKitConversion(0) + 28);
    goto LABEL_7;
  }

  v26 = v5 == 0xD000000000000010 && 0x8000000193A29DA0 == v3;
  if (v26 || (OUTLINED_FUNCTION_59_0(0xD000000000000010, 0x8000000193A29DA0) & 1) != 0)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_22_27();
  v30 = v5 == 0x69737265766E6F63 && v3 == v29;
  if (v30 || (OUTLINED_FUNCTION_59_0(0x69737265766E6F63, v29) & 1) != 0)
  {
    type metadata accessor for AdAttributionKitConversion(0);
    OUTLINED_FUNCTION_18_27();
    if (*(v31 + 9))
    {
      goto LABEL_16;
    }

LABEL_25:
    OUTLINED_FUNCTION_41_2(v31);
    goto LABEL_9;
  }

  v32 = OUTLINED_FUNCTION_20_26();
  v34 = v5 == v32 && v3 == v33;
  if (v34 || (OUTLINED_FUNCTION_59_0(v32, v33) & 1) != 0)
  {
    v23 = *(type metadata accessor for AdAttributionKitConversion(0) + 40);
    goto LABEL_7;
  }

  v35 = OUTLINED_FUNCTION_10_35() & 0xFFFFFFFFFFFFLL | 0x4449000000000000;
  v36 = v5 == v35 && v3 == 0xE800000000000000;
  if (v36 || (OUTLINED_FUNCTION_59_0(v35, 0xE800000000000000) & 1) != 0)
  {
    type metadata accessor for AdAttributionKitConversion(0);
    OUTLINED_FUNCTION_18_27();
    if ((*(v37 + 4) & 1) == 0)
    {
      LODWORD(v68) = *v37;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_27_20();
  v38 = OUTLINED_FUNCTION_17_26();
  v40 = v5 == v38 && v3 == v39;
  if (v40 || (OUTLINED_FUNCTION_59_0(v38, v39) & 1) != 0)
  {
LABEL_15:
    type metadata accessor for AdAttributionKitConversion(0);
    OUTLINED_FUNCTION_18_27();
    if ((v27[1] & 1) == 0)
    {
      v68 = *v27;
      goto LABEL_9;
    }

LABEL_16:
    v28 = v67;
    *v67 = 0u;
    v28[1] = 0u;
    goto LABEL_17;
  }

  v41 = OUTLINED_FUNCTION_10_35() & 0xFFFFFFFFFFFFLL | 0x6F44000000000000;
  v43 = v5 == v41 && v3 == v42;
  if (v43 || (OUTLINED_FUNCTION_59_0(v41, v42) & 1) != 0)
  {
    v23 = *(type metadata accessor for AdAttributionKitConversion(0) + 52);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_25_24();
  v44 = OUTLINED_FUNCTION_26_17();
  v46 = v5 == v44 && v3 == v45;
  if (v46 || (OUTLINED_FUNCTION_59_0(v44, v45) & 1) != 0)
  {
    v23 = *(type metadata accessor for AdAttributionKitConversion(0) + 56);
    goto LABEL_7;
  }

  v47 = OUTLINED_FUNCTION_23_12();
  v48 = v5 == v47 && v3 == 0xEC0000004449746ELL;
  if (v48 || (OUTLINED_FUNCTION_59_0(v47, 0xEC0000004449746ELL) & 1) != 0)
  {
    v23 = *(type metadata accessor for AdAttributionKitConversion(0) + 60);
    goto LABEL_7;
  }

  v49 = OUTLINED_FUNCTION_21_26();
  v50 = v5 == v49 && v3 == 0xEE00657461446E6FLL;
  if (v50 || (OUTLINED_FUNCTION_59_0(v49, 0xEE00657461446E6FLL) & 1) != 0)
  {
    v51 = type metadata accessor for AdAttributionKitConversion(0);
    sub_1934DE90C(v66 + *(v51 + 64), v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      v53 = v65;
      (*(v65 + 32))(v21, v12, v13);
      sub_1934948FC();
      (*(v53 + 8))(v21, v13);
      goto LABEL_17;
    }

    v52 = v12;
    goto LABEL_70;
  }

  v54 = v5 == 0x69737265766E6F63 && v3 == 0xEE00657461446E6FLL;
  if (v54 || (OUTLINED_FUNCTION_59_0(0x69737265766E6F63, 0xEE00657461446E6FLL) & 1) != 0)
  {
    v55 = type metadata accessor for AdAttributionKitConversion(0);
    sub_1934DE90C(v66 + *(v55 + 68), v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v13) != 1)
    {
      v56 = v65;
      (*(v65 + 32))(v18, v9, v13);
      sub_1934948FC();
      (*(v56 + 8))(v18, v13);
      goto LABEL_17;
    }

    v52 = v9;
LABEL_70:
    sub_19344E6DC(v52, &qword_1EAE3A9E8, &qword_19394F800);
    goto LABEL_16;
  }

  v57 = v5 == 0xD000000000000011 && 0x8000000193A29DC0 == v3;
  if (v57 || (OUTLINED_FUNCTION_59_0(0xD000000000000011, 0x8000000193A29DC0) & 1) != 0)
  {
    type metadata accessor for AdAttributionKitConversion(0);
    OUTLINED_FUNCTION_18_27();
    if (*(v31 + 9))
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v58 = OUTLINED_FUNCTION_16_25();
  v60 = v5 == v58 && v3 == v59;
  if (!v60 && (OUTLINED_FUNCTION_59_0(v58, v59) & 1) == 0)
  {
    sub_19349AB64();
    swift_allocError();
    v62 = v61;
    *v61 = v5;
    v61[1] = v3;
    v61[5] = type metadata accessor for AdAttributionKitConversion(0);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v62 + 2);
    sub_193620B80(v66, boxed_opaque_existential_1Tm);
    *(v62 + 48) = 1;
    swift_willThrow();

    goto LABEL_17;
  }

  v23 = *(type metadata accessor for AdAttributionKitConversion(0) + 76);
LABEL_7:
  v24 = (v66 + v23);
  v25 = *(v66 + v23 + 8);
  if (!v25)
  {
    goto LABEL_16;
  }

  v68 = *v24;
  v69 = v25;
LABEL_9:
  sub_1934948FC();
LABEL_17:
  OUTLINED_FUNCTION_27();
}

uint64_t AdAttributionKitConversion.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AdAttributionKitConversion(0);
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v18 = (a1 + v2[7]);
  j__OUTLINED_FUNCTION_10_1();
  v17 = a1 + v2[8];
  j__OUTLINED_FUNCTION_8_11();
  v5 = a1 + v2[9];
  OUTLINED_FUNCTION_131(v5);
  v16 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v15 = a1 + v2[11];
  sub_1934E3F94();
  v13 = a1 + v2[12];
  j__OUTLINED_FUNCTION_8_11();
  v12 = (a1 + v2[13]);
  j__OUTLINED_FUNCTION_10_1();
  v11 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  v7 = v2[16];
  sub_1934E0648();
  v8 = v2[17];
  sub_19349C79C();
  v9 = a1 + v2[18];
  j__OUTLINED_FUNCTION_131(v9);
  v14 = (a1 + v2[19]);
  j__OUTLINED_FUNCTION_10_1();
  *a1 = *sub_1936240AC();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  sub_19393BE00();
  OUTLINED_FUNCTION_18_28(a1 + v3);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v18 = 0;
  v18[1] = 0;
  *v17 = 0;
  v17[8] = 1;
  *v5 = 0;
  *(v5 + 4) = 256;
  *v16 = 0;
  v16[1] = 0;
  *v15 = 0;
  v15[4] = 1;
  *v13 = 0;
  v13[8] = 1;
  *v12 = 0;
  v12[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  *v6 = 0;
  v6[1] = 0;
  sub_193442B60(a1 + v7, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_18_28(a1 + v7);
  sub_193442B60(a1 + v8, &qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_18_28(a1 + v8);

  *v9 = 0;
  *(v9 + 4) = 256;
  *v14 = 0;
  v14[1] = 0;
  return result;
}

BOOL static AdAttributionKitConversion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v98 = &v94[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v94[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_26();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v94[-v18];
  v20 = type metadata accessor for AdAttributionKitConversion(0);
  OUTLINED_FUNCTION_3();
  if (v23)
  {
    if (!v21)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v22);
    v26 = v26 && v24 == v25;
    if (!v26 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_2();
  if (v28)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v29)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v31)
  {
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_26();
    if (v34)
    {
      return 0;
    }

    v99 = v32;
    v100 = v33 & 1;
    sub_1936226B4();
    v97 = v7;
    v35 = sub_19393C550();
    v7 = v97;
    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v38)
  {
    if (!v36)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v37);
    v41 = v26 && v39 == v40;
    if (!v41 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v42 = v20[11];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 4);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 4);
  if (v44)
  {
    if (!v46)
    {
      return 0;
    }
  }

  else
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_32_2();
  if (v48)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v49)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v52)
  {
    if (!v50)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v51);
    v55 = v26 && v53 == v54;
    if (!v55 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v50)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v58)
  {
    if (!v56)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v57);
    v61 = v26 && v59 == v60;
    if (!v61 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v56)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v64)
  {
    if (!v62)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v63);
    v67 = v26 && v65 == v66;
    if (!v67 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v62)
  {
    return 0;
  }

  v68 = v20[16];
  v96 = v5;
  v97 = v68;
  v69 = *(v16 + 48);
  sub_1934DE90C(&v68[a1], v19);
  v70 = &v97[a2];
  v97 = v69;
  v71 = &v69[v19];
  v72 = v96;
  sub_1934DE90C(v70, v71);
  OUTLINED_FUNCTION_6_3(v19, 1, v72);
  if (v26)
  {
    OUTLINED_FUNCTION_6_3(&v97[v19], 1, v72);
    if (v26)
    {
      sub_193442B60(v19, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_75;
    }

LABEL_73:
    v74 = v19;
LABEL_84:
    sub_193442B60(v74, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_1934DE90C(v19, v15);
  OUTLINED_FUNCTION_6_3(&v97[v19], 1, v72);
  if (v73)
  {
    (*(v7 + 1))(v15, v72);
    goto LABEL_73;
  }

  (*(v7 + 4))(v98, &v97[v19], v72);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  v95 = sub_19393C550();
  v97 = *(v7 + 1);
  (v97)(v98, v96);
  (v97)(v15, v96);
  sub_193442B60(v19, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_75:
  v75 = v20[17];
  v76 = *(v16 + 48);
  sub_1934DE90C(a1 + v75, v2);
  sub_1934DE90C(a2 + v75, v2 + v76);
  v77 = v96;
  OUTLINED_FUNCTION_6_3(v2, 1, v96);
  if (v26)
  {
    OUTLINED_FUNCTION_6_3(v2 + v76, 1, v77);
    if (v26)
    {
      sub_193442B60(v2, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_87;
    }

    goto LABEL_83;
  }

  sub_1934DE90C(v2, v13);
  OUTLINED_FUNCTION_6_3(v2 + v76, 1, v77);
  if (v78)
  {
    (*(v7 + 1))(v13, v77);
LABEL_83:
    v74 = v2;
    goto LABEL_84;
  }

  v80 = v98;
  (*(v7 + 4))(v98, v2 + v76, v77);
  OUTLINED_FUNCTION_3_23(&qword_1EAE3A848);
  v81 = sub_19393C550();
  v82 = *(v7 + 1);
  v82(v80, v77);
  v82(v13, v77);
  sub_193442B60(v2, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v81 & 1) == 0)
  {
    return 0;
  }

LABEL_87:
  OUTLINED_FUNCTION_25_3();
  if (v84)
  {
    if ((v83 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_26();
    if (v87)
    {
      return 0;
    }

    v99 = v85;
    v100 = v86 & 1;
    sub_193622660();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3();
  if (!v90)
  {
    return !v88;
  }

  if (!v88)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5(v89);
  v93 = v26 && v91 == v92;
  return v93 || (sub_19393CA30() & 1) != 0;
}

unint64_t sub_193622660()
{
  result = qword_1EAE3F368;
  if (!qword_1EAE3F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F368);
  }

  return result;
}

unint64_t sub_1936226B4()
{
  result = qword_1EAE3F370;
  if (!qword_1EAE3F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F370);
  }

  return result;
}

uint64_t AdAttributionKitConversion.hash(into:)(uint64_t a1)
{
  v3 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v28 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_16_26();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for AdAttributionKitConversion(0);
  v13 = *(v1 + v12[7] + 8);
  if (v13)
  {
    OUTLINED_FUNCTION_8_38();
    OUTLINED_FUNCTION_9_50();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v14 = (v1 + v12[8]);
  if (*(v14 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v13 = *v14;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v13);
  }

  v15 = (v1 + v12[9]);
  if (*(v15 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v16 = *(v15 + 8);
    v29 = *v15;
    v30 = v16 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_193622B08();
    sub_19393C540();
  }

  OUTLINED_FUNCTION_22_28();
  if (v13)
  {
    OUTLINED_FUNCTION_8_38();
    OUTLINED_FUNCTION_9_50();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v17 = (v1 + v12[11]);
  if (*(v17 + 4) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v13 = *v17;
    OUTLINED_FUNCTION_103_0();
    sub_19393CAE0();
  }

  v18 = (v1 + v12[12]);
  if (*(v18 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v13 = *v18;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v13);
  }

  OUTLINED_FUNCTION_22_28();
  if (v13)
  {
    OUTLINED_FUNCTION_8_38();
    OUTLINED_FUNCTION_9_50();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_22_28();
  if (v13)
  {
    OUTLINED_FUNCTION_8_38();
    OUTLINED_FUNCTION_9_50();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_22_28();
  if (v13)
  {
    OUTLINED_FUNCTION_8_38();
    OUTLINED_FUNCTION_9_50();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  sub_1934DE90C(v1 + v12[16], v11);
  OUTLINED_FUNCTION_6_3(v11, 1, v3);
  if (v19)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v20 = v28;
    (*(v28 + 32))(v7, v11, v3);
    OUTLINED_FUNCTION_103_0();
    v21 = OUTLINED_FUNCTION_1_25(&qword_1EAE3B978);
    OUTLINED_FUNCTION_27_21(v21);
    (*(v20 + 8))(v7, v3);
  }

  sub_1934DE90C(v1 + v12[17], v2);
  OUTLINED_FUNCTION_6_3(v2, 1, v3);
  if (v19)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v22 = v28;
    (*(v28 + 32))(v7, v2, v3);
    OUTLINED_FUNCTION_103_0();
    v23 = OUTLINED_FUNCTION_1_25(&qword_1EAE3B978);
    OUTLINED_FUNCTION_27_21(v23);
    (*(v22 + 8))(v7, v3);
  }

  v24 = (v1 + v12[18]);
  if (*(v24 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v25 = *(v24 + 8);
    v29 = *v24;
    v30 = v25 & 1;
    OUTLINED_FUNCTION_103_0();
    sub_193622B5C();
    sub_19393C540();
  }

  if (!*(v1 + v12[19] + 8))
  {
    return OUTLINED_FUNCTION_104_0();
  }

  OUTLINED_FUNCTION_103_0();
  return sub_19393C640();
}

unint64_t sub_193622B08()
{
  result = qword_1EAE3F378;
  if (!qword_1EAE3F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F378);
  }

  return result;
}

unint64_t sub_193622B5C()
{
  result = qword_1EAE3F380;
  if (!qword_1EAE3F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F380);
  }

  return result;
}

void AdAttributionKitConversionType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v2 = 2;
  if (a2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 != 3)
  {
    v2 = v3;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

char *static AdAttributionKitConversionType.allCases.getter()
{
  sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F3A0, &qword_193973F58);
  OUTLINED_FUNCTION_17_27();
  if (!(!v9 & v8))
  {
    v26 = OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_84_2(v26, v27, v28, v29, &qword_1EAE3F3A0, &qword_193973F58);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_15_5(v3, v4, v5, v6);
  if (v15 != v16)
  {
    v30 = OUTLINED_FUNCTION_39(v14);
    sub_1934B0FCC(v30, v1, 1, v31, &qword_1EAE3F3A0, &qword_193973F58);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_10_36(v10, v11, v12, v13);
  if (v15 != v16)
  {
    v32 = OUTLINED_FUNCTION_39(v21);
    v17 = OUTLINED_FUNCTION_84_2(v32, v33, v34, v35, &qword_1EAE3F3A0, &qword_193973F58);
    v20 = v17;
  }

  OUTLINED_FUNCTION_20_27(v17, v18, v19, v20);
  v23 = *(v22 + 3);
  if (v2 + 4 > (v23 >> 1))
  {
    v36 = OUTLINED_FUNCTION_39(v23);
    v22 = sub_1934B0FCC(v36, v2 + 4, 1, v37, &qword_1EAE3F3A0, &qword_193973F58);
  }

  *(v22 + 2) = v2 + 4;
  v24 = &v22[16 * v0];
  *(v24 + 4) = 2;
  v24[40] = 1;
  return v22;
}

uint64_t AdAttributionKitConversionType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  v1 = 0x6F6C6E776F646552;
  if (*v0 != 1)
  {
    v1 = 0x656761676E656552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64616F6C6E776F44;
  }
}

uint64_t AdAttributionKitConversionType.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
    goto LABEL_14;
  }

  v9 = v2 == 0x64616F6C6E776F44 && v1 == 0xE800000000000000;
  if (v9 || (OUTLINED_FUNCTION_0_9(0x64616F6C6E776F44, 0xE800000000000000) & 1) != 0)
  {

    v7 = 0;
LABEL_13:
    v8 = 1;
    goto LABEL_14;
  }

  v10 = v2 == 0x6F6C6E776F646552 && v1 == 0xEA00000000006461;
  if (v10 || (OUTLINED_FUNCTION_0_9(0x6F6C6E776F646552, 0xEA00000000006461) & 1) != 0)
  {

    v7 = 1;
    goto LABEL_13;
  }

  if (v2 == 0x656761676E656552 && v1 == 0xEC000000746E656DLL)
  {

    v8 = 1;
    v7 = 2;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_9(0x656761676E656552, 0xEC000000746E656DLL);

    v7 = 2;
    if ((v8 & 1) == 0)
    {
      v7 = 0;
    }
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

void AdAttributionKitAdInteractionType.init(rawValue:)(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 1)
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_21(a1);
}

uint64_t AdAttributionKitAdInteractionType.rawValue.getter()
{
  v1 = 1;
  if (*v0)
  {
    v1 = 2;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t static AdAttributionKitAdInteractionType.allCases.getter()
{
  sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F398, &qword_193973F50);
  OUTLINED_FUNCTION_17_27();
  if (!(!v7 & v6))
  {
    v22 = OUTLINED_FUNCTION_39(v5);
    OUTLINED_FUNCTION_84_2(v22, v23, v24, v25, &qword_1EAE3F398, &qword_193973F50);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_15_5(v1, v2, v3, v4);
  if (v13 != v14)
  {
    v26 = OUTLINED_FUNCTION_39(v12);
    sub_1934B0FCC(v26, v0, 1, v27, &qword_1EAE3F398, &qword_193973F50);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_10_36(v8, v9, v10, v11);
  if (v13 != v14)
  {
    v28 = OUTLINED_FUNCTION_39(v19);
    v15 = OUTLINED_FUNCTION_84_2(v28, v29, v30, v31, &qword_1EAE3F398, &qword_193973F50);
    v18 = v15;
  }

  OUTLINED_FUNCTION_20_27(v15, v16, v17, v18);
  return v20;
}

uint64_t AdAttributionKitAdInteractionType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  if (*v0)
  {
    return 0x6B63696C43;
  }

  return 2003134806;
}

uint64_t AdAttributionKitAdInteractionType.init(_:)()
{
  v3 = OUTLINED_FUNCTION_0_15();
  v5 = v5 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_0_9(v3, 0xE700000000000000) & 1) != 0)
  {

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v2 == 2003134806 && v1 == 0xE400000000000000;
    if (v9 || (OUTLINED_FUNCTION_0_9(2003134806, 0xE400000000000000) & 1) != 0)
    {

      v7 = 0;
    }

    else
    {
      if (v2 != 0x6B63696C43 || v1 != 0xE500000000000000)
      {
        v8 = OUTLINED_FUNCTION_0_9(0x6B63696C43, 0xE500000000000000);

        v7 = v8 & 1;
        goto LABEL_14;
      }

      v7 = 1;
    }

    v8 = 1;
  }

LABEL_14:
  *v0 = v7;
  *(v0 + 8) = v8 & 1;
  *(v0 + 9) = 0;
  return result;
}

unint64_t sub_193623130()
{
  result = qword_1EAE3F388;
  if (!qword_1EAE3F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F388);
  }

  return result;
}

unint64_t sub_193623188()
{
  result = qword_1EAE3F390;
  if (!qword_1EAE3F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F390);
  }

  return result;
}

void sub_1936231DC()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB5E8);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v42, xmmword_193952680);
  *v1 = 1;
  *v0 = "conversionID";
  *(v0 + 8) = 12;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v8 = 2;
  *v7 = "advertisedItemID";
  v7[1] = 16;
  v9 = OUTLINED_FUNCTION_41(v7);
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 3;
  *v10 = "conversionType";
  v10[1] = 14;
  v12 = OUTLINED_FUNCTION_41(v10);
  (v6)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v14 = 4;
  *v13 = "adNetworkID";
  v13[1] = 11;
  v15 = OUTLINED_FUNCTION_41(v13);
  (v6)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v17 = 5;
  *v16 = "sourceID";
  v16[1] = 8;
  v18 = OUTLINED_FUNCTION_41(v16);
  (v6)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 5 * v4);
  *v20 = 6;
  *v19 = "publisherItemID";
  v19[1] = 15;
  v21 = OUTLINED_FUNCTION_41(v19);
  (v6)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v23 = 7;
  *v22 = "sourceDomain";
  v22[1] = 12;
  v24 = OUTLINED_FUNCTION_41(v22);
  (v6)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 7 * v4);
  *v26 = 8;
  *v25 = "marketplaceID";
  v25[1] = 13;
  v27 = OUTLINED_FUNCTION_41(v25);
  (v6)(v27);
  v28 = OUTLINED_FUNCTION_3_1(&v1[v4]);
  *v29 = 9;
  *v28 = "storefrontID";
  v28[1] = 12;
  v30 = OUTLINED_FUNCTION_41(v28);
  (v6)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v1 + 9 * v4);
  *v32 = 10;
  *v31 = "impressionDate";
  v31[1] = 14;
  v33 = OUTLINED_FUNCTION_41(v31);
  (v6)(v33);
  v34 = OUTLINED_FUNCTION_3_1(v1 + 10 * v4);
  *v35 = 11;
  *v34 = "conversionDate";
  v34[1] = 14;
  v36 = OUTLINED_FUNCTION_41(v34);
  (v6)(v36);
  v37 = OUTLINED_FUNCTION_3_1(v1 + 11 * v4);
  *v38 = 12;
  *v37 = "adInteractionType";
  v37[1] = 17;
  v39 = OUTLINED_FUNCTION_41(v37);
  (v6)(v39);
  v40 = OUTLINED_FUNCTION_3_1(v1 + 12 * v4);
  *v41 = 13;
  *v40 = "countryCode";
  *(v40 + 8) = 11;
  *(v40 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_19362356C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v8 = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 1:
        v10 = *(type metadata accessor for AdAttributionKitConversion(0) + 28);
        goto LABEL_19;
      case 2:
        v13 = *(type metadata accessor for AdAttributionKitConversion(0) + 32);
        goto LABEL_14;
      case 3:
      case 12:
        type metadata accessor for AdAttributionKitConversion(0);
        sub_1934982A8();
        goto LABEL_20;
      case 4:
        v10 = *(type metadata accessor for AdAttributionKitConversion(0) + 40);
        goto LABEL_19;
      case 5:
        v11 = type metadata accessor for AdAttributionKitConversion(0);
        OUTLINED_FUNCTION_8_2(*(v11 + 44));
        sub_19393C220();
        goto LABEL_20;
      case 6:
        v13 = *(type metadata accessor for AdAttributionKitConversion(0) + 48);
LABEL_14:
        OUTLINED_FUNCTION_8_2(v13);
        sub_19393C230();
        goto LABEL_20;
      case 7:
        v10 = *(type metadata accessor for AdAttributionKitConversion(0) + 52);
        goto LABEL_19;
      case 8:
        v10 = *(type metadata accessor for AdAttributionKitConversion(0) + 56);
        goto LABEL_19;
      case 9:
        v10 = *(type metadata accessor for AdAttributionKitConversion(0) + 60);
        goto LABEL_19;
      case 10:
        v12 = *(type metadata accessor for AdAttributionKitConversion(0) + 64);
        goto LABEL_17;
      case 11:
        v12 = *(type metadata accessor for AdAttributionKitConversion(0) + 68);
LABEL_17:
        sub_1934976E4(v3 + v12, 2020175477, 0xE400000000000000, a2, a3);
        goto LABEL_20;
      case 13:
        v10 = *(type metadata accessor for AdAttributionKitConversion(0) + 76);
LABEL_19:
        OUTLINED_FUNCTION_8_2(v10);
        sub_19393C200();
LABEL_20:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_193623764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = type metadata accessor for AdAttributionKitConversion(0);
  OUTLINED_FUNCTION_16_4();
  if (v9)
  {
    OUTLINED_FUNCTION_2_7(*v10, v9, 1);
    v5 = v4;
  }

  if (!v5)
  {
    if ((*(v3 + v8[8] + 8) & 1) != 0 || (OUTLINED_FUNCTION_15_11(), sub_19393C3E0(), (v5 = v4) == 0))
    {
      if ((*(v3 + v8[9] + 9) & 1) != 0 || (OUTLINED_FUNCTION_147(), v4 = v5, sub_193447324(v21, 3, a2, &type metadata for AdAttributionKitConversionType, a3, &off_1F07D9020), !v5))
      {
        OUTLINED_FUNCTION_16_4();
        if (!v11 || (OUTLINED_FUNCTION_2_7(*v12, v11, 4), !v4))
        {
          if ((*(v3 + v8[11] + 4) & 1) != 0 || (OUTLINED_FUNCTION_15_11(), sub_19393C3D0(), !v4))
          {
            if ((*(v3 + v8[12] + 8) & 1) != 0 || (OUTLINED_FUNCTION_15_11(), sub_19393C3E0(), !v4))
            {
              OUTLINED_FUNCTION_16_4();
              if (!v13 || (OUTLINED_FUNCTION_2_7(*v14, v13, 7), !v4))
              {
                OUTLINED_FUNCTION_16_4();
                if (!v15 || (OUTLINED_FUNCTION_2_7(*v16, v15, 8), !v4))
                {
                  OUTLINED_FUNCTION_16_4();
                  if (!v17 || (OUTLINED_FUNCTION_2_7(*v18, v17, 9), !v4))
                  {
                    OUTLINED_FUNCTION_79();
                    sub_19362399C();
                    if (!v4)
                    {
                      OUTLINED_FUNCTION_79();
                      sub_193623AD8();
                      if ((*(v3 + v8[18] + 9) & 1) == 0)
                      {
                        OUTLINED_FUNCTION_147();
                        sub_193447324(v21, 12, a2, &type metadata for AdAttributionKitAdInteractionType, a3, &off_1F07D9048);
                      }

                      OUTLINED_FUNCTION_16_4();
                      if (v19)
                      {
                        OUTLINED_FUNCTION_2_7(*v20, v19, 13);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_19362399C()
{
  OUTLINED_FUNCTION_9_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_10_37();
  sub_1934DE90C(v3 + *(v6 + 64), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    return sub_1934DFCD4(v2);
  }

  v8 = OUTLINED_FUNCTION_7_16();
  v9(v8);
  OUTLINED_FUNCTION_3_24(v1, 10);
  v10 = OUTLINED_FUNCTION_12_15();
  return v11(v10);
}

uint64_t sub_193623AD8()
{
  OUTLINED_FUNCTION_9_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_76();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_10_37();
  sub_1934DE90C(v3 + *(v6 + 68), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    return sub_1934DFCD4(v2);
  }

  v8 = OUTLINED_FUNCTION_7_16();
  v9(v8);
  OUTLINED_FUNCTION_3_24(v1, 11);
  v10 = OUTLINED_FUNCTION_12_15();
  return v11(v10);
}

uint64_t sub_193623C14(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3F3A8;

  return v1;
}

void sub_193623CB0()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB600);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBC0);
  *v1 = 0;
  *v0 = "AdAttributionKitConversionTypeUnknown";
  *(v0 + 8) = 37;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  *v8 = "Download";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 2;
  *v10 = "Redownload";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  v12 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v13 = 3;
  *v12 = "Reengagement";
  *(v12 + 8) = 12;
  *(v12 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193623EBC()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB618);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_19394FBB0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + dword_1EAEAB650;
  *v6 = 0;
  *v7 = "AdAttributionKitAdInteractionTypeUnknown";
  *(v7 + 8) = 40;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_19393C400();
  OUTLINED_FUNCTION_4_1();
  v11 = *(v10 + 104);
  (v11)(v7, v8, v9);
  v12 = OUTLINED_FUNCTION_3_1(v6 + v2);
  *v13 = 1;
  *v12 = "View";
  *(v12 + 8) = 4;
  *(v12 + 16) = 2;
  v11();
  v14 = OUTLINED_FUNCTION_3_1(v6 + 2 * v2);
  *v15 = 2;
  *v14 = "Click";
  *(v14 + 8) = 5;
  *(v14 + 16) = 2;
  v11();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t AdAttributionKitConversion.writeTimestamp.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AdAttributionKitConversion(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 20));
}

uint64_t type metadata accessor for AdAttributionKitConversion(uint64_t a1)
{
  result = qword_1ED50DF20;
  if (!qword_1ED50DF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdAttributionKitConversion.bookmark.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AdAttributionKitConversion(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3AA00, &unk_19394F8F0, *(v1 + 24));
}

uint64_t AdAttributionKitConversion.conversionID.getter()
{
  type metadata accessor for AdAttributionKitConversion(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitConversion.conversionID.setter()
{
  OUTLINED_FUNCTION_3_44();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void AdAttributionKitConversion.conversionType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AdAttributionKitConversion(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 36));
}

uint64_t AdAttributionKitConversion.adNetworkID.getter()
{
  type metadata accessor for AdAttributionKitConversion(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitConversion.adNetworkID.setter()
{
  OUTLINED_FUNCTION_3_44();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitConversion.sourceID.setter()
{
  result = OUTLINED_FUNCTION_7_30();
  v3 = v1 + *(result + 44);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t AdAttributionKitConversion.sourceDomain.getter()
{
  type metadata accessor for AdAttributionKitConversion(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitConversion.sourceDomain.setter()
{
  OUTLINED_FUNCTION_3_44();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitConversion.marketplaceID.getter()
{
  type metadata accessor for AdAttributionKitConversion(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitConversion.marketplaceID.setter()
{
  OUTLINED_FUNCTION_3_44();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitConversion.storefrontID.getter()
{
  type metadata accessor for AdAttributionKitConversion(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitConversion.storefrontID.setter()
{
  OUTLINED_FUNCTION_3_44();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitConversion.impressionDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AdAttributionKitConversion(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 64));
}

uint64_t AdAttributionKitConversion.conversionDate.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AdAttributionKitConversion(v0);
  return OUTLINED_FUNCTION_9_11(&qword_1EAE3A9E8, &qword_19394F800, *(v1 + 68));
}

void AdAttributionKitConversion.adInteractionType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AdAttributionKitConversion(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 72));
}

uint64_t AdAttributionKitConversion.countryCode.getter()
{
  type metadata accessor for AdAttributionKitConversion(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitConversion.countryCode.setter()
{
  OUTLINED_FUNCTION_3_44();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitConversion.hashValue.getter()
{
  sub_19393CAB0();
  AdAttributionKitConversion.hash(into:)(v1);
  return sub_19393CB00();
}

uint64_t sub_193624AF8(uint64_t a1)
{
  sub_19393CAB0();
  AdAttributionKitConversion.hash(into:)(v2);
  return sub_19393CB00();
}

unint64_t sub_193624B38()
{
  result = qword_1EAE3F3B8;
  if (!qword_1EAE3F3B8)
  {
    type metadata accessor for AdAttributionKitConversion(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F3B8);
  }

  return result;
}

uint64_t sub_193624B9C@<X0>(uint64_t *a1@<X8>)
{
  result = AdAttributionKitConversionType.rawValue.getter();
  *a1 = result;
  return result;
}

char *sub_193624BF4@<X0>(char **a1@<X8>)
{
  result = static AdAttributionKitConversionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193624C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v4 = a3();
  MEMORY[0x193B18030](v4);
  return sub_19393CB00();
}

uint64_t sub_193624D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_19393CAB0();
  OUTLINED_FUNCTION_18();
  v5 = a4();
  MEMORY[0x193B18030](v5);
  return sub_19393CB00();
}

uint64_t sub_193624E68@<X0>(uint64_t *a1@<X8>)
{
  result = AdAttributionKitAdInteractionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193624EC0@<X0>(uint64_t *a1@<X8>)
{
  result = static AdAttributionKitAdInteractionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_193624FE4(uint64_t a1)
{
  sub_19349D140(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_19349D198(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, &qword_1ED508290, MEMORY[0x1E69E6158]);
    if (v7 > 0x3F)
    {
      return v6;
    }

    sub_19349D1FC(319, &qword_1ED508070, MEMORY[0x1E69E76D8]);
    if (v9 > 0x3F)
    {
      return v8;
    }

    sub_19349D1FC(319, &qword_1ED506760, &type metadata for AdAttributionKitConversionType);
    if (v10 > 0x3F)
    {
      return v4;
    }

    sub_19349D1FC(319, qword_1ED506E98, MEMORY[0x1E69E7668]);
    if (v11 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_19349D1FC(319, &qword_1ED502E98, &type metadata for AdAttributionKitAdInteractionType);
      v2 = v12;
      if (v13 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AdAttributionKitPurchase.json()()
{
  v1 = v0;
  v25 = sub_19393C090();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for AdAttributionKitPurchase(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F3E0, &qword_1939742D0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_193625398(v1, v12);
  sub_1934470C8(v12, v8, v15);
  sub_19393C080();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v16, &qword_1EAE3F3E0, &qword_1939742D0, v17);
  v18 = sub_19393C250();
  v20 = v19;
  (*(v3 + 8))(v7, v25);
  sub_19344E6DC(v15, &qword_1EAE3F3E0, &qword_1939742D0);
  v21 = v18;
  v22 = v20;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_193625398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitPurchase(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AdAttributionKitPurchase.event(from:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_19393C070();
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F3E0, &qword_1939742D0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;

  sub_19393C060();
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3F3E0, &qword_1939742D0, v10);
  result = sub_19393C260();
  if (!v3)
  {
    return sub_19362553C(v8, a3);
  }

  return result;
}

uint64_t sub_19362553C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdAttributionKitPurchase(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AdAttributionKitPurchase.event(from:dataVersion:writeTimestamp:bookmark:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a5;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F3E0, &qword_1939742D0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_19393C0C0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - v19;
  if (*sub_1936284F4() == a3)
  {
    sub_19393C0B0();
    sub_19393C0A0();
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    (*(v14 + 16))(v18, v20, v12);
    sub_193450688(a1, a2);
    OUTLINED_FUNCTION_0_8();
    sub_19344A3FC(v21, v22, v23, v24);
    v25 = v41;
    sub_19393C280();
    if (v25)
    {
      return (*(v14 + 8))(v20, v12);
    }

    else
    {
      (*(v14 + 8))(v20, v12);
      v28 = v36;
      sub_19362553C(v11, v36);
      v29 = type metadata accessor for AdAttributionKitPurchase(0);
      v30 = *(v29 + 20);
      sub_19344E6DC(v28 + v30, &qword_1EAE3A9E8, &qword_19394F800);
      v31 = sub_19393BE00();
      OUTLINED_FUNCTION_4_1();
      (*(v32 + 16))(v28 + v30, v35, v31);
      __swift_storeEnumTagSinglePayload(v28 + v30, 0, 1, v31);
      v33 = *(v29 + 24);
      sub_19344E6DC(v28 + v33, &qword_1EAE3AA00, &unk_19394F8F0);
      return sub_1934970B0(v37, v28 + v33);
    }
  }

  else
  {
    sub_19349AB64();
    OUTLINED_FUNCTION_11();
    swift_allocError();
    *v27 = a3;
    *(v27 + 48) = 0;
    return swift_willThrow();
  }
}

uint64_t AdAttributionKitPurchase.serialize()()
{
  v1 = type metadata accessor for AdAttributionKitPurchase(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_1();
  v5 = v4 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3F3E0, &qword_1939742D0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  sub_193625398(v0, v5);
  sub_1934470C8(v5, v1, v8);
  OUTLINED_FUNCTION_0_8();
  sub_19344A3FC(v9, &qword_1EAE3F3E0, &qword_1939742D0, v10);
  v11 = sub_19393C290();
  sub_19344E6DC(v8, &qword_1EAE3F3E0, &qword_1939742D0);
  return v11;
}

id static AdAttributionKitPurchase.columns.getter()
{
  v227 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AB30, &qword_193950B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_193950B10;
  v2 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_3_9(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  sub_19343CF00(0, &unk_1ED5082A0, 0x1E696AD98);
  *(v0 + 32) = sub_19393C850();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v13, v14, v15, v16, v0, 5, 0);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_12_24(result);
  v18 = swift_initStackObject();
  OUTLINED_FUNCTION_5_10(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  v28 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v28[2].n128_u64[0] = sub_19393C850();
  v38 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v39 = OUTLINED_FUNCTION_21_4();
  result = OUTLINED_FUNCTION_15_12(v39, 0xEC00000044496E6FLL);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_12_24(result);
  v40 = swift_initStackObject();
  OUTLINED_FUNCTION_5_10(v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v50 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
  v50[2].n128_u64[0] = sub_19393C850();
  v60 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_20_28();
  OUTLINED_FUNCTION_19_31();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v61, v62, v63, v64, v50, 3, 0);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_24(result);
  v65 = swift_initStackObject();
  OUTLINED_FUNCTION_5_10(v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
  v75 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84);
  v75[2].n128_u64[0] = sub_19393C850();
  v85 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  v86 = OUTLINED_FUNCTION_23_12();
  result = OUTLINED_FUNCTION_15_12(v86, 0xEC0000004449746ELL);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_12_24(result);
  v87 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v87, v88, v89, v90, v91, v92, v93, v94, v95, v96);
  v97 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
  v107 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v107);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v108, v109, v110, v111, inited, 4, 0);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_2(result);
  v112 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
  v122 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  v132 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v132);
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v133, v134, v135, v136, inited, 4, 0);
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_7_2(result);
  v137 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
  v147 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v147, v148, v149, v150, v151, v152, v153, v154, v155, v156);
  v157 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v157);
  v158 = OUTLINED_FUNCTION_24_4();
  result = sub_19343D150(v158, 0xEC00000065746144, 3, 0, inited, 0, 2);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_2(result);
  v159 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v159, v160, v161, v162, v163, v164, v165, v166, v167, v168);
  v169 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
  v179 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v179);
  v180 = OUTLINED_FUNCTION_22_29();
  result = OUTLINED_FUNCTION_3_5(v180, 0xEC00000065646F43);
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_2(result);
  v181 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v181, v182, v183, v184, v185, v186, v187, v188, v189, v190);
  v191 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_5_10(v191, v192, v193, v194, v195, v196, v197, v198, v199, v200);
  v201 = sub_19393C850();
  OUTLINED_FUNCTION_22_13(v201);
  result = OUTLINED_FUNCTION_3_5(0xD000000000000028, 0x8000000193A29F70);
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_7_2(result);
  v202 = swift_initStackObject();
  OUTLINED_FUNCTION_3_9(v202, v203, v204, v205, v206, v207, v208, v209, v210, v211);
  v212 = OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_2_13(v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
  v212[2].n128_u64[0] = sub_19393C850();
  v222 = objc_allocWithZone(MEMORY[0x1E698F2E8]);
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_11();
  result = sub_19343D150(v223, v224, v225, v226, v212, 3, 0);
  if (result)
  {
    OUTLINED_FUNCTION_7_2(result);
    return v227;
  }

LABEL_21:
  __break(1u);
  return result;
}

int *sub_193625E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v64 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  v10 = sub_19393BE00();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_1();
  v16 = v15 - v14;
  v17 = a1 == 0xD000000000000010 && 0x8000000193A29DA0 == a2;
  if (v17 || (v18 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_59_0(v18, v19) & 1) != 0))
  {
    result = type metadata accessor for AdAttributionKitPurchase(0);
    v21 = v3 + result[7];
    if (*(v21 + 8))
    {
LABEL_7:
      v22 = v64;
      *v64 = 0u;
      v22[1] = 0u;
      return result;
    }

    v65 = *v21;
    return sub_1934948FC();
  }

  v63 = v4;
  v23 = OUTLINED_FUNCTION_21_4();
  v24 = a1 == v23 && a2 == 0xEC00000044496E6FLL;
  if (v24 || (OUTLINED_FUNCTION_59_0(v23, 0xEC00000044496E6FLL) & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase(0);
    v25 = result[8];
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_19_31();
  v28 = OUTLINED_FUNCTION_20_28();
  v30 = a1 == v28 && a2 == v29;
  if (v30 || (OUTLINED_FUNCTION_59_0(v28, v29) & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase(0);
    v31 = result[9];
    goto LABEL_24;
  }

  v34 = OUTLINED_FUNCTION_23_12();
  v35 = a1 == v34 && a2 == 0xEC0000004449746ELL;
  if (v35 || (OUTLINED_FUNCTION_59_0(v34, 0xEC0000004449746ELL) & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase(0);
    v36 = (v3 + result[10]);
    v37 = v36[1];
    if (!v37)
    {
      goto LABEL_7;
    }

    v65 = *v36;
    v66 = v37;
    return sub_1934948FC();
  }

  OUTLINED_FUNCTION_187_1();
  v40 = a1 == v39 + 1 && v38 == a2;
  if (v40 || (OUTLINED_FUNCTION_59_0(v39 + 1, v38) & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase(0);
    v41 = v3 + result[11];
    if (*(v41 + 9))
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

  OUTLINED_FUNCTION_187_1();
  v44 = a1 == v43 + 17 && v42 == a2;
  if (v44 || (OUTLINED_FUNCTION_59_0(v43 + 17, v42) & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase(0);
    v41 = v3 + result[12];
    if (*(v41 + 9))
    {
      goto LABEL_7;
    }

LABEL_40:
    OUTLINED_FUNCTION_43_1(v41);
    return sub_1934948FC();
  }

  v45 = OUTLINED_FUNCTION_24_4();
  v47 = a1 == v45 && a2 == v46;
  if (v47 || (OUTLINED_FUNCTION_59_0(v45, v46) & 1) != 0)
  {
    v48 = type metadata accessor for AdAttributionKitPurchase(0);
    sub_1934DE90C(v3 + *(v48 + 52), v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      result = sub_19344E6DC(v9, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_7;
    }

    (*(v12 + 32))(v16, v9, v10);
    sub_1934948FC();
    return (*(v12 + 8))(v16, v10);
  }

  v49 = OUTLINED_FUNCTION_22_29();
  v51 = a1 == v49 && a2 == v50;
  if (v51 || (OUTLINED_FUNCTION_59_0(v49, v50) & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase(0);
    v25 = result[14];
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_187_1();
  v54 = a1 == v53 + 24 && v52 == a2;
  if (v54 || (OUTLINED_FUNCTION_59_0(v53 + 24, v52) & 1) != 0)
  {
    result = type metadata accessor for AdAttributionKitPurchase(0);
    v25 = result[15];
LABEL_15:
    v26 = (v3 + v25);
    v27 = *(v3 + v25 + 8);
    if (v27)
    {
      v65 = *v26;
      v66 = v27;
      return sub_1934948FC();
    }

LABEL_25:
    v33 = v64;
    *v64 = 0u;
    v33[1] = 0u;
    return result;
  }

  OUTLINED_FUNCTION_187_1();
  v57 = a1 == v56 && v55 == a2;
  if (v57 || (v58 = OUTLINED_FUNCTION_27_0(), (OUTLINED_FUNCTION_59_0(v58, v59) & 1) != 0))
  {
    result = type metadata accessor for AdAttributionKitPurchase(0);
    v31 = result[16];
LABEL_24:
    v32 = (v3 + v31);
    if ((v32[1] & 1) == 0)
    {
      v65 = *v32;
      return sub_1934948FC();
    }

    goto LABEL_25;
  }

  sub_19349AB64();
  OUTLINED_FUNCTION_11();
  swift_allocError();
  v61 = v60;
  *v60 = a1;
  v60[1] = a2;
  v60[5] = type metadata accessor for AdAttributionKitPurchase(0);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v61 + 2);
  sub_193625398(v3, boxed_opaque_existential_1Tm);
  *(v61 + 48) = 1;
  swift_willThrow();
}

uint64_t AdAttributionKitPurchase.init()@<X0>(_DWORD *a1@<X8>)
{
  v2 = type metadata accessor for AdAttributionKitPurchase(0);
  v3 = v2[5];
  sub_1934E0648();
  v4 = a1 + v2[6];
  sub_19344B5D8(v4);
  v16 = a1 + v2[7];
  j__OUTLINED_FUNCTION_8_11();
  v15 = (a1 + v2[8]);
  j__OUTLINED_FUNCTION_10_1();
  v13 = a1 + v2[9];
  j__OUTLINED_FUNCTION_8_11();
  v5 = (a1 + v2[10]);
  j__OUTLINED_FUNCTION_10_1();
  v6 = a1 + v2[11];
  j__OUTLINED_FUNCTION_131(v6);
  v7 = a1 + v2[12];
  OUTLINED_FUNCTION_131(v7);
  v8 = v2[13];
  sub_19349C79C();
  v14 = (a1 + v2[14]);
  j__OUTLINED_FUNCTION_10_1();
  v9 = (a1 + v2[15]);
  j__OUTLINED_FUNCTION_10_1();
  v10 = a1 + v2[16];
  j__OUTLINED_FUNCTION_8_11();
  *a1 = *sub_1936284F4();
  sub_193442B60(a1 + v3, &qword_1EAE3A9E8, &qword_19394F800);
  v11 = sub_19393BE00();
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v11);
  sub_193442B60(v4, &qword_1EAE3AA00, &unk_19394F8F0);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;

  *v16 = 0;
  v16[8] = 1;
  *v15 = 0;
  v15[1] = 0;
  *v13 = 0;
  v13[8] = 1;
  *v5 = 0;
  v5[1] = 0;
  *v6 = 0;
  *(v6 + 4) = 256;
  *v7 = 0;
  *(v7 + 4) = 256;
  sub_193442B60(a1 + v8, &qword_1EAE3A9E8, &qword_19394F800);
  __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v11);

  *v14 = 0;
  v14[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  *v10 = 0;
  v10[8] = 1;
  return result;
}

BOOL static AdAttributionKitPurchase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_19393BE00();
  OUTLINED_FUNCTION_23_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21_27();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3B968, &qword_193972430);
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_30_16();
  OUTLINED_FUNCTION_32_2();
  if (v16)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v17)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v20)
  {
    if (!v18)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v19);
    v23 = v23 && v21 == v22;
    if (!v23 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_2();
  if (v25)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    if (v26)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_3();
  if (v29)
  {
    if (!v27)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v28);
    v32 = v23 && v30 == v31;
    if (!v32 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_3();
  if (v34)
  {
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_26();
    if (v37)
    {
      return 0;
    }

    v64 = v35;
    v65 = v36 & 1;
    sub_193626A04();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_25_3();
  if (v39)
  {
    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_26();
    if (v42)
    {
      return 0;
    }

    v64 = v40;
    v65 = v41 & 1;
    sub_1936269B0();
    if ((sub_19393C550() & 1) == 0)
    {
      return 0;
    }
  }

  v43 = *(v14 + 52);
  v44 = *(v13 + 48);
  sub_1934DE90C(a1 + v43, v4);
  sub_1934DE90C(a2 + v43, v4 + v44);
  OUTLINED_FUNCTION_13_25(v4);
  if (v23)
  {
    OUTLINED_FUNCTION_13_25(v4 + v44);
    if (v23)
    {
      sub_193442B60(v4, &qword_1EAE3A9E8, &qword_19394F800);
      goto LABEL_48;
    }

LABEL_45:
    sub_193442B60(v4, &qword_1EAE3B968, &qword_193972430);
    return 0;
  }

  sub_1934DE90C(v4, v12);
  OUTLINED_FUNCTION_13_25(v4 + v44);
  if (v45)
  {
    (*(v8 + 8))(v12, v2);
    goto LABEL_45;
  }

  (*(v8 + 32))(v3, v4 + v44, v2);
  sub_1934DF3E8(&qword_1EAE3A848, MEMORY[0x1E6969550]);
  v47 = sub_19393C550();
  v48 = *(v8 + 8);
  v48(v3, v2);
  v48(v12, v2);
  sub_193442B60(v4, &qword_1EAE3A9E8, &qword_19394F800);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  OUTLINED_FUNCTION_3();
  if (v51)
  {
    if (!v49)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v50);
    v54 = v23 && v52 == v53;
    if (!v54 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3();
  if (v57)
  {
    if (!v55)
    {
      return 0;
    }

    OUTLINED_FUNCTION_5(v56);
    v60 = v23 && v58 == v59;
    if (!v60 && (sub_19393CA30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v55)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_2();
  if (v62)
  {
    return v61 != 0;
  }

  OUTLINED_FUNCTION_31_0();
  return (v63 & 1) == 0;
}

unint64_t sub_1936269B0()
{
  result = qword_1EAE3F3F0;
  if (!qword_1EAE3F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F3F0);
  }

  return result;
}

unint64_t sub_193626A04()
{
  result = qword_1EAE3F3F8;
  if (!qword_1EAE3F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F3F8);
  }

  return result;
}

uint64_t AdAttributionKitPurchase.hash(into:)(uint64_t a1)
{
  sub_19393BE00();
  OUTLINED_FUNCTION_23_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_27();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = OUTLINED_FUNCTION_30_16();
  v10 = (v1 + v9[7]);
  if (*(v10 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v11 = *v10;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v11);
  }

  if (*(v1 + v9[8] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v12 = (v1 + v9[9]);
  if (*(v12 + 8) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    v13 = *v12;
    OUTLINED_FUNCTION_103_0();
    MEMORY[0x193B18060](v13);
  }

  if (*(v1 + v9[10] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v14 = v1 + v9[11];
  if (*(v14 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_15_33(v14);
    sub_193626D94();
    sub_19393C540();
  }

  v15 = v1 + v9[12];
  if (*(v15 + 9) == 1)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    OUTLINED_FUNCTION_15_33(v15);
    sub_193626DE8();
    sub_19393C540();
  }

  sub_1934DE90C(v1 + v9[13], v4);
  OUTLINED_FUNCTION_13_25(v4);
  if (v16)
  {
    OUTLINED_FUNCTION_104_0();
  }

  else
  {
    (*(v6 + 32))(v3, v4, v2);
    OUTLINED_FUNCTION_103_0();
    sub_1934DF3E8(&qword_1EAE3B978, MEMORY[0x1E6969540]);
    sub_19393C540();
    (*(v6 + 8))(v3, v2);
  }

  if (*(v1 + v9[14] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  if (*(v1 + v9[15] + 8))
  {
    OUTLINED_FUNCTION_103_0();
    sub_19393C640();
  }

  else
  {
    OUTLINED_FUNCTION_104_0();
  }

  v17 = (v1 + v9[16]);
  if (*(v17 + 8) == 1)
  {
    return OUTLINED_FUNCTION_104_0();
  }

  v19 = *v17;
  OUTLINED_FUNCTION_103_0();
  return MEMORY[0x193B18060](v19);
}

unint64_t sub_193626D94()
{
  result = qword_1EAE3F400;
  if (!qword_1EAE3F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F400);
  }

  return result;
}

unint64_t sub_193626DE8()
{
  result = qword_1EAE3F408;
  if (!qword_1EAE3F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F408);
  }

  return result;
}

uint64_t AdAttributionKitInAppPurchaseType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

uint64_t static AdAttributionKitInAppPurchaseType.allCases.getter()
{
  sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F428, &qword_1939743E0);
  OUTLINED_FUNCTION_16_0();
  if (!(!v7 & v6))
  {
    v32 = OUTLINED_FUNCTION_39(v5);
    OUTLINED_FUNCTION_84_2(v32, v33, v34, v35, &qword_1EAE3F428, &qword_1939743E0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v1, v2, v3, v4);
  if (v13 != v14)
  {
    v36 = OUTLINED_FUNCTION_39(v12);
    OUTLINED_FUNCTION_85(v36, v37, v38, v39, &qword_1EAE3F428, &qword_1939743E0);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v8, v9, v10, v11);
  if (v13 != v14)
  {
    v40 = OUTLINED_FUNCTION_39(v19);
    v15 = sub_1934B0FCC(v40, v0, 1, v41, &qword_1EAE3F428, &qword_1939743E0);
    v18 = v15;
  }

  OUTLINED_FUNCTION_9_7(v15, v16, v17, v18);
  if (!(v13 ^ v14 | v7))
  {
    v42 = OUTLINED_FUNCTION_39(v24);
    v20 = OUTLINED_FUNCTION_84_2(v42, v43, v44, v45, &qword_1EAE3F428, &qword_1939743E0);
    v23 = v20;
  }

  OUTLINED_FUNCTION_3_7(v20, v21, v22, v23);
  if (!(v13 ^ v14 | v7))
  {
    v46 = OUTLINED_FUNCTION_39(v29);
    v25 = OUTLINED_FUNCTION_85(v46, v47, v48, v49, &qword_1EAE3F428, &qword_1939743E0);
    v28 = v25;
  }

  OUTLINED_FUNCTION_20_29(v25, v26, v27, v28);
  return v30;
}

unint64_t AdAttributionKitInAppPurchaseType.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x62616D75736E6F43;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_24_23();
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

void AdAttributionKitInAppPurchaseType.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x62616D75736E6F43 ? (v5 = v0 == 0xEA0000000000656CLL) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x62616D75736E6F43, 0xEA0000000000656CLL) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_24_23();
    v9 = v1 == v7 && v0 == v8;
    if (v9 || (OUTLINED_FUNCTION_0_9(v7, v8) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v10 = v1 == 0xD000000000000018 && 0x8000000193A29FE0 == v0;
      if (v10 || (OUTLINED_FUNCTION_0_9(0xD000000000000018, 0x8000000193A29FE0) & 1) != 0)
      {

        v6 = 2;
      }

      else if (v1 == 0xD000000000000017 && 0x8000000193A29FC0 == v0)
      {

        v6 = 3;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_0_9(0xD000000000000017, 0x8000000193A29FC0);

        v6 = 3;
        if ((v12 & 1) == 0)
        {
          v6 = 0;
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

uint64_t AdAttributionKitInAppPurchaseSubscriptionDuration.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1 - 1;
  v3 = 0;
  switch(v2)
  {
    case 1:
      v3 = 1;
      break;
    case 2:
      v3 = 2;
      break;
    case 3:
      v3 = 3;
      break;
    case 4:
      v3 = 4;
      break;
    case 5:
      v3 = 5;
      break;
    default:
      return OUTLINED_FUNCTION_15_3(v3, a2);
  }

  return OUTLINED_FUNCTION_15_3(v3, a2);
}

char *static AdAttributionKitInAppPurchaseSubscriptionDuration.allCases.getter()
{
  sub_1934B0FCC(0, 1, 1, MEMORY[0x1E69E7CC0], &qword_1EAE3F420, &qword_1939743D8);
  OUTLINED_FUNCTION_16_0();
  if (!(!v9 & v8))
  {
    v39 = OUTLINED_FUNCTION_39(v7);
    OUTLINED_FUNCTION_84_2(v39, v40, v41, v42, &qword_1EAE3F420, &qword_1939743D8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_13_6(v3, v4, v5, v6);
  if (v15 != v16)
  {
    v43 = OUTLINED_FUNCTION_39(v14);
    OUTLINED_FUNCTION_85(v43, v44, v45, v46, &qword_1EAE3F420, &qword_1939743D8);
    OUTLINED_FUNCTION_17_2();
  }

  OUTLINED_FUNCTION_8_5(v10, v11, v12, v13);
  if (v15 != v16)
  {
    v47 = OUTLINED_FUNCTION_39(v21);
    v17 = sub_1934B0FCC(v47, v1, 1, v48, &qword_1EAE3F420, &qword_1939743D8);
    v20 = v17;
  }

  OUTLINED_FUNCTION_9_7(v17, v18, v19, v20);
  if (!(v15 ^ v16 | v9))
  {
    v49 = OUTLINED_FUNCTION_39(v26);
    v22 = OUTLINED_FUNCTION_84_2(v49, v50, v51, v52, &qword_1EAE3F420, &qword_1939743D8);
    v25 = v22;
  }

  OUTLINED_FUNCTION_3_7(v22, v23, v24, v25);
  if (!(v15 ^ v16 | v9))
  {
    v53 = OUTLINED_FUNCTION_39(v31);
    v27 = OUTLINED_FUNCTION_85(v53, v54, v55, v56, &qword_1EAE3F420, &qword_1939743D8);
    v30 = v27;
  }

  OUTLINED_FUNCTION_20_29(v27, v28, v29, v30);
  v33 = *(v32 + 3);
  v34 = v2 + 6;
  if (v2 + 6 > (v33 >> 1))
  {
    v57 = OUTLINED_FUNCTION_39(v33);
    v32 = OUTLINED_FUNCTION_84_2(v57, v58, v59, v60, &qword_1EAE3F420, &qword_1939743D8);
  }

  *(v32 + 2) = v34;
  v35 = &v32[16 * v0];
  *(v35 + 4) = 4;
  v35[40] = v1;
  v36 = *(v32 + 3);
  if (v2 + 7 > (v36 >> 1))
  {
    v61 = OUTLINED_FUNCTION_39(v36);
    v32 = OUTLINED_FUNCTION_85(v61, v62, v63, v64, &qword_1EAE3F420, &qword_1939743D8);
  }

  *(v32 + 2) = v2 + 7;
  v37 = &v32[16 * v34];
  *(v37 + 4) = 5;
  v37[40] = v1;
  return v32;
}

uint64_t AdAttributionKitInAppPurchaseSubscriptionDuration.description.getter()
{
  if (*(v0 + 8) != 1)
  {
    return OUTLINED_FUNCTION_1_5();
  }

  result = 0x6B656557656E4FLL;
  switch(*v0)
  {
    case 1:
      result = 0x68746E6F4D656E4FLL;
      break;
    case 2:
      v2 = 1299150676;
      goto LABEL_7;
    case 3:
      result = OUTLINED_FUNCTION_25_25();
      break;
    case 4:
      v2 = 1299736915;
LABEL_7:
      result = v2 | 0x68746E6F00000000;
      break;
    case 5:
      result = 0x72616559656E4FLL;
      break;
    default:
      return result;
  }

  return result;
}

void AdAttributionKitInAppPurchaseSubscriptionDuration.init(_:)()
{
  v2 = OUTLINED_FUNCTION_0_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_9(v2, 0xE700000000000000) & 1) != 0 || (v1 == 0x6B656557656E4FLL ? (v5 = v0 == 0xE700000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_9(0x6B656557656E4FLL, 0xE700000000000000) & 1) != 0))
  {

    v6 = 0;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_19_32(0x4D656E4Fu);
    v8 = v4 && v0 == 0xE800000000000000;
    if (v8 || (OUTLINED_FUNCTION_0_9(v7, 0xE800000000000000) & 1) != 0)
    {

      v6 = 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_19_32(0x4D6F7754u);
      v10 = v4 && v0 == 0xE900000000000073;
      if (v10 || (OUTLINED_FUNCTION_0_9(v9, 0xE900000000000073) & 1) != 0)
      {

        v6 = 2;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_25_25();
        v13 = v1 == v11 && v0 == v12;
        if (v13 || (OUTLINED_FUNCTION_0_9(v11, v12) & 1) != 0)
        {

          v6 = 3;
        }

        else
        {
          v14 = OUTLINED_FUNCTION_19_32(0x4D786953u);
          v15 = v4 && v0 == 0xE900000000000073;
          if (v15 || (OUTLINED_FUNCTION_0_9(v14, 0xE900000000000073) & 1) != 0)
          {

            v6 = 4;
          }

          else if (v1 == 0x72616559656E4FLL && v0 == 0xE700000000000000)
          {

            v6 = 5;
          }

          else
          {
            v17 = OUTLINED_FUNCTION_0_9(0x72616559656E4FLL, 0xE700000000000000);

            v6 = 5;
            if ((v17 & 1) == 0)
            {
              v6 = 0;
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_1(v6);
}

unint64_t sub_193627660()
{
  result = qword_1EAE3F410;
  if (!qword_1EAE3F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F410);
  }

  return result;
}

unint64_t sub_1936276B8()
{
  result = qword_1EAE3F418;
  if (!qword_1EAE3F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAE3F418);
  }

  return result;
}

void sub_193627728()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, qword_1EAEAB630);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v33, xmmword_193952660);
  *v1 = 1;
  *v0 = "advertisedItemID";
  *(v0 + 8) = 16;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v8 = 2;
  *v7 = "conversionID";
  v7[1] = 12;
  v9 = OUTLINED_FUNCTION_56_0(v7);
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v11 = 3;
  v12 = OUTLINED_FUNCTION_25(v10, "amountCharged");
  (v6)(v12);
  v13 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v14 = 4;
  *v13 = "storefrontID";
  v13[1] = 12;
  v15 = OUTLINED_FUNCTION_56_0(v13);
  (v6)(v15);
  v16 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v17 = 5;
  v18 = OUTLINED_FUNCTION_25(v16, "inAppPurchaseType");
  (v6)(v18);
  v19 = OUTLINED_FUNCTION_3_1(v1 + 5 * v4);
  *v20 = 6;
  v21 = OUTLINED_FUNCTION_25(v19, "inAppPurchaseSubscriptionDuration");
  (v6)(v21);
  v22 = OUTLINED_FUNCTION_3_1(v1 + 6 * v4);
  *v23 = 7;
  *v22 = "purchaseDate";
  v22[1] = 12;
  v24 = OUTLINED_FUNCTION_56_0(v22);
  (v6)(v24);
  v25 = OUTLINED_FUNCTION_3_1(v1 + 7 * v4);
  *v26 = 8;
  *v25 = "currencyCode";
  v25[1] = 12;
  v27 = OUTLINED_FUNCTION_56_0(v25);
  (v6)(v27);
  v28 = OUTLINED_FUNCTION_3_1(&v1[v4]);
  *v29 = 9;
  v30 = OUTLINED_FUNCTION_25(v28, "inAppPurchaseSubscriptionISO8601Duration");
  (v6)(v30);
  v31 = OUTLINED_FUNCTION_3_1(v1 + 9 * v4);
  *v32 = 10;
  *v31 = "amountChargedUSD";
  *(v31 + 8) = 16;
  *(v31 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193627A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  while (1)
  {
    v8 = sub_19393C0E0();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    switch(v8)
    {
      case 1:
        v10 = type metadata accessor for AdAttributionKitPurchase(0);
        OUTLINED_FUNCTION_8_2(*(v10 + 28));
        sub_19393C230();
        goto LABEL_16;
      case 2:
        v12 = *(type metadata accessor for AdAttributionKitPurchase(0) + 32);
        goto LABEL_15;
      case 3:
        v11 = *(type metadata accessor for AdAttributionKitPurchase(0) + 36);
        goto LABEL_8;
      case 4:
        v12 = *(type metadata accessor for AdAttributionKitPurchase(0) + 40);
        goto LABEL_15;
      case 5:
      case 6:
        type metadata accessor for AdAttributionKitPurchase(0);
        sub_1934982A8();
        goto LABEL_16;
      case 7:
        v13 = type metadata accessor for AdAttributionKitPurchase(0);
        sub_1934976E4(v3 + *(v13 + 52), 2020175477, 0xE400000000000000, a2, a3);
        goto LABEL_16;
      case 8:
        v12 = *(type metadata accessor for AdAttributionKitPurchase(0) + 56);
        goto LABEL_15;
      case 9:
        v12 = *(type metadata accessor for AdAttributionKitPurchase(0) + 60);
LABEL_15:
        OUTLINED_FUNCTION_8_2(v12);
        sub_19393C200();
        goto LABEL_16;
      case 10:
        v11 = *(type metadata accessor for AdAttributionKitPurchase(0) + 64);
LABEL_8:
        OUTLINED_FUNCTION_8_2(v11);
        sub_19393C190();
LABEL_16:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

void sub_193627BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = type metadata accessor for AdAttributionKitPurchase(0);
  if ((*(v6 + v10[7] + 8) & 1) == 0)
  {
    OUTLINED_FUNCTION_15_11();
    sub_19393C3E0();
    v5 = v4;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_16_4();
    if (!v11 || (OUTLINED_FUNCTION_2_7(*v12, v11, 2), (v5 = v4) == 0))
    {
      if ((*(v6 + v10[9] + 8) & 1) != 0 || (OUTLINED_FUNCTION_15_11(), sub_19393C360(), (v5 = v4) == 0))
      {
        OUTLINED_FUNCTION_16_4();
        if (!v13 || (OUTLINED_FUNCTION_2_7(*v14, v13, 4), (v5 = v4) == 0))
        {
          if ((*(v6 + v10[11] + 9) & 1) != 0 || (OUTLINED_FUNCTION_147(), sub_193447324(v19, 5, a2, &type metadata for AdAttributionKitInAppPurchaseType, a3, &off_1F07D9260), !v5))
          {
            if ((*(v6 + v10[12] + 9) & 1) != 0 || (OUTLINED_FUNCTION_147(), sub_193447324(v19, 6, a2, &type metadata for AdAttributionKitInAppPurchaseSubscriptionDuration, a3, &off_1F07D9288), !v5))
            {
              sub_193627DCC(v6, a1, a2, a3);
              if (!v5)
              {
                OUTLINED_FUNCTION_16_4();
                if (v15)
                {
                  OUTLINED_FUNCTION_2_7(*v16, v15, 8);
                }

                OUTLINED_FUNCTION_16_4();
                if (v17)
                {
                  OUTLINED_FUNCTION_2_7(*v18, v17, 9);
                }

                if ((*(v6 + v10[16] + 8) & 1) == 0)
                {
                  OUTLINED_FUNCTION_15_11();
                  sub_19393C360();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_193627DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3A9E8, &qword_19394F800);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_19393BE00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AdAttributionKitPurchase(0);
  sub_1934DE90C(a1 + *(v14 + 52), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_1934DFCD4(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_193451F04(v13, 7, 2020175477, 0xE400000000000000, a3, a4);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_193627F88(uint64_t a1)
{
  OUTLINED_FUNCTION_12(a1);
  v1 = qword_1EAE3F430;

  return v1;
}

void sub_193628024()
{
  OUTLINED_FUNCTION_115();
  v2 = sub_19393C420();
  __swift_allocate_value_buffer(v2, &qword_1EAEAB648);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 72);
  OUTLINED_FUNCTION_49_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_27_2(v5, xmmword_19394FBD0);
  *v1 = 0;
  *v0 = "AdAttributionKitInAppPurchaseTypeUnknown";
  *(v0 + 8) = 40;
  *(v0 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v7 = *(v6 + 104);
  OUTLINED_FUNCTION_2_0();
  v7();
  v8 = OUTLINED_FUNCTION_3_1(v1 + v4);
  *v9 = 1;
  v10 = OUTLINED_FUNCTION_25(v8, "Consumable");
  (v7)(v10);
  v11 = OUTLINED_FUNCTION_3_1(v1 + 2 * v4);
  *v12 = 2;
  v13 = OUTLINED_FUNCTION_25(v11, "NonConsumable");
  (v7)(v13);
  v14 = OUTLINED_FUNCTION_3_1(v1 + 3 * v4);
  *v15 = 3;
  v16 = OUTLINED_FUNCTION_25(v14, "AutoRenewingSubscription");
  (v7)(v16);
  v17 = OUTLINED_FUNCTION_3_1(v1 + 4 * v4);
  *v18 = 4;
  *v17 = "NonRenewingSubscription";
  *(v17 + 8) = 23;
  *(v17 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v7();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

void sub_193628244()
{
  OUTLINED_FUNCTION_115();
  v0 = sub_19393C420();
  __swift_allocate_value_buffer(v0, qword_1EAEAB660);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD00, &qword_1939512A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAE3AD08, &qword_1939512A8);
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_49_0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_193952700;
  v4 = v3 + v0 + dword_1EAEAB698;
  *(v3 + v0) = 0;
  *v4 = "AdAttributionKitInAppPurchaseSubscriptionDurationUnknown";
  *(v4 + 8) = 56;
  *(v4 + 16) = 2;
  sub_19393C400();
  OUTLINED_FUNCTION_11_0();
  v6 = *(v5 + 104);
  OUTLINED_FUNCTION_2_0();
  v6();
  v7 = OUTLINED_FUNCTION_3_1(v3 + v0 + v2);
  *v8 = 1;
  *v7 = "OneWeek";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v9 = OUTLINED_FUNCTION_3_1(v3 + v0 + 2 * v2);
  *v10 = 2;
  *v9 = "OneMonth";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v11 = OUTLINED_FUNCTION_3_1(v3 + v0 + 3 * v2);
  *v12 = 3;
  *v11 = "TwoMonths";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v13 = OUTLINED_FUNCTION_3_1(v3 + v0 + 4 * v2);
  *v14 = 4;
  *v13 = "ThreeMonths";
  *(v13 + 8) = 11;
  *(v13 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v15 = OUTLINED_FUNCTION_3_1(v3 + v0 + 5 * v2);
  *v16 = 5;
  *v15 = "SixMonths";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  v17 = (v3 + v0 + 6 * v2);
  v18 = v17 + dword_1EAEAB698;
  *v17 = 6;
  *v18 = "OneYear";
  *(v18 + 1) = 7;
  v18[16] = 2;
  OUTLINED_FUNCTION_2_0();
  v6();
  sub_19393C410();
  OUTLINED_FUNCTION_114();
}

uint64_t AdAttributionKitPurchase.writeTimestamp.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AdAttributionKitPurchase(v2);
  return sub_19344865C(v1 + *(v3 + 20), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t type metadata accessor for AdAttributionKitPurchase(uint64_t a1)
{
  result = qword_1ED50DF30;
  if (!qword_1ED50DF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdAttributionKitPurchase.bookmark.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AdAttributionKitPurchase(v2);
  return sub_19344865C(v1 + *(v3 + 24), v0, &qword_1EAE3AA00, &unk_19394F8F0);
}

uint64_t AdAttributionKitPurchase.conversionID.getter()
{
  type metadata accessor for AdAttributionKitPurchase(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitPurchase.conversionID.setter()
{
  OUTLINED_FUNCTION_8_39();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitPurchase.storefrontID.getter()
{
  type metadata accessor for AdAttributionKitPurchase(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitPurchase.storefrontID.setter()
{
  OUTLINED_FUNCTION_8_39();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

void AdAttributionKitPurchase.inAppPurchaseType.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AdAttributionKitPurchase(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 44));
}

void AdAttributionKitPurchase.inAppPurchaseSubscriptionDuration.getter()
{
  v0 = OUTLINED_FUNCTION_8_4();
  v1 = type metadata accessor for AdAttributionKitPurchase(v0);
  OUTLINED_FUNCTION_37_0(*(v1 + 48));
}

uint64_t AdAttributionKitPurchase.purchaseDate.getter()
{
  v2 = OUTLINED_FUNCTION_8_4();
  v3 = type metadata accessor for AdAttributionKitPurchase(v2);
  return sub_19344865C(v1 + *(v3 + 52), v0, &qword_1EAE3A9E8, &qword_19394F800);
}

uint64_t AdAttributionKitPurchase.currencyCode.getter()
{
  type metadata accessor for AdAttributionKitPurchase(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitPurchase.currencyCode.setter()
{
  OUTLINED_FUNCTION_8_39();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitPurchase.inAppPurchaseSubscriptionISO8601Duration.getter()
{
  type metadata accessor for AdAttributionKitPurchase(0);
  OUTLINED_FUNCTION_4_4();
  return OUTLINED_FUNCTION_13_0();
}

uint64_t AdAttributionKitPurchase.inAppPurchaseSubscriptionISO8601Duration.setter()
{
  OUTLINED_FUNCTION_8_39();
  result = OUTLINED_FUNCTION_201();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AdAttributionKitPurchase.hashValue.getter()
{
  sub_19393CAB0();
  AdAttributionKitPurchase.hash(into:)(v1);
  return sub_19393CB00();
}