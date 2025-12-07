unint64_t sub_1004A31F0()
{
  result = qword_100AE5F38;
  if (!qword_100AE5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F38);
  }

  return result;
}

unint64_t sub_1004A3248()
{
  result = qword_100AE5F40;
  if (!qword_100AE5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F40);
  }

  return result;
}

unint64_t sub_1004A32A0()
{
  result = qword_100AE5F48;
  if (!qword_100AE5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F48);
  }

  return result;
}

unint64_t sub_1004A32F8()
{
  result = qword_100AE5F50;
  if (!qword_100AE5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F50);
  }

  return result;
}

unint64_t sub_1004A3350()
{
  result = qword_100AE5F58[0];
  if (!qword_100AE5F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100AE5F58);
  }

  return result;
}

uint64_t sub_1004A33A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004A33EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004A3400(uint64_t a1)
{
  if ((*(a1 + 41) & 7u) <= 5)
  {
    return *(a1 + 41) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 sub_1004A341C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1004A3430(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 42))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 41);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004A3478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004A34C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 41) = a2;
  return result;
}

__n128 sub_1004A3508(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1004A351C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004A3564(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A35C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1004A3620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1004A3694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004A36DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A3738(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004A3780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -3 - a2;
    }
  }

  return result;
}

uint64_t sub_1004A37CC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = -a2;
  }

  return result;
}

uint64_t sub_1004A3804(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004A384C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1004A38E8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 == 3 || a3 == 4)
      {
        goto LABEL_5;
      }

      return;
    }

LABEL_8:
    v3 = a1;
    return;
  }

  if (!a3)
  {
LABEL_5:

    return;
  }

  if (a3 == 1)
  {
    goto LABEL_8;
  }
}

void sub_1004A392C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 == 3 || a3 == 4)
      {
        goto LABEL_5;
      }

      return;
    }

LABEL_8:

    return;
  }

  if (!a3)
  {
LABEL_5:

    return;
  }

  if (a3 == 1)
  {
    goto LABEL_8;
  }
}

unint64_t sub_1004A3970()
{
  result = qword_100AE6020;
  if (!qword_100AE6020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6020);
  }

  return result;
}

unint64_t sub_1004A39C4()
{
  result = qword_100AE6028;
  if (!qword_100AE6028)
  {
    sub_1001F1234(&qword_100AE6018, &qword_100829AB8);
    sub_1004A3970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6028);
  }

  return result;
}

unint64_t sub_1004A3A50()
{
  result = qword_100AE6038;
  if (!qword_100AE6038)
  {
    sub_1001F1234(&qword_100AE6030, &qword_100829AC0);
    sub_100005920(&qword_100AE6040, &qword_100AE6048, &qword_100829AC8, &protocol conformance descriptor for GeometryReader<A>);
    sub_100005920(&qword_100AE6050, &qword_100AE6058, &qword_100829AD0, &protocol conformance descriptor for _InsetViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6038);
  }

  return result;
}

uint64_t sub_1004A3B34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1004A3B7C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xFCu)
  {
  }

  return result;
}

unint64_t sub_1004A3BB0()
{
  result = qword_100AE6068;
  if (!qword_100AE6068)
  {
    sub_1001F1234(&qword_100AE6070, qword_100829B48);
    sub_1004A3A50();
    sub_1001F1234(&qword_100AE1108, &qword_100831A20);
    sub_1001F1234(&qword_100AE6018, &qword_100829AB8);
    sub_1004A3970();
    swift_getOpaqueTypeConformance2();
    sub_1004A39C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6068);
  }

  return result;
}

uint64_t KeyboardAvoidance.animationOptions.getter()
{
  result = *(v0 + 72) << 16;
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

double KeyboardAvoidance.init(notification:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1004A41B8(a2, v6);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

void KeyboardAvoidance.additionalSafeAreaInsets(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0.0;
  if (![a1 isViewLoaded] || (v6 = objc_msgSend(a1, "view")) == 0)
  {
    v24 = 1;
LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = v24;
    return;
  }

  v7 = v6;
  [v6 convertRect:0 fromView:{v2[4], v2[5], v2[6], v2[7]}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [a1 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];
    v19 = v18;

    [a1 additionalSafeAreaInsets];
    v21 = v19 - v20;
    [v7 frame];
    Height = CGRectGetHeight(v25);
    v26.origin.x = v9;
    v26.origin.y = v11;
    v26.size.width = v13;
    v26.size.height = v15;
    MinY = CGRectGetMinY(v26);

    v24 = 0;
    if (Height - MinY - v21 < 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = Height - MinY - v21;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static KeyboardAvoidance.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (CGRectEqualToRect(*a1, *a2) && CGRectEqualToRect(*(a1 + 32), *(a2 + 32)) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    v4 = *(a1 + 80) ^ *(a2 + 80) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1004A3F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v16 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v15 = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v17.origin.x = v2;
    v17.origin.y = v3;
    v17.size.width = v4;
    v17.size.height = v5;
    v18.origin.x = v8;
    v18.origin.y = v9;
    v18.size.width = v10;
    v18.size.height = v11;
    result = CGRectEqualToRect(v17, v18);
    if (result)
    {
      result = 0;
      if (v16 == v15)
      {
        if (v6 == v12)
        {
          return v7 ^ v13 ^ 1u;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1004A4094(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), uint64_t a3, uint64_t a4)
{
  v7 = sub_100796594();
  v8 = __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  sub_1004A41B8(v10, v13);
  if (v14 != 2)
  {
    v15[3] = v13[3];
    v15[4] = v13[4];
    v15[1] = v13[1];
    v15[2] = v13[2];
    v15[0] = v13[0];
    v16 = v14;
    a2(a4, v15);
  }
}

void sub_1004A41B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100796584();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v44 = sub_1007A2254();
  sub_1007A36B4();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v6 = sub_10000E2A4(v49);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100007484(*(v5 + 56) + 32 * v6, v50);
  sub_10002899C(v49);
  sub_10000A7C4(0, &qword_100AE6080, NSValue_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v44 CGRectValue];
  v42 = v9;
  v43 = v8;
  v40 = v10;
  v41 = v11;

  v45 = sub_1007A2254();
  sub_1007A36B4();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v12 = sub_10000E2A4(v49);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100007484(*(v5 + 56) + 32 * v12, v50);
  sub_10002899C(v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v45 CGRectValue];
  v38 = v15;
  v39 = v14;
  v36 = v16;
  v37 = v17;

  v46 = sub_1007A2254();
  sub_1007A36B4();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v18 = sub_10000E2A4(v49);
  if ((v19 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100007484(*(v5 + 56) + 32 * v18, v50);
  sub_10002899C(v49);
  sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v46 floatValue];
  v21 = v20;

  v47 = sub_1007A2254();
  sub_1007A36B4();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v22 = sub_10000E2A4(v49);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100007484(*(v5 + 56) + 32 * v22, v50);
  sub_10002899C(v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v35 = sub_100796594();
    (*(*(v35 - 8) + 8))(a1, v35);

    goto LABEL_20;
  }

  v24 = [v47 integerValue];

  v48 = sub_1007A2254();
  sub_1007A36B4();
  if (!*(v5 + 16) || (v25 = sub_10000E2A4(v49), (v26 & 1) == 0))
  {
LABEL_18:

    sub_10002899C(v49);
    goto LABEL_19;
  }

  sub_100007484(*(v5 + 56) + 32 * v25, v50);
  sub_10002899C(v49);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v34 = sub_100796594();
    (*(*(v34 - 8) + 8))(a1, v34);
LABEL_20:
    v24 = 0;
    v30 = 0uLL;
    v27 = 2;
    v29 = 0.0;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    goto LABEL_21;
  }

  v27 = [v48 BOOLValue];

  v28 = sub_100796594();
  (*(*(v28 - 8) + 8))(a1, v28);
  v29 = v21;
  *&v30 = v43;
  *(&v30 + 1) = v40;
  *&v31 = v42;
  *(&v31 + 1) = v41;
  *&v32 = v39;
  *(&v32 + 1) = v36;
  *&v33 = v38;
  *(&v33 + 1) = v37;
LABEL_21:
  *a2 = v30;
  *(a2 + 16) = v31;
  *(a2 + 32) = v32;
  *(a2 + 48) = v33;
  *(a2 + 64) = v29;
  *(a2 + 72) = v24;
  *(a2 + 80) = v27;
}

void _s5Books16KeyboardObserverV7options6updateACShyAC6OptionOG_yAG_AA0B9AvoidanceVtctcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v29 = sub_1007A2E74();
  __chkstk_darwin(v29);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 56;
  v8 = *(a1 + 56);
  v32 = &_swiftEmptySetSingleton;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v24 = UIKeyboardDidChangeFrameNotification;
  v26 = UIKeyboardWillChangeFrameNotification;
  v28 = UIKeyboardDidHideNotification;
  v23 = UIKeyboardWillHideNotification;
  v25 = UIKeyboardDidShowNotification;
  v27 = UIKeyboardWillShowNotification;
  v14 = (v5 + 8);
  v30 = a1;

  v15 = 0;
  while (v12)
  {
LABEL_10:
    v20 = *(*(v30 + 48) + (__clz(__rbit64(v12)) | (v15 << 6)));
    v21 = [objc_opt_self() defaultCenter];
    if (v20 > 2)
    {
      v22 = v28;
      if (v20 != 3)
      {
        v22 = v26;
        if (v20 != 4)
        {
          v22 = v24;
        }
      }
    }

    else
    {
      v22 = v27;
      if (v20)
      {
        v22 = v25;
        if (v20 != 1)
        {
          v22 = v23;
        }
      }
    }

    v12 &= v12 - 1;
    v16 = v22;
    sub_1007A2E84();

    v17 = swift_allocObject();
    *(v17 + 16) = v31;
    *(v17 + 24) = a3;
    *(v17 + 32) = v20;
    sub_100005B5C();

    v18 = v29;
    sub_10079BB04();

    (*v14)(v7, v18);
    sub_10079B854();
  }

  while (1)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v19 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v19);
    ++v15;
    if (v12)
    {
      v15 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
}

unint64_t sub_1004A4970()
{
  result = qword_100AE6078;
  if (!qword_100AE6078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6078);
  }

  return result;
}

uint64_t sub_1004A49C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1004A4A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

void EngagementManagerAnalyticsHelper.collectLocalSignalsAnalytics(with:)(uint64_t a1)
{
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v184 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v5 - 8);
  v181 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v182 = &v137 - v8;
  __chkstk_darwin(v9);
  v183 = &v137 - v10;
  __chkstk_darwin(v11);
  v13 = &v137 - v12;
  v14 = sub_100798204();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100798444())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v177 = v3;
      v179 = v2;
      v19 = OBJC_IVAR___BKEngagementManager_metadata;
      v20 = Strong;
      swift_beginAccess();
      v21 = *&v20[v19];

      v22 = OBJC_IVAR___BKEngagementManagerMetadata_propertyCounts;
      swift_beginAccess();
      v180 = v21;
      v23 = *&v21[v22];
      v24 = *(v23 + 16);
      v175 = v14;
      v176 = a1;
      v173 = v17;
      v174 = v15;
      if (v24)
      {

        v25 = sub_10000E53C(0xD000000000000019, 0x80000001008D7B40);
        if (v26)
        {
          v27 = round(*(*(v23 + 56) + 8 * v25) / 5.0) * 5.0;
          if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          if (v27 <= -9.22337204e18)
          {
LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

          if (v27 >= 9.22337204e18)
          {
LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

          v171 = 0;
          v28 = v27;
LABEL_11:
          v187 = 0x527361576B6F6F62;
          v188 = 0xEB00000000646165;
          v189._countAndFlagsBits = 45;
          v189._object = 0xE100000000000000;
          sub_1007A23D4(v189);
          v190._countAndFlagsBits = 0x656C706D6173;
          v190._object = 0xE600000000000000;
          sub_1007A23D4(v190);
          v29 = *(v23 + 16);
          v172 = v28;
          if (v29)
          {
            v30 = sub_10000E53C(v187, v188);
            v32 = v31;

            if (v32)
            {
              v33 = round(*(*(v23 + 56) + 8 * v30) / 5.0) * 5.0;
              if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_166:
                __break(1u);
                goto LABEL_167;
              }

              if (v33 <= -9.22337204e18)
              {
LABEL_169:
                __break(1u);
                goto LABEL_170;
              }

              if (v33 >= 9.22337204e18)
              {
LABEL_173:
                __break(1u);
                goto LABEL_174;
              }

              v169 = 0;
              v170 = v33;
            }

            else
            {
              v170 = 0;
              v169 = 1;
            }
          }

          else
          {

            v170 = 0;
            v169 = 1;
          }

          v187 = 0xD000000000000012;
          v188 = 0x80000001008BF840;
          v191._countAndFlagsBits = 45;
          v191._object = 0xE100000000000000;
          sub_1007A23D4(v191);
          v192._countAndFlagsBits = 0x656C706D6173;
          v192._object = 0xE600000000000000;
          sub_1007A23D4(v192);
          if (*(v23 + 16))
          {
            v34 = sub_10000E53C(v187, v188);
            v36 = v35;

            if (v36)
            {
              v37 = round(*(*(v23 + 56) + 8 * v34) / 5.0) * 5.0;
              if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_168:
                __break(1u);
                goto LABEL_169;
              }

              if (v37 <= -9.22337204e18)
              {
LABEL_172:
                __break(1u);
                goto LABEL_173;
              }

              if (v37 >= 9.22337204e18)
              {
LABEL_176:
                __break(1u);
                goto LABEL_177;
              }

              v167 = 0;
              v168 = v37;
LABEL_27:
              v187 = 0x527361576B6F6F62;
              v188 = 0xEB00000000646165;
              v193._countAndFlagsBits = 45;
              v193._object = 0xE100000000000000;
              sub_1007A23D4(v193);
              v194._countAndFlagsBits = 0x706D61732D6E6F6ELL;
              v194._object = 0xEA0000000000656CLL;
              sub_1007A23D4(v194);
              if (*(v23 + 16))
              {
                v38 = sub_10000E53C(v187, v188);
                v40 = v39;

                if (v40)
                {
                  v41 = round(*(*(v23 + 56) + 8 * v38) / 5.0) * 5.0;
                  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                  {
LABEL_171:
                    __break(1u);
                    goto LABEL_172;
                  }

                  if (v41 <= -9.22337204e18)
                  {
LABEL_175:
                    __break(1u);
                    goto LABEL_176;
                  }

                  if (v41 >= 9.22337204e18)
                  {
LABEL_179:
                    __break(1u);
                    goto LABEL_180;
                  }

                  v42 = 0;
                  v43 = v41;
                }

                else
                {
                  v43 = 0;
                  v42 = 1;
                }
              }

              else
              {

                v43 = 0;
                v42 = 1;
              }

              v187 = 0xD000000000000012;
              v188 = 0x80000001008BF840;
              v195._countAndFlagsBits = 45;
              v195._object = 0xE100000000000000;
              sub_1007A23D4(v195);
              v196._countAndFlagsBits = 0x706D61732D6E6F6ELL;
              v196._object = 0xEA0000000000656CLL;
              sub_1007A23D4(v196);
              if (*(v23 + 16))
              {
                v44 = sub_10000E53C(v187, v188);
                v46 = v45;

                if (v46)
                {
                  v47 = round(*(*(v23 + 56) + 8 * v44) / 5.0) * 5.0;
                  v48 = v180;
                  if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                  {
LABEL_174:
                    __break(1u);
                    goto LABEL_175;
                  }

                  if (v47 <= -9.22337204e18)
                  {
LABEL_178:
                    __break(1u);
                    goto LABEL_179;
                  }

                  if (v47 >= 9.22337204e18)
                  {
LABEL_181:
                    __break(1u);
                    goto LABEL_182;
                  }

                  v49 = 0;
                  v50 = v47;
                  if (!*(v23 + 16))
                  {
                    goto LABEL_41;
                  }

                  goto LABEL_44;
                }
              }

              else
              {
              }

              v50 = 0;
              v49 = 1;
              v48 = v180;
              if (!*(v23 + 16))
              {
LABEL_41:
                v162 = 0;
                v164 = 0;
                v165 = 0;
                v160 = 0;
                v161 = 1;
                v166 = 1;
                goto LABEL_57;
              }

LABEL_44:
              v51 = sub_10000E53C(0x6E61576F54646461, 0xEF646165526F5474);
              if (v52)
              {
                v53 = round(*(*(v23 + 56) + 8 * v51) / 5.0) * 5.0;
                if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
LABEL_177:
                  __break(1u);
                  goto LABEL_178;
                }

                if (v53 <= -9.22337204e18)
                {
LABEL_180:
                  __break(1u);
                  goto LABEL_181;
                }

                if (v53 >= 9.22337204e18)
                {
LABEL_182:
                  __break(1u);
                  goto LABEL_183;
                }

                v165 = v53;
              }

              else
              {
                v165 = 0;
              }

              v166 = v52 ^ 1;
              if (*(v23 + 16))
              {
                v54 = sub_10000E53C(0x64616F6C6E776F64, 0xEE00656C706D6153);
                if (v55)
                {
                  v56 = round(*(*(v23 + 56) + 8 * v54) / 5.0) * 5.0;
                  if ((*&v56 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                  {
LABEL_189:
                    __break(1u);
                    goto LABEL_190;
                  }

                  if (v56 <= -9.22337204e18)
                  {
LABEL_190:
                    __break(1u);
                    goto LABEL_191;
                  }

                  if (v56 >= 9.22337204e18)
                  {
LABEL_191:
                    __break(1u);
                    goto LABEL_192;
                  }

                  v164 = v56;
                }

                else
                {
                  v164 = 0;
                }

                v163 = v55 ^ 1;
                if (*(v23 + 16))
                {
                  v57 = sub_10000E53C(0x676E69746172, 0xE600000000000000);
                  if (v58)
                  {
                    v59 = round(*(*(v23 + 56) + 8 * v57) / 5.0) * 5.0;
                    if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                    {
LABEL_198:
                      __break(1u);
                      goto LABEL_199;
                    }

                    if (v59 <= -9.22337204e18)
                    {
LABEL_199:
                      __break(1u);
                      goto LABEL_200;
                    }

                    if (v59 >= 9.22337204e18)
                    {
LABEL_200:
                      __break(1u);
                      goto LABEL_201;
                    }

                    v162 = v59;
                  }

                  else
                  {
                    v162 = 0;
                  }

                  v161 = v58 ^ 1;
                  if (*(v23 + 16))
                  {
                    v60 = sub_10000E53C(0x4D74736567677573, 0xEB0000000065726FLL);
                    if (v61)
                    {
                      v62 = round(*(*(v23 + 56) + 8 * v60) / 5.0) * 5.0;
                      if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                      {
LABEL_204:
                        __break(1u);
                        goto LABEL_205;
                      }

                      if (v62 <= -9.22337204e18)
                      {
LABEL_205:
                        __break(1u);
                        goto LABEL_206;
                      }

                      if (v62 >= 9.22337204e18)
                      {
LABEL_206:
                        __break(1u);
                        goto LABEL_207;
                      }

                      v159 = 0;
                      v160 = v62;
LABEL_75:
                      if (*(v23 + 16))
                      {
                        v63 = sub_10000E53C(0x6572616873, 0xE500000000000000);
                        if (v64)
                        {
                          v65 = round(*(*(v23 + 56) + 8 * v63) / 5.0) * 5.0;
                          if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                          {
LABEL_183:
                            __break(1u);
                            goto LABEL_184;
                          }

                          if (v65 <= -9.22337204e18)
                          {
LABEL_184:
                            __break(1u);
                            goto LABEL_185;
                          }

                          if (v65 >= 9.22337204e18)
                          {
LABEL_185:
                            __break(1u);
                            goto LABEL_186;
                          }

                          v158 = v65;
                        }

                        else
                        {
                          v158 = 0;
                        }

                        v157 = v64 ^ 1;
                        if (*(v23 + 16))
                        {
                          v66 = sub_10000E53C(0x72706D496B6F6F62, 0xEE006E6F69737365);
                          if (v67)
                          {
                            v68 = round(*(*(v23 + 56) + 8 * v66) / 5.0) * 5.0;
                            if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                            {
LABEL_192:
                              __break(1u);
                              goto LABEL_193;
                            }

                            if (v68 <= -9.22337204e18)
                            {
LABEL_193:
                              __break(1u);
                              goto LABEL_194;
                            }

                            if (v68 >= 9.22337204e18)
                            {
LABEL_194:
                              __break(1u);
                              goto LABEL_195;
                            }

                            v155 = v68;
                          }

                          else
                          {
                            v155 = 0;
                          }

                          v156 = v67 ^ 1;
                          if (*(v23 + 16))
                          {
                            v69 = sub_10000E53C(0x4C74736567677573, 0xEB00000000737365);
                            if (v70)
                            {
                              v71 = round(*(*(v23 + 56) + 8 * v69) / 5.0) * 5.0;
                              if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                              {
LABEL_201:
                                __break(1u);
                                goto LABEL_202;
                              }

                              if (v71 <= -9.22337204e18)
                              {
LABEL_202:
                                __break(1u);
                                goto LABEL_203;
                              }

                              if (v71 >= 9.22337204e18)
                              {
LABEL_203:
                                __break(1u);
                                goto LABEL_204;
                              }

                              v153 = v71;
                            }

                            else
                            {
                              v153 = 0;
                            }

                            v152 = v70 ^ 1;
                            if (*(v23 + 16))
                            {
                              v72 = sub_10000E53C(0x6B6F6F4265646968, 0xE800000000000000);
                              if (v73)
                              {
                                v74 = round(*(*(v23 + 56) + 8 * v72) / 5.0) * 5.0;
                                if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                                {
LABEL_207:
                                  __break(1u);
                                  goto LABEL_208;
                                }

                                if (v74 <= -9.22337204e18)
                                {
LABEL_208:
                                  __break(1u);
                                  goto LABEL_209;
                                }

                                if (v74 >= 9.22337204e18)
                                {
LABEL_209:
                                  __break(1u);
                                  return;
                                }

                                v148 = 0;
                                v149 = v74;
LABEL_108:
                                v75 = *(v23 + 16);
                                v154 = v43;
                                v150 = v49;
                                v151 = v42;
                                if (v75)
                                {
                                  v76 = sub_10000E53C(0xD000000000000014, 0x80000001008D7B60);
                                  if (v77)
                                  {
                                    v78 = round(*(*(v23 + 56) + 8 * v76) / 5.0) * 5.0;
                                    if ((*&v78 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                                    {
LABEL_186:
                                      __break(1u);
                                      goto LABEL_187;
                                    }

                                    v79 = v179;
                                    v80 = v177;
                                    if (v78 <= -9.22337204e18)
                                    {
LABEL_187:
                                      __break(1u);
                                      goto LABEL_188;
                                    }

                                    if (v78 >= 9.22337204e18)
                                    {
LABEL_188:
                                      __break(1u);
                                      goto LABEL_189;
                                    }

                                    v81 = v78;
                                  }

                                  else
                                  {
                                    v81 = 0;
                                    v79 = v179;
                                    v80 = v177;
                                  }

                                  v82 = *(v23 + 16);
                                  v147 = v77 ^ 1;
                                  if (v82)
                                  {
                                    v83 = sub_10000E53C(0x615365766F6D6572, 0xEC000000656C706DLL);
                                    if (v84)
                                    {
                                      v85 = *(*(v23 + 56) + 8 * v83);

                                      v86 = round(v85 / 5.0) * 5.0;
                                      if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                                      {
LABEL_195:
                                        __break(1u);
                                        goto LABEL_196;
                                      }

                                      if (v86 <= -9.22337204e18)
                                      {
LABEL_196:
                                        __break(1u);
                                        goto LABEL_197;
                                      }

                                      if (v86 >= 9.22337204e18)
                                      {
LABEL_197:
                                        __break(1u);
                                        goto LABEL_198;
                                      }

                                      v146 = 0;
                                      v87 = v86;
LABEL_123:
                                      v88 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitSuccessTimestamp;
                                      swift_beginAccess();
                                      sub_100217B24(&v48[v88], v13);
                                      v178 = *(v80 + 48);
                                      if (v178(v13, 1, v79))
                                      {
                                        sub_10038F7FC(v13);
                                        v142 = 0;
LABEL_129:
                                        v143 = v87;
                                        v144 = v50;
                                        v93 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitError;
                                        swift_beginAccess();
                                        if (*&v48[v93])
                                        {
                                          ErrorValue = swift_getErrorValue();
                                          v95 = v186;
                                          v96 = *(v186 - 8);
                                          v97 = __chkstk_darwin(ErrorValue);
                                          v99 = &v137 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
                                          (*(v96 + 16))(v99, v97);
                                          v100 = sub_1007A3B84();
                                          v140 = v101;
                                          v141 = v100;
                                          (*(v96 + 8))(v99, v95);
                                          v48 = v180;
                                        }

                                        else
                                        {
                                          v140 = 0;
                                          v141 = 0;
                                        }

                                        v102 = v182;
                                        v103 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitErrorTimestamp;
                                        swift_beginAccess();
                                        v104 = v183;
                                        sub_100217B24(&v48[v103], v183);
                                        v105 = v178;
                                        LODWORD(v182) = v178(v104, 1, v79);
                                        if (v182)
                                        {
                                          sub_10038F7FC(v104);
                                          v183 = 0;
LABEL_138:
                                          v110 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncToCloudKitSuccessTimestamp;
                                          swift_beginAccess();
                                          sub_100217B24(&v48[v110], v102);
                                          if (v105(v102, 1, v79))
                                          {
                                            sub_10038F7FC(v102);
                                            v138 = 0;
LABEL_144:
                                            v139 = v81;
                                            v115 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncToCloudKitError;
                                            swift_beginAccess();
                                            if (*&v48[v115])
                                            {
                                              v116 = swift_getErrorValue();
                                              v117 = v185;
                                              v118 = *(v185 - 8);
                                              v119 = __chkstk_darwin(v116);
                                              v121 = &v137 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
                                              (*(v118 + 16))(v121, v119);
                                              sub_1007A3B84();
                                              v122 = v121;
                                              v48 = v180;
                                              (*(v118 + 8))(v122, v117);
                                            }

                                            v123 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncToCloudKitErrorTimestamp;
                                            swift_beginAccess();
                                            v124 = &v48[v123];
                                            v125 = v181;
                                            sub_100217B24(v124, v181);
                                            v126 = v179;
                                            if (v178(v125, 1, v179))
                                            {
                                              sub_10038F7FC(v125);
LABEL_151:
                                              v133 = v173;
                                              sub_1007981F4();
                                              sub_1004A66F8(&qword_100AE60A8, &protocol conformance descriptor for UserEventStorageData, v134);
                                              sub_1004A66F8(&qword_100AE60B0, &protocol conformance descriptor for UserEventStorageData, v135);
                                              v136 = v175;
                                              sub_100798404();
                                              sub_100798414();

                                              (*(v174 + 8))(v133, v136);
                                              return;
                                            }

                                            v127 = v177;
                                            v128 = v125;
                                            v129 = v184;
                                            (*(v177 + 16))(v184, v128, v126);
                                            sub_10038F7FC(v128);
                                            sub_100796B44();
                                            v131 = round(v130 / 3600.0);
                                            (*(v127 + 8))(v129, v126);
                                            v132 = v131 * 3600.0 * 1000.0;
                                            if (COERCE__INT64(fabs(v132)) <= 0x7FEFFFFFFFFFFFFFLL)
                                            {
                                              if (v132 > -9.22337204e18)
                                              {
                                                if (v132 < 9.22337204e18)
                                                {
                                                  goto LABEL_151;
                                                }

                                                goto LABEL_164;
                                              }

LABEL_163:
                                              __break(1u);
LABEL_164:
                                              __break(1u);
                                              goto LABEL_165;
                                            }

                                            goto LABEL_161;
                                          }

                                          v111 = v184;
                                          (*(v80 + 16))(v184, v102, v79);
                                          sub_10038F7FC(v102);
                                          sub_100796B44();
                                          v113 = round(v112 / 3600.0);
                                          (*(v80 + 8))(v111, v79);
                                          v114 = v113 * 3600.0 * 1000.0;
                                          if (COERCE__INT64(fabs(v114)) <= 0x7FEFFFFFFFFFFFFFLL)
                                          {
                                            if (v114 > -9.22337204e18)
                                            {
                                              if (v114 >= 9.22337204e18)
                                              {
LABEL_162:
                                                __break(1u);
                                                goto LABEL_163;
                                              }

                                              v138 = v114;
                                              goto LABEL_144;
                                            }

LABEL_160:
                                            __break(1u);
LABEL_161:
                                            __break(1u);
                                            goto LABEL_162;
                                          }

                                          goto LABEL_158;
                                        }

                                        v106 = v184;
                                        (*(v80 + 16))(v184, v104, v79);
                                        sub_10038F7FC(v104);
                                        sub_100796B44();
                                        v108 = round(v107 / 3600.0);
                                        (*(v80 + 8))(v106, v79);
                                        v109 = v108 * 3600.0 * 1000.0;
                                        if (COERCE__INT64(fabs(v109)) <= 0x7FEFFFFFFFFFFFFFLL)
                                        {
                                          if (v109 > -9.22337204e18)
                                          {
                                            if (v109 >= 9.22337204e18)
                                            {
LABEL_159:
                                              __break(1u);
                                              goto LABEL_160;
                                            }

                                            v183 = v109;
                                            goto LABEL_138;
                                          }

LABEL_157:
                                          __break(1u);
LABEL_158:
                                          __break(1u);
                                          goto LABEL_159;
                                        }

                                        goto LABEL_155;
                                      }

                                      v89 = v184;
                                      (*(v80 + 16))(v184, v13, v79);
                                      sub_10038F7FC(v13);
                                      sub_100796B44();
                                      v91 = round(v90 / 3600.0);
                                      (*(v80 + 8))(v89, v79);
                                      v92 = v91 * 3600.0 * 1000.0;
                                      if (COERCE__INT64(fabs(v92)) > 0x7FEFFFFFFFFFFFFFLL)
                                      {
                                        __break(1u);
                                      }

                                      else if (v92 > -9.22337204e18)
                                      {
                                        if (v92 >= 9.22337204e18)
                                        {
LABEL_156:
                                          __break(1u);
                                          goto LABEL_157;
                                        }

                                        v142 = v92;
                                        goto LABEL_129;
                                      }

                                      __break(1u);
LABEL_155:
                                      __break(1u);
                                      goto LABEL_156;
                                    }
                                  }
                                }

                                else
                                {
                                  v81 = 0;
                                  v147 = 1;
                                  v79 = v179;
                                  v80 = v177;
                                }

                                v87 = 0;
                                v146 = 1;
                                goto LABEL_123;
                              }
                            }

                            v149 = 0;
                          }

                          else
                          {
                            v153 = 0;
                            v149 = 0;
                            v152 = 1;
                          }

LABEL_107:
                          v148 = 1;
                          goto LABEL_108;
                        }

                        v153 = 0;
                        v155 = 0;
                        v149 = 0;
                        v152 = 1;
                      }

                      else
                      {
                        v153 = 0;
                        v158 = 0;
                        v155 = 0;
                        v149 = 0;
                        v152 = 1;
                        v157 = 1;
                      }

                      v156 = 1;
                      goto LABEL_107;
                    }
                  }

                  v160 = 0;
                }

                else
                {
                  v162 = 0;
                  v160 = 0;
                  v161 = 1;
                }

LABEL_74:
                v159 = 1;
                goto LABEL_75;
              }

              v162 = 0;
              v164 = 0;
              v160 = 0;
              v161 = 1;
LABEL_57:
              v163 = 1;
              goto LABEL_74;
            }
          }

          else
          {
          }

          v168 = 0;
          v167 = 1;
          goto LABEL_27;
        }
      }

      else
      {
      }

      v28 = 0;
      v171 = 1;
      goto LABEL_11;
    }
  }
}

void sub_1004A62B4(uint64_t *a1)
{
  v2 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR___BKEngagementManager_metadata;
    v7 = Strong;
    swift_beginAccess();
    v8 = *&v7[v6];

    sub_100796BA4();
    v9 = sub_100796BB4();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    v10 = *a1;
    swift_beginAccess();
    sub_100217AB4(v4, v8 + v10);
    swift_endAccess();
  }
}

void sub_1004A6404(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7];
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = OBJC_IVAR___BKEngagementManager_metadata;
      v11 = Strong;
      swift_beginAccess();
      v12 = *&v11[v10];
      swift_errorRetain();
      v13 = v12;

      v14 = *a2;
      swift_beginAccess();
      *&v13[v14] = a1;
      swift_errorRetain();
    }

    else
    {
      swift_errorRetain();
    }

    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = OBJC_IVAR___BKEngagementManager_metadata;
      v17 = v15;
      swift_beginAccess();
      v18 = *&v17[v16];

      sub_100796BA4();

      v19 = sub_100796BB4();
      (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
      v20 = *a3;
      swift_beginAccess();
      sub_100217AB4(v8, v18 + v20);
      swift_endAccess();
    }

    else
    {
    }
  }
}

id EngagementManagerAnalyticsHelper.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EngagementManagerAnalyticsHelper();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004A66F8(unint64_t *a1, uint64_t a2, double a3)
{
  result = *a1;
  if (!result)
  {
    sub_100798204();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1004A6760(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = [a2 eventConfigurations];
  sub_100799824();
  v6 = sub_1007A25E4();

  if (v6 >> 62)
  {
    v7 = sub_1007A38D4();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v26 = _swiftEmptyArrayStorage;
  result = sub_1003BD0CC(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    return result;
  }

  v24 = v3;
  v9 = 0;
  v10 = v26;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = sub_1007A3784();
    }

    else
    {
      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = sub_100799814();
    v15 = v14;

    v26 = v10;
    v17 = v10[2];
    v16 = v10[3];
    if (v17 >= v16 >> 1)
    {
      sub_1003BD0CC((v16 > 1), v17 + 1, 1);
      v10 = v26;
    }

    ++v9;
    v10[2] = v17 + 1;
    v18 = &v10[2 * v17];
    v18[4] = v13;
    v18[5] = v15;
  }

  while (v7 != v9);

  v3 = v24;
LABEL_14:
  v19 = sub_10040E374(v10);

  v20 = OBJC_IVAR___BKEngagementManagerAnalyticsHelper_allProperties;
  *&v3[OBJC_IVAR___BKEngagementManagerAnalyticsHelper_allProperties] = v19;
  v21 = sub_10040E374(&off_100A0C7B0);
  swift_arrayDestroy();
  *&v3[OBJC_IVAR___BKEngagementManagerAnalyticsHelper_sampleCapableProperties] = v21;
  v22 = *&v3[v20];
  if (*(v21 + 16) <= v22[2] >> 3)
  {
    v26 = *&v3[v20];

    sub_100625434(v21);

    v23 = v26;
  }

  else
  {

    v23 = sub_10062566C(v21, v22);
  }

  *&v3[OBJC_IVAR___BKEngagementManagerAnalyticsHelper_standardProperties] = v23;
  v25.receiver = v3;
  v25.super_class = type metadata accessor for EngagementManagerAnalyticsHelper();
  return objc_msgSendSuper2(&v25, "init");
}

uint64_t sub_1004A69F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004A6A68(unsigned __int8 a1)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 != 1)
    {
      if (a1 == 128)
      {
        return 0x6165707061736944;
      }

      else
      {
        return 0x6465726165707041;
      }
    }

    v1 = 0x6165707061736944;
  }

  else
  {
    v1 = 0x6E69726165707041;
  }

  v6 = v1;
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3._countAndFlagsBits = 0x646574616D696E61;
  }

  else
  {
    v3._countAndFlagsBits = 0x6D696E61206E6F6ELL;
  }

  if (v2)
  {
    v4 = 0xEC00000064657461;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  v3._object = v4;
  sub_1007A23D4(v3);

  return v6;
}

BOOL sub_1004A6B74(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      v4 = v3 ^ v2 ^ 1;
      if ((v3 & 0xC0) != 0x40)
      {
        v4 = 0;
      }

      return v4 & 1;
    }

    else
    {
      v7 = v3 == 128;
      v8 = v3 == 129;
      if (v2 == 128)
      {
        return v7;
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {
    v6 = v3 ^ v2 ^ 1;
    if (v3 >= 0x40)
    {
      v6 = 0;
    }

    return v6 & 1;
  }
}

uint64_t sub_1004A6BE8(uint64_t result, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v4 = result >> 6;
  if (result >> 6)
  {
    if (v4 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return result;
      }
    }

    else if (result == 128)
    {
      if (a2 == 128)
      {
        return result;
      }
    }

    else if (a2 == 129)
    {
      return result;
    }
  }

  else if (a2 < 0x40u)
  {
    return result;
  }

  if (!(a2 >> 6))
  {
    if (!(result >> 6))
    {
      return result;
    }

    if (v4 != 1)
    {
      if (result != 128)
      {
        return result;
      }

      v5 = *(a4 + 8);
      v6 = a2 & 1;
      v7 = 1;
      goto LABEL_30;
    }

    v9 = a4;
    v10 = a3;
    (*(a4 + 16))(a3, a4);
    v5 = *(v9 + 8);
    v6 = a2 & 1;
    v7 = 1;
LABEL_29:
    a3 = v10;
    a4 = v9;
LABEL_30:

    return v5(v7, v6, a3, a4);
  }

  if (a2 >> 6 == 1)
  {
    if (result >> 6)
    {
      if (v4 == 1 || result == 128)
      {
        return result;
      }

      v5 = *(a4 + 8);
      v6 = a2 & 1;
      v7 = 0;
      goto LABEL_30;
    }

    v9 = a4;
    v10 = a3;
    (*(a4 + 16))(a3, a4);
    v5 = *(v9 + 8);
    v6 = a2 & 1;
    v7 = 0;
    goto LABEL_29;
  }

  if (a2 == 128)
  {
    if (result >> 6)
    {
      if (v4 != 1)
      {
        if (result == 128)
        {
          return result;
        }

        v11 = *(a4 + 8);
        v12 = 0;
LABEL_44:
        v17 = a3;
        v18 = a4;
        v11(v12, 0);
        v19 = *(v18 + 16);

        return v19(v17, v18);
      }

      goto LABEL_33;
    }

    v20 = *(a4 + 16);
    v13 = a4;
    v14 = a3;
    v20(a3, a4);
    (*(v13 + 8))(0, 0, v14, v13);
  }

  else
  {
    if (!(result >> 6))
    {
LABEL_33:
      v16 = *(a4 + 16);

      return v16(a3, a4);
    }

    if (v4 != 1)
    {
      if (result != 128)
      {
        return result;
      }

      v11 = *(a4 + 8);
      v12 = 1;
      goto LABEL_44;
    }

    v20 = *(a4 + 16);
    v13 = a4;
    v14 = a3;
    v20(a3, a4);
    (*(v13 + 8))(1, 0, v14, v13);
  }

  return (v20)(v14, v13);
}

uint64_t getEnumTagSinglePayload for AppearanceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AppearanceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1004A70B4(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_1004A70E0(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

void sub_1004A7138(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&unk_100AD83B0, &qword_10081F2D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v13 - v7;
  v9 = [v2 view];
  if (v9)
  {
    v10 = v9;
    if (a2)
    {
      v13[0] = a1;
      v13[1] = a2;
      sub_10020E834();

      sub_100795ED4();
      v11 = sub_100795EE4();
      (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    }

    else
    {
      v12 = sub_100795EE4();
      (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    }

    sub_1007A30D4();
  }
}

double sub_1004A72A4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1007A2254();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);

  return result;
}

uint64_t sub_1004A7324()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE6188);
  sub_100008B98(v0, qword_100AE6188);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

id sub_1004A73A8(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 < 1 || _s5Books17REActionMenuStateC9pageCountSivpfi_0() == a1)
  {
    return 0;
  }

  sub_1007A0654();
  v2 = sub_10079F474();

  if (v2 >> 62)
  {
LABEL_22:
    v3 = sub_1007A38D4();
    if (v3)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_23:

    return 0;
  }

LABEL_5:
  v4 = 0;
  while ((v2 & 0xC000000000000001) == 0)
  {
    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_16;
    }

LABEL_10:
    if (sub_1007A1264() < v1)
    {
      v6 = sub_1007A1264();
      if (__OFSUB__(v1, v6))
      {
        goto LABEL_21;
      }

      if (v1 - v6 < sub_1007A1314())
      {
        goto LABEL_17;
      }
    }

    ++v4;
    if (v5 == v3)
    {
      goto LABEL_23;
    }
  }

  sub_1007A3784();
  v5 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
LABEL_17:

  v7 = sub_1007A1304();
  result = sub_1007A1264();
  v9 = v1 - result;
  if (__OFSUB__(v1, result))
  {
    __break(1u);
  }

  else if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = [objc_allocWithZone(BKPageLocation) initWithOrdinal:v7 andOffset:v9];

    return v10;
  }

  __break(1u);
  return result;
}

Swift::Int sub_1004A7540(uint64_t a1)
{
  sub_1007A3C04();
  v3 = 0x1000000;
  if ((*(v1 + 3) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = *v1 | (*(v1 + 2) << 16) | v3;
  v5 = &_mh_execute_header;
  if ((v1[2] & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x10000000000;
  if ((*(v1 + 5) & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x1000000000000;
  if ((v1[3] & 1) == 0)
  {
    v7 = 0;
  }

  sub_1005B59A8(v9, v4 | v5 | v6 | v7, *(v1 + 1), v1[8] & 1);
  sub_1007A0634();
  sub_1004AEEB0(&qword_100AE63A0, &type metadata accessor for PageMovementState, &protocol conformance descriptor for PageMovementState);
  sub_1007A2084();
  sub_1007A3C24(*(v1 + *(a1 + 24)));
  return sub_1007A3C44();
}

void sub_1004A7660(uint64_t a1, uint64_t a2)
{
  v4 = 0x1000000;
  if ((*(v2 + 3) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = *v2 | (*(v2 + 2) << 16) | v4;
  v6 = &_mh_execute_header;
  if ((v2[2] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x10000000000;
  if ((*(v2 + 5) & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if ((v2[3] & 1) == 0)
  {
    v8 = 0;
  }

  sub_1005B59A8(a1, v5 | v6 | v7 | v8, *(v2 + 1), v2[8] & 1);
  sub_1007A0634();
  sub_1004AEEB0(&qword_100AE63A0, &type metadata accessor for PageMovementState, &protocol conformance descriptor for PageMovementState);
  sub_1007A2084();
  sub_1007A3C24(*(v2 + *(a2 + 24)));
}

Swift::Int sub_1004A776C(uint64_t a1, uint64_t a2)
{
  sub_1007A3C04();
  v4 = 0x1000000;
  if ((*(v2 + 3) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = *v2 | (*(v2 + 2) << 16) | v4;
  v6 = &_mh_execute_header;
  if ((v2[2] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x10000000000;
  if ((*(v2 + 5) & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000000000;
  if ((v2[3] & 1) == 0)
  {
    v8 = 0;
  }

  sub_1005B59A8(v10, v5 | v6 | v7 | v8, *(v2 + 1), v2[8] & 1);
  sub_1007A0634();
  sub_1004AEEB0(&qword_100AE63A0, &type metadata accessor for PageMovementState, &protocol conformance descriptor for PageMovementState);
  sub_1007A2084();
  sub_1007A3C24(*(v2 + *(a2 + 24)));
  return sub_1007A3C44();
}

uint64_t sub_1004A7888(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = 0x1000000;
  if (*(a1 + 3))
  {
    v7 = 0x1000000;
  }

  else
  {
    v7 = 0;
  }

  v8 = *a1 | (*(a1 + 2) << 16) | v7;
  v9 = &_mh_execute_header;
  if (a1[2])
  {
    v10 = &_mh_execute_header;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if (*(a1 + 5))
  {
    v12 = 0x10000000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0x1000000000000;
  if (a1[3])
  {
    v14 = 0x1000000000000;
  }

  else
  {
    v14 = 0;
  }

  v15 = v8 | v10 | v12;
  if ((*(a2 + 3) & 1) == 0)
  {
    v6 = 0;
  }

  v16 = *a2 | (*(a2 + 2) << 16) | v6;
  if ((a2[2] & 1) == 0)
  {
    v9 = 0;
  }

  if ((*(a2 + 5) & 1) == 0)
  {
    v11 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v13 = 0;
  }

  if (sub_1005B6D88(v15 | v14, *(a1 + 1), a1[8] & 1, v16 | v9 | v11 | v13, *(a2 + 1), a2[8] & 1) & 1) != 0 && (sub_1007A0604())
  {
    v17 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

double sub_1004A79C8@<D0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_1001F1160(&qword_100AE63B0, &qword_10082A098);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v35 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v28[-v6];
  v8 = type metadata accessor for _BookReaderInteractorState(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1007A0634();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin(v12);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for BookReaderDataManager();
  v15 = sub_1005B6CB4();
  v30 = v16;
  v31 = v15;
  v29 = v17;
  v37 = *(v1 + 176);
  v34 = v37;
  type metadata accessor for PageMovementController();
  sub_1004AEEB0(&qword_100AE63B8, type metadata accessor for PageMovementController, &unk_100833544);

  sub_1007A0A94();
  swift_getObjectType();
  v18 = sub_1007A0A54();
  v19 = v30;
  *v7 = v31;
  *(v7 + 1) = v19;
  v7[16] = v29;
  v20 = v32;
  v21 = v33;
  v22 = *(v32 + 32);
  v22(&v7[*(v3 + 56)], v14, v33);
  v7[*(v3 + 72)] = v18 & 1;
  *v11 = 2;
  *(v11 + 1) = 0;
  *(v11 + 5) = 0;
  *(v11 + 1) = 5;
  v11[16] = 0;
  v23 = *(v9 + 28);
  sub_1007A0614();
  v24 = *(v9 + 32);
  v25 = v35;
  sub_10020B3C8(v7, v35, &qword_100AE63B0, &qword_10082A098);
  v38 = *v25;
  v39 = v25[16];
  v26 = *(v3 + 56);
  LOBYTE(v3) = v25[*(v3 + 72)];
  (*(v20 + 8))(&v11[v23], v21);
  v22(&v11[v23], &v25[v26], v21);
  *v11 = v38;
  v11[16] = v39;
  v11[v24] = v3;
  sub_100298138(v11, v36);
  sub_10029819C(v11);

  return result;
}

uint64_t sub_1004A7D14()
{
  v1 = sub_1001F1160(&qword_100AE63C0, &qword_10082A0A0);
  v2 = *(v1 - 8);
  v18 = v1;
  v19 = v2;
  __chkstk_darwin(v1);
  v15 = &v15 - v3;
  v21 = sub_1001F1160(&qword_100AE63C8, &qword_10082A0A8);
  v23 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = &v15 - v4;
  v20 = sub_1001F1160(&qword_100AE63D0, &unk_10082A0B0);
  v22 = *(v20 - 8);
  __chkstk_darwin(v20);
  v17 = &v15 - v5;
  type metadata accessor for BookReaderDataManager();
  v6 = sub_1005B6CF4();
  v25 = *(*(v0 + 176) + 64);
  v26 = v6;
  sub_1001F1160(&qword_100AE63D8, &unk_10082E490);
  sub_100005920(&qword_100AE63E0, &qword_100AE63D8, &unk_10082E490, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v25 = sub_10079BA14();
  swift_getObjectType();
  v24 = sub_1007A0A64();
  sub_1001F1160(&qword_100AE63E8, &qword_10082A0C0);
  sub_1001F1160(&unk_100AEA100, &qword_10082E640);
  sub_1001F1160(&unk_100AF27D0, &qword_10081ED80);
  sub_100005920(&qword_100AE63F0, &qword_100AE63E8, &qword_10082A0C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100005920(&qword_100AE63F8, &unk_100AEA100, &qword_10082E640, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0, &qword_10081ED80, &protocol conformance descriptor for AnyPublisher<A, B>);
  v7 = v15;
  sub_10079B7B4();
  type metadata accessor for _BookReaderInteractorState(0);
  sub_100005920(&qword_100AE6400, &qword_100AE63C0, &qword_10082A0A0, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  v8 = v16;
  v9 = v18;
  sub_10079BA74();
  (*(v19 + 8))(v7, v9);
  sub_100005920(&qword_100AE6408, &qword_100AE63C8, &qword_10082A0A8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1004AEEB0(&qword_100AE6380, type metadata accessor for _BookReaderInteractorState, &unk_100829FDC);
  v10 = v17;
  v11 = v21;
  sub_10079BAF4();
  (*(v23 + 8))(v8, v11);
  sub_100005920(&qword_100AE6410, &qword_100AE63D0, &unk_10082A0B0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v12 = v20;
  v13 = sub_10079BA14();
  (*(v22 + 8))(v10, v12);
  return v13;
}

uint64_t sub_1004A8224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v38) = a5;
  v37 = a4;
  v40 = a6;
  v39 = type metadata accessor for _BookReaderInteractorState(0) - 8;
  __chkstk_darwin(v39);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AE63B0, &qword_10082A098);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  *v22 = a1;
  *(v22 + 1) = a2;
  v22[16] = a3;
  v23 = *(v12 + 56);
  v24 = sub_1007A0634();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v22[v23], v37, v24);
  v22[*(v12 + 72)] = v38;
  sub_1000077D8(v22, v19, &qword_100AE63B0, &qword_10082A098);
  v26 = *(v12 + 56);
  v27 = v19[*(v12 + 72)];
  *v16 = *v19;
  v16[16] = v19[16];
  v38 = *(v25 + 32);
  v38(&v16[v26], &v19[v26], v24);
  v16[*(v12 + 72)] = v27;
  *v10 = 2;
  *(v10 + 1) = 0;
  *(v10 + 5) = 0;
  *(v10 + 1) = 5;
  v10[16] = 0;
  v28 = v39;
  v29 = *(v39 + 28);
  sub_1007A0614();
  sub_100007840(v22, &qword_100AE63B0, &qword_10082A098);
  v30 = *(v28 + 32);
  v31 = v16;
  v32 = v36;
  sub_10020B3C8(v31, v36, &qword_100AE63B0, &qword_10082A098);
  v41 = *v32;
  v42 = *(v32 + 16);
  v33 = *(v12 + 56);
  LOBYTE(v12) = *(v32 + *(v12 + 72));
  (*(v25 + 8))(&v10[v29], v24);
  v38(&v10[v29], (v32 + v33), v24);
  *v10 = v41;
  v10[16] = v42;
  v10[v30] = v12;
  sub_100298138(v10, v40);
  return sub_10029819C(v10);
}

uint64_t sub_1004A8538@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a1 + 1);
  v10 = *(a1 + 16);
  v11 = *a1;
  v12 = sub_1001F1160(&qword_100AE6418, &qword_10082A0C8);
  v13 = *(a1 + *(v12 + 64));
  v14 = 0x1000000;
  if ((v5 & 1) == 0)
  {
    v14 = 0;
  }

  v15 = v11 | (v4 << 16) | v14;
  v16 = &_mh_execute_header;
  if ((v6 & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 0x10000000000;
  if ((v7 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = 0x1000000000000;
  if ((v8 & 1) == 0)
  {
    v18 = 0;
  }

  v19 = a1 + *(v12 + 48);

  return sub_1004A8224(v15 | v16 | v17 | v18, v9, v10 & 1, v19, v13, a2);
}

uint64_t sub_1004A8620()
{
  v0 = sub_1007A1C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10079F9D4();
  type metadata accessor for CurrentLocationProvider(0);
  sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);

  sub_1007A0544();

  v4 = sub_10079F454();

  (*(v1 + 8))(v3, v0);
  v6[1] = v4;
  sub_1001F1160(&unk_100AE6A00, &qword_10082A088);
  sub_100005920(&qword_100AE6398, &unk_100AE6A00, &qword_10082A088, &protocol conformance descriptor for [A]);
  LOBYTE(v0) = sub_1007A28A4();

  return v0 & 1;
}

void sub_1004A8804(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1007A1C14();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&unk_100AE7C50, qword_10082C9C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1001F1160(&unk_100AF2670, &qword_10082A080);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  if ((sub_1004A8620() & 1) != v2)
  {
    if (a1)
    {
      v13 = sub_1004A8C68(v8);
      if ((*(v10 + 48))(v8, 1, v9, v13) == 1)
      {
        sub_100007840(v8, &unk_100AE7C50, qword_10082C9C0);
        if (qword_100AD1728 != -1)
        {
          swift_once();
        }

        v14 = sub_10079ACE4();
        sub_100008B98(v14, qword_100AE6188);
        v15 = sub_10079ACC4();
        v16 = sub_1007A29B4();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
        }
      }

      else
      {
        sub_10020B3C8(v8, v12, &unk_100AF2670, &qword_10082A080);
        swift_getObjectType();
        sub_1007A1BE4();
        if (sub_1007A1B94() < 0)
        {
          __break(1u);
        }

        else
        {
          sub_1007A0904();
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_1006A976C(1);
            swift_unknownObjectRelease();
          }

          sub_100007840(v12, &unk_100AF2670, &qword_10082A080);
        }
      }
    }

    else
    {
      swift_getObjectType();
      sub_10079F9D4();
      type metadata accessor for CurrentLocationProvider(0);
      sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);

      sub_1007A0544();

      v18 = sub_10079F454();

      (*(v20 + 8))(v5, v3);
      sub_1005B61C8(v18);

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1006A976C(0);
        swift_unknownObjectRelease();
      }
    }
  }
}

double sub_1004A8C68@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CurrentLocationProvider(0);
  sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);

  v2 = sub_1007A05E4();
  v4 = v3;

  sub_1002060B4();
  v5 = sub_1007A28A4();
  v6 = sub_1001F1160(&unk_100AF2670, &qword_10082A080);
  v7 = v6;
  if (v5)
  {
    v8 = (a1 + *(v6 + 48));

    sub_1007A0544();

    *v8 = v2;
    v8[1] = v4;
    (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  return result;
}

uint64_t sub_1004A8E10()
{
  v1 = sub_1001F1160(&qword_100AE6420, &qword_10082A0D8);
  v2 = *(v1 - 8);
  v41 = v1;
  v42 = v2;
  __chkstk_darwin(v1);
  v34 = &v27 - v3;
  v44 = sub_1001F1160(&qword_100AE6428, &qword_10082A0E0);
  __chkstk_darwin(v44);
  v35 = &v27 - v4;
  v43 = sub_1001F1160(&qword_100AE6430, &unk_10082A0E8);
  __chkstk_darwin(v43);
  v29 = &v27 - v5;
  v6 = sub_1001F1160(&unk_100AE1530, &unk_10081F270);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v28 = sub_1001F1160(&qword_100AE6438, &qword_10082A0F8);
  v10 = *(v28 - 8);
  __chkstk_darwin(v28);
  v12 = &v27 - v11;
  v36 = sub_1001F1160(&qword_100AE6440, &qword_10082A100);
  __chkstk_darwin(v36);
  v31 = &v27 - v13;
  v38 = sub_1001F1160(&qword_100AE6448, &qword_10082A108);
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v32 = &v27 - v14;
  v37 = sub_1001F1160(&qword_100AE6450, &qword_10082A110);
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v27 - v15;
  v27 = v0;
  swift_getObjectType();
  v47 = sub_10079FA14();
  sub_10079F9B4();
  sub_100005920(&qword_100AD82D0, &unk_100AE1530, &unk_10081F270, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10079BAF4();
  (*(v7 + 8))(v9, v6);
  v30 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  v16 = sub_100005920(&qword_100AE6458, &qword_100AE6438, &qword_10082A0F8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v17 = v28;
  sub_10079B9E4();
  (*(v10 + 8))(v12, v17);
  v45 = sub_10079F9F4();
  sub_1001F1160(&unk_100AEA1E0, &qword_10083C8D0);
  sub_100005920(&qword_100AF2590, &unk_100AEA1E0, &qword_10083C8D0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10079BAA4();

  type metadata accessor for CurrentLocationProvider(0);
  sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);

  v18 = sub_1007A0554();

  v45 = v18;
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE6460, &qword_10082A148);
  sub_100005920(&unk_100AEB880, &qword_100AE6460, &qword_10082A148, &protocol conformance descriptor for AnyPublisher<A, B>);
  v19 = v34;
  sub_10079BA64();

  sub_100005920(&qword_100AE6468, &qword_100AE6420, &qword_10082A0D8, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  sub_1004AEEB0(&unk_100AEB800, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
  v20 = v41;
  sub_10079BAF4();
  (*(v42 + 8))(v19, v20);
  sub_1001F1160(&qword_100AE6470, &qword_10082A150);
  sub_100005920(&qword_100AE6478, &qword_100AE6470, &qword_10082A150, &protocol conformance descriptor for AnyPublisher<A, B>);
  v45 = v17;
  v46 = v16;
  swift_getOpaqueTypeConformance2();
  sub_100005920(&qword_100AE6480, &qword_100AE6430, &unk_10082A0E8, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  sub_100005920(&qword_100AE6488, &qword_100AE6428, &qword_10082A0E0, v30);
  v21 = v32;
  sub_10079B7C4();
  sub_100005920(&qword_100AE6490, &qword_100AE6448, &qword_10082A108, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  v22 = v33;
  v23 = v38;
  sub_10079BA74();
  (*(v40 + 8))(v21, v23);
  sub_100005920(&qword_100AE6498, &qword_100AE6450, &qword_10082A110, &protocol conformance descriptor for Publishers.Map<A, B>);
  v24 = v37;
  v25 = sub_10079BA14();
  (*(v39 + 8))(v22, v24);
  return v25;
}

void sub_1004A96E4(_BYTE *a2@<X8>)
{
  sub_1001F1160(&qword_100AE64A0, &qword_10082A158);
  sub_10079F444();
  sub_1001F1160(&unk_100AE6A00, &qword_10082A088);
  sub_100005920(&qword_100AE6398, &unk_100AE6A00, &qword_10082A088, &protocol conformance descriptor for [A]);
  v3 = sub_1007A28A4();

  *a2 = v3 & 1;
}

void sub_1004A97B8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 160);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1007A35E4();
    sub_10079B884();
    sub_1004AEEB0(&qword_100AE1500, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    sub_1007A2864();
    v4 = v20;
    v3 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_10004DC54(v4);

      *(v1 + 160) = &_swiftEmptySetSingleton;

      sub_10002B130(v1 + 16);
      sub_10002B130(v1 + 32);
      sub_10002B130(v1 + 48);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v17 = OBJC_IVAR____TtC5Books20BookReaderInteractor_currentLocationChangeDate;
      v18 = sub_100796BB4();
      (*(*(v18 - 8) + 8))(v1 + v17, v18);

      return;
    }

    while (1)
    {
      sub_10079B874();

      v6 = v14;
      v7 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1007A3654())
      {
        sub_10079B884();
        swift_dynamicCast();
        v14 = v6;
        v15 = v7;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1004A9AB0()
{
  sub_1004A97B8();

  return swift_deallocClassInstance();
}

uint64_t sub_1004A9B30(uint64_t a1)
{
  result = sub_100796BB4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1004A9C68(uint64_t a1)
{
  result = sub_1007A0634();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1004A9D34(uint64_t a1)
{
  v2 = *(*(v1 + 176) + 56);
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      sub_100529680(a1, 1);
      return;
    }

LABEL_8:
    sub_1004178E4(a1, 1);
    return;
  }

  if (!*(*(v1 + 176) + 56))
  {
    goto LABEL_8;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100597250(a1, 1);

    swift_unknownObjectRelease();
  }
}

void sub_1004A9DC8(uint64_t *a1)
{
  v3 = sub_10079FD44();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v43 - v6;
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v45 = (&v43 - v11);
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 40);
  v49 = v1;
  swift_getObjectType();
  sub_10079F9D4();
  v15 = sub_10079F434();

  if (v14)
  {
    if (v15)
    {
      if (sub_1007A12D4())
      {
        sub_1007A0C24();

        v16 = v46;
        sub_10079FD04();
        if (qword_100AD1B58 != -1)
        {
          swift_once();
        }

        v17 = sub_10079ACE4();
        sub_100008B98(v17, qword_100AF40B0);
        v19 = v47;
        v18 = v48;
        v20 = v44;
        (*(v47 + 16))(v44, v16, v48);
        v21 = sub_10079ACC4();
        v22 = sub_1007A2994();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = v20;
          v45 = swift_slowAlloc();
          v50 = v45;
          *v23 = 136315138;
          sub_1004AEEB0(&qword_100AE9A40, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
          v25 = sub_1007A3A74();
          v27 = v26;
          v28 = *(v19 + 8);
          v28(v24, v48);
          v29 = sub_1000070F4(v25, v27, &v50);
          v18 = v48;

          *(v23 + 4) = v29;
          _os_log_impl(&_mh_execute_header, v21, v22, "Requesting move to highlight location: %s", v23, 0xCu);
          sub_1000074E0(v45);

          v16 = v46;
        }

        else
        {

          v28 = *(v19 + 8);
          v28(v20, v18);
        }

        sub_10070AD08(v16);

        v28(v16, v18);
        return;
      }

      goto LABEL_14;
    }

LABEL_15:
    type metadata accessor for CurrentLocationController(0);
    sub_1004AEEB0(&qword_100AE63A8, type metadata accessor for CurrentLocationController, &unk_100841AB8);
    v51._countAndFlagsBits = v12;
    v51._object = v13;
    sub_1007A09D4(v51);
    return;
  }

  if (!v15)
  {
    goto LABEL_15;
  }

  if (!sub_1007A12C4())
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_1007A0C24();

  v30 = v45;
  sub_10079FD04();
  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v31 = sub_10079ACE4();
  sub_100008B98(v31, qword_100AF40B0);
  v33 = v47;
  v32 = v48;
  (*(v47 + 16))(v9, v30, v48);
  v34 = sub_10079ACC4();
  v35 = sub_1007A2994();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v50 = v37;
    *v36 = 136315138;
    sub_1004AEEB0(&qword_100AE9A40, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
    v38 = sub_1007A3A74();
    v40 = v39;
    v41 = *(v33 + 8);
    v41(v9, v48);
    v42 = sub_1000070F4(v38, v40, &v50);
    v32 = v48;

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "Requesting move to bookmark location: %s", v36, 0xCu);
    sub_1000074E0(v37);

    v30 = v45;
  }

  else
  {

    v41 = *(v33 + 8);
    v41(v9, v32);
  }

  sub_10070AD08(v30);

  v41(v30, v32);
}

uint64_t sub_1004AA40C()
{
  swift_getObjectType();
  sub_1007A0A74();
  sub_1001F1160(&unk_100AEA1E0, &qword_10083C8D0);
  sub_100005920(&qword_100AF2590, &unk_100AEA1E0, &qword_10083C8D0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v0 = sub_10079BA14();

  return v0;
}

uint64_t sub_1004AA4C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  v5 = sub_1007A1C14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getObjectType();
  sub_10079FA34();
  (*(v6 + 56))(v4, 0, 1, v5);
  (*(v6 + 32))(v8, v4, v5);
  swift_getObjectType();
  v9 = sub_1007A0A84();
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_1004AA6D8(void *a1)
{
  v2 = sub_1001F1160(&unk_100AD5A90, &unk_1008112F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  v5 = sub_1007A1C14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1004AE51C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007840(v4, &unk_100AD5A90, &unk_1008112F0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    swift_getObjectType();
    sub_1007A0A44();
    swift_getObjectType();
    sub_10079F9D4();
    swift_unknownObjectRelease();
    sub_10079F374();

    swift_getObjectType();
    v10 = sub_10079F974();
    (*(v6 + 8))(v8, v5);
    return v10;
  }
}

uint64_t sub_1004AA91C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 104) = a1;
  *(v2 + 24) = sub_1007A26F4();
  *(v2 + 32) = sub_1007A26E4();
  v4 = sub_1007A2694();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_1004AA9BC, v4, v3);
}

uint64_t sub_1004AA9BC(uint64_t a1)
{
  v1[7] = *(v1[2] + 64);
  v1[8] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_1004AAA50, v3, v2);
}

uint64_t sub_1004AAA50()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC5Books21BookReaderDataManager_readingSettingsManager + 8);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1004AAB18;
  v4 = *(v0 + 104);

  return dispatch thunk of ReadingSettingsManaging.changeCurrentThemeType(to:)(v4, ObjectType, v1);
}

uint64_t sub_1004AAB18()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1004AAD1C;
  }

  else
  {
    v5 = sub_1004AAC54;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004AAC54()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1004AACB8, v1, v2);
}

uint64_t sub_1004AACB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004AAD1C()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1004AAD80, v1, v2);
}

uint64_t sub_1004AAD80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004AADE4()
{
  v0 = sub_10079FD44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1C14();
  v16 = *(v4 - 8);
  v17 = v4;
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CurrentLocationProvider(0);
  sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);

  sub_1007A0544();

  v7 = [objc_opt_self() sharedController];
  sub_1007A1B64();
  sub_1004AEA30(v3);
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  if (v9)
  {
    swift_getObjectType();
    sub_10079F8B4();
    sub_10000E3E8(v18, v19);
    sub_10079ECA4();
    v10 = sub_1007A2214();

    sub_1000074E0(v18);
    v11 = sub_1007A2214();

    v12 = sub_1007A2214();

    [v7 activateChapterForBook:v10 chapterID:v11 title:v12 completion:0];
  }

  swift_getObjectType();
  sub_10079F8B4();
  sub_10000E3E8(v18, v19);
  sub_10079ECA4();
  v13 = sub_1007A2214();

  sub_1000074E0(v18);
  [v7 updateBookProgress:v13 completion:0];

  return (*(v16 + 8))(v6, v17);
}

uint64_t sub_1004AB134(char a1)
{
  v2 = sub_1007A0404();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1007A0364();
  }

  else
  {
    sub_1007A0384();
  }

  sub_1005C1FE4(v5, 0);
  return (*(v3 + 8))(v5, v2);
}

double sub_1004AB21C(char a1)
{
  if (a1)
  {
    if ((sub_1004AB9C0() & 0x100000000) == 0)
    {

      sub_10079B8C4();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v2 = sub_10079F9D4();
      sub_100565C4C(v2);

      swift_unknownObjectRelease();
    }

    v3 = *(v1 + 192);
    if (v3)
    {
      v4 = *(v1 + 184);

      sub_10070B9CC(v4, v3);

      *(v1 + 184) = 0;
      *(v1 + 192) = 0;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1006C13A8();
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1004AB330(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007A1C14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v47 - v9;
  v11 = v1[10];
  v12 = v2[11];
  ObjectType = swift_getObjectType();
  v50 = v11;
  v49 = ObjectType;
  v51 = v12;
  sub_10079F8B4();
  sub_10000E3E8(v52, v53);
  v48 = sub_10079ECF4();
  v15 = v14;
  sub_1000074E0(v52);
  if (qword_100AD1728 != -1)
  {
    swift_once();
  }

  v16 = sub_10079ACE4();
  v17 = sub_100008B98(v16, qword_100AE6188);
  v18 = *(v5 + 16);
  v18(v10, a1, v4);
  v18(v7, a1, v4);

  v47[2] = v17;
  v19 = sub_10079ACC4();
  v20 = sub_1007A2994();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v47[1] = v2;
    v47[0] = v22;
    v52[0] = v22;
    *v21 = 134218498;
    v23 = sub_1007A1BE4();
    v24 = *(v5 + 8);
    v24(v10, v4);
    *(v21 + 4) = v23;
    *(v21 + 12) = 2048;
    v25 = sub_1007A1B94();
    v24(v7, v4);
    *(v21 + 14) = v25;
    *(v21 + 22) = 2082;
    *(v21 + 24) = sub_1000070F4(v48, v15, v52);
    _os_log_impl(&_mh_execute_header, v19, v20, "Received updated location ordinal: %ld offset: %ld session:%{public}s", v21, 0x20u);
    sub_1000074E0(v47[0]);
  }

  else
  {
    v26 = *(v5 + 8);
    v26(v7, v4);
    v26(v10, v4);
  }

  sub_10079F8B4();
  sub_10000E3E8(v52, v53);
  v27 = sub_10079EC84();
  sub_1000074E0(v52);
  if (v27)
  {
    goto LABEL_17;
  }

  v28 = sub_1004AB9C0();
  if ((v28 & 0x100000000) != 0)
  {
    goto LABEL_17;
  }

  v29 = *&v28;
  if (*&v28 < 0.0)
  {
    goto LABEL_17;
  }

  v30 = sub_1004AB9C0();
  if ((v30 & 0x100000000) == 0)
  {
    *v52 = *&v30;

    sub_10079B8C4();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001F1160(&unk_100AE0AC0, &unk_100812C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    v52[0] = sub_1007A2254();
    v52[1] = v32;
    sub_1007A36B4();
    v33 = objc_allocWithZone(NSNumber);
    *&v34 = v29;
    v35 = [v33 initWithFloat:v34];
    *(inited + 96) = sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
    *(inited + 72) = v35;
    v36 = sub_100013740(inited);
    swift_setDeallocating();
    sub_100007840(inited + 32, &unk_100AD1E50, &unk_10080B810);
    type metadata accessor for BookReaderContainerViewController(0);
    sub_100565BA4(v36);

    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  sub_1007A1504();
  sub_1007A1134();
  v38 = v37;

  if (v38 >= kAEAnnotationReadingLocationSignificantHighwaterMark || kAEAnnotationReadingLocationSignificantHighwaterMark >= v29)
  {
LABEL_17:
  }

  else
  {

    v39 = sub_10079ACC4();
    v40 = sub_1007A29D4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v52[0] = v42;
      *v41 = 136446210;
      v43 = sub_1000070F4(v48, v15, v52);

      *(v41 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "Read past our signifigant high water mark for session:%{public}s", v41, 0xCu);
      sub_1000074E0(v42);
    }

    else
    {
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v45 = Strong;
      v46 = swift_unknownObjectWeakLoadStrong();
      if (v46)
      {
        [v46 assetViewControllerSignificantReadingLocationChange:v45];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1004AB9C0()
{
  v0 = sub_1007A1C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CurrentLocationProvider(0);
  sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);

  sub_1007A0544();

  swift_getObjectType();
  if ((sub_10079F9E4() & 1) == 0 || (sub_1007A1B44() & 1) != 0 || (sub_10079F9D4(), v4 = sub_10079F484(), , sub_10079F9D4(), v5 = sub_10079F374(), , v5 == _s5Books17REActionMenuStateC9pageCountSivpfi_0()))
  {
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v9 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
    (*(v1 + 8))(v3, v0);
    if (v4 != v9)
    {
      v7 = 0;
      v6 = COERCE_UNSIGNED_INT(v5 / v4);
      goto LABEL_6;
    }
  }

  v6 = 0;
  v7 = 1;
LABEL_6:
  v10[12] = v7;
  return v6 | (v7 << 32);
}

void sub_1004ABBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = [v6 readingStatisticsEnabled];
    swift_unknownObjectRelease();
    if (v7)
    {
      swift_getObjectType();
      sub_10079F8B4();
      sub_10000E3E8(v28, v29);
      v8 = sub_10079ECF4();
      v10 = v9;
      sub_1000074E0(v28);
      if (qword_100AD1728 != -1)
      {
        swift_once();
      }

      v11 = sub_10079ACE4();
      sub_100008B98(v11, qword_100AE6188);

      v12 = sub_10079ACC4();
      v13 = sub_1007A2994();

      if (os_log_type_enabled(v12, v13))
      {
        v27 = v8;
        v14 = swift_slowAlloc();
        v28[0] = swift_slowAlloc();
        *v14 = 136446466;
        v15 = sub_1007A23E4();
        v17 = sub_1000070F4(v15, v16, v28);

        *(v14 + 4) = v17;
        *(v14 + 12) = 2082;
        *(v14 + 14) = sub_1000070F4(v27, v10, v28);
        _os_log_impl(&_mh_execute_header, v12, v13, "Received updated location CFI: %{public}s session:%{public}s", v14, 0x16u);
        swift_arrayDestroy();
      }

      sub_10079F8B4();
      sub_10000E3E8(v28, v29);
      v18 = sub_10079EC84();
      sub_1000074E0(v28);
      if ((v18 & 1) == 0)
      {
        if (sub_1007A2414())
        {
          v19 = objc_allocWithZone(BCCFISet);
          v20 = sub_1007A2214();
          v21 = [v19 initWithCFIString:v20];

          if (!v21)
          {
            __break(1u);
            goto LABEL_25;
          }

          v22 = swift_unknownObjectWeakLoadStrong();
          if (v22)
          {
            [v22 assetViewController:v5 willHideContentWithCFIs:v21];
            swift_unknownObjectRelease();
          }
        }

        if (sub_1007A2414())
        {
          v23 = objc_allocWithZone(BCCFISet);
          v24 = sub_1007A2214();
          v25 = [v23 initWithCFIString:v24];

          if (v25)
          {

            v26 = swift_unknownObjectWeakLoadStrong();
            if (v26)
            {
              [v26 assetViewController:v5 didShowContentWithCFIs:v25];
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            return;
          }

LABEL_25:
          __break(1u);
          return;
        }
      }

      swift_unknownObjectRelease();

      return;
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1004AC00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100796BB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  result = sub_1007A2414();
  if (result)
  {
    sub_100796BA4();
    v12 = OBJC_IVAR____TtC5Books20BookReaderInteractor_currentLocationChangeDate;
    swift_beginAccess();
    (*(v5 + 24))(v2 + v12, v10, v4);
    swift_endAccess();
    v38 = v2;
    swift_getObjectType();
    sub_10079F8B4();
    sub_10000E3E8(v39, v39[3]);
    v13 = sub_10079ECF4();
    v15 = v14;
    sub_1000074E0(v39);
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100AF40B0);
    (*(v5 + 16))(v7, v10, v4);

    v17 = sub_10079ACC4();
    v18 = sub_1007A29A4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = a1;
      v20 = v19;
      v36 = swift_slowAlloc();
      v39[0] = v36;
      *v20 = 136446722;
      sub_1004AEEB0(&unk_100AE9A30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v34 = v17;
      v21 = sub_1007A3A74();
      v32 = v13;
      v23 = v22;
      v37 = v4;
      v24 = *(v5 + 8);
      v33 = v18;
      v24(v7, v37);
      v25 = sub_1000070F4(v21, v23, v39);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2082;
      v26 = sub_1000070F4(v32, v15, v39);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2082;
      v27 = sub_1007A23E4();
      v29 = sub_1000070F4(v27, v28, v39);

      *(v20 + 24) = v29;
      v30 = v24;
      v4 = v37;
      v31 = v34;
      _os_log_impl(&_mh_execute_header, v34, v33, "#currentLoc: updated location change date:%{public}s for:%{public}s location:%{public}s", v20, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v30 = *(v5 + 8);
      v30(v7, v4);
    }

    sub_1004AC424(1);
    return (v30)(v10, v4);
  }

  return result;
}

uint64_t sub_1004AC424(int a1)
{
  LODWORD(v102) = a1;
  v105 = sub_10079FD44();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v100 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100796BB4();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v104 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v110 = &v95 - v5;
  v6 = sub_1001F1160(&qword_100AD6578, &unk_100812C80);
  __chkstk_darwin(v6 - 8);
  v8 = &v95 - v7;
  v9 = sub_1001F1160(&qword_100AD6328, &qword_100812B58);
  v107 = *(v9 - 8);
  __chkstk_darwin(v9);
  v99 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v95 - v12;
  v14 = sub_1001F1160(&qword_100AD6580, &unk_100812CA0);
  v108 = *(v14 - 8);
  __chkstk_darwin(v14);
  v106 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v101 = &v95 - v17;
  __chkstk_darwin(v18);
  v20 = &v95 - v19;
  v112 = v1;
  v21 = *(v1 + 21);
  v22 = OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider;
  type metadata accessor for CurrentLocationProvider(0);
  sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);

  sub_1007A0564();

  v23 = *(v21 + v22);
  v24 = v107;
  v25 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentDatedPageLocation;
  swift_beginAccess();
  sub_1000077D8(v23 + v25, v8, &qword_100AD6578, &unk_100812C80);
  v26 = v24[6](v8, 1, v9);
  v113 = v14;
  if (v26 == 1)
  {
    sub_100007840(v8, &qword_100AD6578, &unk_100812C80);
    goto LABEL_9;
  }

  v24[4](v13, v8, v9);
  v27 = v110;
  sub_10079FDF4();
  v28 = v104;
  sub_10079FDF4();
  v29 = sub_100796B04();
  v31 = (v109 + 8);
  v30 = *(v109 + 8);
  v32 = v28;
  v33 = v111;
  v30(v32, v111);
  v30(v27, v33);
  v34 = v13;
  if ((v29 & 1) == 0)
  {
    (v24[1])(v13, v9);
LABEL_9:
    v54 = v113;
    sub_10079FE14();
    v55 = sub_1007A2414();

    v56 = v106;
    if (v55)
    {
      swift_getObjectType();
      sub_10079F8B4();
      sub_10000E3E8(&v114, v115);
      v57 = sub_10079ECF4();
      v59 = v58;
      sub_1000074E0(&v114);
      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v60 = sub_10079ACE4();
      sub_100008B98(v60, qword_100AF40B0);
      v61 = v108;
      v62 = v101;
      v108[2](v101, v20, v54);

      v63 = sub_10079ACC4();
      v64 = sub_1007A29D4();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v105 = v57;
        v66 = v65;
        v106 = swift_slowAlloc();
        v116 = v106;
        *v66 = 136446466;
        sub_10079FE14();
        v67 = sub_1007A23E4();
        v68 = v20;
        v70 = v69;

        v71 = v61[1];
        v107 = ((v61 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v108 = v71;
        (v71)(v62, v113);
        v72 = sub_1000070F4(v67, v70, &v116);
        v20 = v68;

        *(v66 + 4) = v72;
        *(v66 + 12) = 2080;
        v73 = sub_1000070F4(v105, v59, &v116);

        *(v66 + 14) = v73;
        _os_log_impl(&_mh_execute_header, v63, v64, "#currentLoc: Saving currentlocation:%{public}s for sessionID:%s", v66, 0x16u);
        swift_arrayDestroy();
        v54 = v113;
      }

      else
      {

        v85 = v61[1];
        v107 = ((v61 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v108 = v85;
        (v85)(v62, v54);
      }

      swift_getObjectType();
      sub_10079FE14();
      sub_1004AB9C0();
      v86 = v110;
      sub_10079FDF4();
      sub_1007A1524();

      (*(v109 + 8))(v86, v111);
      return (v108)(v20, v54);
    }

    else
    {
      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v74 = sub_10079ACE4();
      sub_100008B98(v74, qword_100AF40B0);
      v75 = v108;
      v108[2](v56, v20, v54);
      v76 = sub_10079ACC4();
      v77 = sub_1007A29B4();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v116 = v112;
        *v78 = 136446210;
        sub_10079FE14();
        v79 = sub_1007A23E4();
        v81 = v80;

        v104 = v20;
        v82 = v75[1];
        v82(v56, v54);
        v83 = sub_1000070F4(v79, v81, &v116);

        *(v78 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v76, v77, "#currentLoc: we have an updated readingLocationCFI:%{public}s but it is invalid. Skiping save.", v78, 0xCu);
        sub_1000074E0(v112);

        return (v82)(v104, v54);
      }

      else
      {

        v87 = v75[1];
        v87(v56, v54);
        return (v87)(v20, v54);
      }
    }
  }

  v102 = v30;
  v35 = v24;
  v106 = v34;
  swift_getObjectType();
  sub_10079F8B4();
  sub_10000E3E8(&v114, v115);
  v36 = sub_10079ECF4();
  v38 = v37;
  sub_1000074E0(&v114);
  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v101 = v31;
  v104 = v20;
  v39 = sub_10079ACE4();
  sub_100008B98(v39, qword_100AF40B0);
  v40 = v99;
  v35[2](v99, v106, v9);

  v41 = sub_10079ACC4();
  v42 = sub_1007A29D4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v114 = v97;
    *v43 = 136315394;
    v95 = v36;
    v44 = v100;
    v96 = v42;
    sub_10079FE14();
    sub_1004AEEB0(&qword_100AE9A40, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
    v45 = sub_1007A3A74();
    v46 = v9;
    v48 = v47;
    v49 = v44;
    (*(v103 + 8))(v44, v105);
    v50 = v35[1];
    v98 = (v35 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v107 = v50;
    (v50)(v40, v46);
    v51 = sub_1000070F4(v45, v48, &v114);
    v9 = v46;

    *(v43 + 4) = v51;
    *(v43 + 12) = 2080;
    v52 = sub_1000070F4(v95, v38, &v114);

    *(v43 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v41, v96, "#currentLoc: Saving current PageLocation:%s for sessionID:%s", v43, 0x16u);
    swift_arrayDestroy();

    v53 = v109;
  }

  else
  {

    v88 = v35[1];
    v98 = (v35 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v107 = v88;
    (v88)(v40, v9);
    v53 = v109;
    v49 = v100;
  }

  v89 = v110;
  v90 = v9;
  v91 = v106;
  sub_10079FDF4();
  v92 = OBJC_IVAR____TtC5Books20BookReaderInteractor_currentLocationChangeDate;
  v93 = v112;
  swift_beginAccess();
  v94 = v111;
  (*(v53 + 40))(&v93[v92], v89, v111);
  swift_endAccess();
  swift_getObjectType();
  sub_10079FE14();
  sub_1004AB9C0();
  sub_10079FDF4();
  sub_1007A1534();
  v102(v89, v94);
  (*(v103 + 8))(v49, v105);
  (v107)(v91, v90);
  return (v108[1])(v104, v113);
}

uint64_t sub_1004AD258()
{
  v1 = sub_100796BB4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  _s8BookEPUB25HighlightAnnotationEntityC5BooksE26annotationModificationDate10Foundation0I0Vvg_0();
  v8 = OBJC_IVAR____TtC5Books20BookReaderInteractor_currentLocationChangeDate;
  swift_beginAccess();
  v9 = *(v2 + 16);
  v15 = v0;
  v9(v4, v0 + v8, v1);
  v10 = sub_100796B04();
  v11 = *(v2 + 8);
  v11(v4, v1);
  v11(v7, v1);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    _s8BookEPUB25HighlightAnnotationEntityC5BooksE26annotationModificationDate10Foundation0I0Vvg_0();
    sub_100796A84();
    v13 = sub_100796B54();
    v11(v4, v1);
    v11(v7, v1);
    if (v13)
    {
      v9(v7, v15 + v8, v1);
      sub_100796A84();
      v12 = sub_100796B54();
      v11(v4, v1);
      v11(v7, v1);
    }

    else
    {
      v12 = 0;
    }
  }

  return v12 & 1;
}

double sub_1004AD480(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100796BB4();
  v91 = *(v4 - 8);
  v92 = v4;
  __chkstk_darwin(v4);
  v90 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AE6A10, &qword_10082A160);
  __chkstk_darwin(v6 - 8);
  v8 = &v89 - v7;
  v9 = sub_10079FD44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v89 - v14;
  swift_getObjectType();
  sub_10079F8B4();
  sub_10000E3E8(v94, v94[3]);
  v16 = sub_10079ECF4();
  v18 = v17;
  sub_1000074E0(v94);
  if (*(v2 + OBJC_IVAR____TtC5Books20BookReaderInteractor_openingToLocation) == 1)
  {

    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100AF40B0);

    v20 = sub_10079ACC4();
    v21 = sub_1007A29D4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v93 = a1;
      v94[0] = v23;
      *v22 = 136446210;
      sub_1007A1154();
      sub_1004AEEB0(&qword_100AE64A8, &type metadata accessor for PersistedLocationEntity, &protocol conformance descriptor for PersistedLocationEntity);
      v24 = sub_1007A3A74();
      v26 = sub_1000070F4(v24, v25, v94);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "#currentLoc: Ignoring currentPersistedLocation:%{public}s as we have an openingLocation provided", v22, 0xCu);
      sub_1000074E0(v23);
    }

    return result;
  }

  v89 = v16;
  v94[0] = sub_1007A02F4();
  v94[1] = v28;
  sub_1002060B4();
  v29 = sub_1007A28A4();

  if (v29 & 1) != 0 && (sub_1004AD258())
  {
    v30 = sub_1007A02F4();
    v32 = v31;
    type metadata accessor for CurrentLocationProvider(0);
    sub_1004AEEB0(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider, &unk_100812B78);

    v33 = sub_1007A05E4();
    v35 = v34;

    if (v30 == v33 && v32 == v35)
    {

LABEL_26:
      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v68 = sub_10079ACE4();
      sub_100008B98(v68, qword_100AF40B0);

      v69 = sub_10079ACC4();
      v70 = sub_1007A2994();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v93 = a1;
        v94[0] = v72;
        *v71 = 136446466;
        sub_1007A1154();
        sub_1004AEEB0(&qword_100AE64A8, &type metadata accessor for PersistedLocationEntity, &protocol conformance descriptor for PersistedLocationEntity);
        v73 = sub_1007A3A74();
        v75 = sub_1000070F4(v73, v74, v94);

        *(v71 + 4) = v75;
        *(v71 + 12) = 2082;
        v76 = sub_1000070F4(v89, v18, v94);

        *(v71 + 14) = v76;
        _os_log_impl(&_mh_execute_header, v69, v70, "#currentLoc: #globalAnnotation Ignoring identical location currentPersistedLocation:%{public}s for:%{public}s", v71, 0x16u);
        swift_arrayDestroy();

        return result;
      }

      goto LABEL_33;
    }

    v67 = sub_1007A3AB4();

    if (v67)
    {
      goto LABEL_26;
    }

    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v77 = sub_10079ACE4();
    sub_100008B98(v77, qword_100AF40B0);

    v78 = sub_10079ACC4();
    v79 = sub_1007A29D4();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v93 = a1;
      v94[0] = v81;
      *v80 = 136446466;
      sub_1007A1154();
      sub_1004AEEB0(&qword_100AE64A8, &type metadata accessor for PersistedLocationEntity, &protocol conformance descriptor for PersistedLocationEntity);
      v82 = sub_1007A3A74();
      v84 = sub_1000070F4(v82, v83, v94);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2082;
      v85 = sub_1000070F4(v89, v18, v94);

      *(v80 + 14) = v85;
      _os_log_impl(&_mh_execute_header, v78, v79, "#currentLoc: #globalAnnotation Adopting currentPersistedLocation:\n%{public}s \nfor:%{public}s", v80, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v86 = sub_1007A02F4();
    v88 = v87;
    type metadata accessor for CurrentLocationController(0);
    sub_1004AEEB0(&qword_100AE63A8, type metadata accessor for CurrentLocationController, &unk_100841AB8);
    v95._countAndFlagsBits = v86;
    v95._object = v88;
    sub_1007A09D4(v95);
LABEL_33:

    return result;
  }

  sub_1007A1124();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007840(v8, &qword_100AE6A10, &qword_10082A160);
LABEL_20:
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v50 = sub_10079ACE4();
    sub_100008B98(v50, qword_100AF40B0);

    v51 = sub_10079ACC4();
    v52 = sub_1007A29D4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94[0] = a1;
      *v53 = 136446722;
      sub_1007A1154();
      sub_1004AEEB0(&qword_100AE64A8, &type metadata accessor for PersistedLocationEntity, &protocol conformance descriptor for PersistedLocationEntity);
      v54 = sub_1007A3A74();
      v56 = sub_1000070F4(v54, v55, &v93);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2082;
      v57 = sub_1000070F4(v89, v18, &v93);

      *(v53 + 14) = v57;
      *(v53 + 22) = 2080;
      v58 = OBJC_IVAR____TtC5Books20BookReaderInteractor_currentLocationChangeDate;
      swift_beginAccess();
      v60 = v91;
      v59 = v92;
      v61 = v2 + v58;
      v62 = v90;
      (v91[2].isa)(v90, v61, v92);
      sub_1004AEEB0(&unk_100AE9A30, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v63 = sub_1007A3A74();
      v65 = v64;
      (v60[1].isa)(v62, v59);
      v66 = sub_1000070F4(v63, v65, &v93);

      *(v53 + 24) = v66;
      _os_log_impl(&_mh_execute_header, v51, v52, "#currentLoc: Ignoring currentPersistedLocation:%{public}s for:%{public}s currentLocationChangeDate:%s", v53, 0x20u);
      swift_arrayDestroy();

      return result;
    }

    goto LABEL_33;
  }

  (*(v10 + 32))(v15, v8, v9);
  if ((sub_1004AD258() & 1) == 0)
  {
    (*(v10 + 8))(v15, v9);
    goto LABEL_20;
  }

  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v36 = sub_10079ACE4();
  sub_100008B98(v36, qword_100AF40B0);
  (*(v10 + 16))(v12, v15, v9);

  v37 = sub_10079ACC4();
  v38 = sub_1007A29D4();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v94[0] = v92;
    *v39 = 136446466;
    sub_1004AEEB0(&qword_100AE9A40, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
    v91 = v37;
    v40 = sub_1007A3A74();
    v42 = v41;
    v43 = *(v10 + 8);
    LODWORD(v90) = v38;
    v44 = v12;
    v45 = v43;
    v43(v44, v9);
    v46 = sub_1000070F4(v40, v42, v94);

    *(v39 + 4) = v46;
    *(v39 + 12) = 2082;
    v47 = sub_1000070F4(v89, v18, v94);
    v48 = v45;

    *(v39 + 14) = v47;
    v49 = v91;
    _os_log_impl(&_mh_execute_header, v91, v90, "#currentLoc: #globalAnnotation Adopting currentPersistedPageLocation:\n%{public}s \nfor:%{public}s", v39, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v48 = *(v10 + 8);
    v48(v12, v9);
  }

  sub_10070AD08(v15);
  v48(v15, v9);
  return result;
}

double sub_1004AE280(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1004AB21C(v2);
  }

  return result;
}

double sub_1004AE2E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1004AB330(a1);
  }

  return result;
}

double sub_1004AE340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1004ABBE0(a1, a2, a3, a4);
  }

  return result;
}

double sub_1004AE3CC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1004AC00C(v2, v3);
  }

  return result;
}

double sub_1004AE43C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1004AD480(v2);
  }

  return result;
}

double sub_1004AE49C(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_1006A9EB0(v2);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1004AE51C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AF1140, &unk_100812770);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1001F1160(&qword_100AD65A8, &unk_100812CB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  sub_1007A0664();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    v10 = [a1 annotationUuid];
    if (v10)
    {
      v11 = v10;
      sub_1007A2254();

      [a1 ordinal];
      sub_1007A0654();
      v12 = sub_10079F434();

      if (v12)
      {
        v13 = sub_1007A12E4();

        if (v13)
        {
          sub_1007A0C24();
        }
      }

      else
      {
      }

      v28 = sub_1001F1160(&unk_100AF1150, &qword_10082A090);
      (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
      v29 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
      (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
      sub_1007A1BD4();
      swift_unknownObjectRelease();
      v30 = sub_1007A1C14();
      return (*(*(v30 - 8) + 56))(a2, 0, 1, v30);
    }

    if (qword_100AD1728 != -1)
    {
      swift_once();
    }

    v18 = sub_10079ACE4();
    sub_100008B98(v18, qword_100AE6188);
    v19 = a1;
    v20 = sub_10079ACC4();
    v21 = sub_1007A29B4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "Annotation %@ did not have UUID", v22, 0xCu);
      sub_100007840(v23, &unk_100AD9480, &qword_1008113B0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100AD1728 != -1)
    {
      swift_once();
    }

    v14 = sub_10079ACE4();
    sub_100008B98(v14, qword_100AE6188);
    v15 = sub_10079ACC4();
    v16 = sub_1007A29B4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "No paginating service", v17, 2u);
    }
  }

  v25 = sub_1007A1C14();
  v26 = *(*(v25 - 8) + 56);

  return v26(a2, 1, 1, v25);
}

uint64_t sub_1004AEA30(uint64_t a1)
{
  swift_getObjectType();
  if ((sub_10079F9E4() & 1) == 0)
  {
    if (qword_100AD1728 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AE6188);
    v8 = sub_10079ACC4();
    v9 = sub_1007A2994();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "pagination not yet complete", v10, 2u);
    }

    return 0;
  }

  v1 = sub_10079F994();
  if (v2)
  {
    return 0;
  }

  v3 = v1;
  swift_getObjectType();
  sub_10079F8B4();
  sub_10000E3E8(v11, v11[3]);
  v4 = sub_10079ECC4();
  result = sub_1000074E0(v11);
  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_1007A3784();
    goto LABEL_7;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return result;
  }

LABEL_7:
  v6 = sub_10079FDB4();

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_1007A3784();
  }

  else
  {
  }

  sub_10079FDC4();

  return v6;
}

uint64_t sub_1004AEC64()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1007A0894();
  swift_unknownObjectRelease();
  v0 = sub_10079F294();

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1007A0894();
  swift_unknownObjectRelease();
  v1 = sub_10079F274();

  result = v0 - v1;
  if (__OFSUB__(v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004AED30()
{
  v0 = sub_1004AB9C0();
  if ((v0 & &_mh_execute_header) != 0)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = *&v0;
  }

  return result;
}

uint64_t sub_1004AED60()
{
  sub_1001F1160(&qword_100AE6388, &unk_10082A070);
  sub_100005920(&qword_100AE6390, &qword_100AE6388, &unk_10082A070, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_10079BA14();
}

uint64_t sub_1004AEE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1007A0894();
  v4 = swift_unknownObjectRelease();
  v5 = a3(v4);

  return v5;
}

uint64_t sub_1004AEEB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004AEEF8(void *a1)
{
  v3 = sub_1001F1160(&unk_100AF1140, &unk_100812770);
  __chkstk_darwin(v3 - 8);
  v5 = v41 - v4;
  v6 = sub_1001F1160(&qword_100AD65A8, &unk_100812CB0);
  __chkstk_darwin(v6 - 8);
  v8 = v41 - v7;
  v9 = sub_1007A1C14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC5Books20BookReaderInteractor_isOpening) == 1)
  {
    *(v1 + OBJC_IVAR____TtC5Books20BookReaderInteractor_openingToLocation) = 1;
  }

  if (!a1)
  {
    if (qword_100AD1728 != -1)
    {
      swift_once();
    }

    v23 = sub_10079ACE4();
    sub_100008B98(v23, qword_100AE6188);
    v42 = sub_10079ACC4();
    v24 = sub_1007A29B4();
    if (os_log_type_enabled(v42, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v42, v24, "Ignoring nil location", v25, 2u);
    }

LABEL_18:
    v33 = v42;

    return;
  }

  v14 = v11;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = a1;
    v18 = [v16 cfiString];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1007A2254();
      v22 = v21;

      type metadata accessor for CurrentLocationController(0);
      sub_1004AEEB0(&qword_100AE63A8, type metadata accessor for CurrentLocationController, &unk_100841AB8);
      v44._countAndFlagsBits = v20;
      v44._object = v22;
      sub_1007A09D4(v44);

LABEL_7:

      return;
    }

LABEL_31:
    __break(1u);
    return;
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v42 = a1;
    v28 = [v27 pathWithAnchor];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1007A2254();
      v32 = v31;

      swift_getObjectType();
      if ((sub_10079F9E4() & 1) == 0)
      {

        v1[23] = v30;
        v1[24] = v32;
        goto LABEL_7;
      }

      sub_10070B9CC(v30, v32);
    }

    goto LABEL_18;
  }

  v42 = v1[15];
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  v35 = a1;
  v41[1] = v1;
  if (v34)
  {
    v36 = [v34 pageOffset];
    v37 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
    if ((v37 < 0 || v36 != v37) && ([v34 pageOffset] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  swift_getObjectType();
  [v35 ordinal];
  v38 = sub_1001F1160(&unk_100AF1150, &qword_10082A090);
  (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
  v39 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
  (*(*(v39 - 8) + 56))(v5, 1, 1, v39);
  sub_1007A1BD4();
  v40 = sub_1007A0A24();
  (*(v10 + 8))(v13, v14);
  if (v40 != _s5Books17REActionMenuStateC9pageCountSivpfi_0())
  {
    sub_10070B5B4(v40);
  }
}

uint64_t sub_1004AF4BC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = [objc_opt_self() currentTraitCollection];
  [v5 displayCornerRadius];

  return sub_10079DC04();
}

uint64_t sub_1004AF5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_10079BC44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = *v2;
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v11;
  sub_10079B9A4(v10);

  v12 = enum case for ColorScheme.light(_:);
  v33 = *(v5 + 104);
  v33(v7, enum case for ColorScheme.light(_:), v4);
  v13 = sub_10079BC34();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  if (v13)
  {
    v32 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v10);

    v33(v7, v12, v4);
    sub_10079BC34();
    v14(v7, v4);
    v14(v10, v4);
    sub_10079DE54();
    a1 = v32;
  }

  else
  {
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v15 = v2[4];
  v16 = sub_1001F1160(&qword_100AE64B0, &qword_10082A238);
  v17 = v35;
  v18 = (v35 + *(v16 + 36));
  v19 = *(sub_10079C3D4() + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = sub_10079C9E4();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  *v18 = v15;
  *(v18 + 1) = v15;
  v22 = sub_10079DE24();
  v23 = v2[5];
  v24 = v2[2];
  v25 = &v18[*(sub_1001F1160(&qword_100AE64B8, &qword_10082A240) + 36)];
  *v25 = v22;
  v25[1] = v23;
  v25[2] = v24;
  v25[3] = 0;
  v26 = sub_10079E474();
  v28 = v27;

  v29 = &v18[*(sub_1001F1160(&qword_100AE64C0, &qword_10082A248) + 36)];
  *v29 = v26;
  v29[1] = v28;
  v30 = sub_1001F1160(&qword_100AE64C8, &unk_10082A250);
  return (*(*(v30 - 8) + 16))(v17, a1, v30);
}

unint64_t sub_1004AF97C()
{
  result = qword_100AE64D0;
  if (!qword_100AE64D0)
  {
    sub_1001F1234(&qword_100AE64B0, &qword_10082A238);
    sub_100005920(&qword_100AE64D8, &qword_100AE64C8, &unk_10082A250, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100005920(&qword_100AE64E0, &qword_100AE64C0, &qword_10082A248, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE64D0);
  }

  return result;
}

uint64_t static ActionMenuState.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!(a1 >> 62))
  {
    if (!(a2 >> 62))
    {
      return _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(a1, a2);
    }

    return 0;
  }

  if (a1 >> 62 == 1)
  {
    if (a2 >> 62 == 1)
    {
      a1 &= 0x3FFFFFFFFFFFFFFFuLL;
      a2 &= 0x3FFFFFFFFFFFFFFFuLL;
      return _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(a1, a2);
    }

    return 0;
  }

  v3 = __ROR8__(a1 ^ 0x8000000000000000, 3);
  if (v3 <= 1)
  {
    if (!v3)
    {
      return a2 == 0x8000000000000000;
    }

    if (a2 == 0x8000000000000008)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      return a2 == 0x8000000000000010;
    }

    if (v3 == 3)
    {
      return a2 == 0x8000000000000018;
    }

    if (a2 == 0x8000000000000020)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t ActionMenuState.description.getter(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    sub_1007A3744(34);

    v6 = 0xD000000000000020;
    goto LABEL_5;
  }

  if (a1 >> 62 == 1)
  {
    sub_1007A3744(19);

    v6 = 0xD000000000000011;
LABEL_5:
    v7._countAndFlagsBits = ChapterScrubbingState.description.getter();
    sub_1007A23D4(v7);

    return v6;
  }

  v2 = __ROR8__(a1 ^ 0x8000000000000000, 3);
  v3 = 0x6465736F6C63;
  v4 = 0x676E697070696C66;
  v5 = 0x6E69626275726373;
  if (v2 != 3)
  {
    v5 = 0x43664F656C626174;
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (v2)
  {
    v3 = 1852141679;
  }

  if (v2 <= 1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

BOOL ActionMenuState.isAnyScrubbing.getter(unint64_t a1)
{
  v1 = a1 >> 62;
  v2 = (a1 & 0xBFFFFFFFFFFFFFF7) == 0x8000000000000010;
  if (a1 >> 62 != 2)
  {
    v2 = 0;
  }

  if (v1 == 1)
  {
    v2 = 1;
  }

  return !v1 || v2;
}

uint64_t sub_1004AFD38(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 62))
  {
    if (!(v3 >> 62))
    {
      return _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(v2, v3);
    }

    return 0;
  }

  if (v2 >> 62 == 1)
  {
    if (v3 >> 62 == 1)
    {
      v2 &= 0x3FFFFFFFFFFFFFFFuLL;
      v3 &= 0x3FFFFFFFFFFFFFFFuLL;
      return _s5Books21ChapterScrubbingStateC2eeoiySbAC_ACtFZ_0(v2, v3);
    }

    return 0;
  }

  v5 = __ROR8__(v2 ^ 0x8000000000000000, 3);
  if (v5 <= 1)
  {
    if (!v5)
    {
      return v3 == 0x8000000000000000;
    }

    if (v3 == 0x8000000000000008)
    {
      return 1;
    }
  }

  else
  {
    if (v5 == 2)
    {
      return v3 == 0x8000000000000010;
    }

    if (v5 == 3)
    {
      return v3 == 0x8000000000000018;
    }

    if (v3 == 0x8000000000000020)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1004AFE0C(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1004AFE28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1004AFE84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1004AFEE4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1004AFF44(uint64_t a1)
{
  v2 = sub_10079BC44();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_10079C534();
}

void *sub_1004B000C(uint64_t a1)
{
  v2 = v1;
  v18 = sub_1001F1160(&qword_100AE65B0, &qword_10082A4C8);
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v18 - v5;
  v7 = sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for ThemeOptionsContainerViewModel(0);
  v13 = swift_allocObject();
  v14 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_1004B1400(v12, v9);
  sub_10079B964();
  sub_100007840(v12, &qword_100AE65A8, &qword_10082A450);
  v1[5] = a1;
  v1[6] = 0;
  v1[4] = v13;
  swift_beginAccess();

  sub_1001F1160(&qword_100AE65B8, &unk_10082A4D0);
  sub_10079B974();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_1004B1A2C();
  v15 = v18;
  v16 = sub_10079BB04();

  (*(v4 + 8))(v6, v15);
  v2[6] = v16;

  return v2;
}

double sub_1004B02D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1004B0330(a1);
  }

  return result;
}

double sub_1004B0330(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v7);

    v15 = *(v9 + 48);
    if (v15(v7, 1, v8) == 1)
    {
      swift_unknownObjectRelease();
      sub_100007840(v7, &qword_100AE65A8, &qword_10082A450);
      return result;
    }

    sub_1004B1A90(v7, v11);
    sub_1001F1160(&qword_100AF26C0, &qword_1008333B0);
    v16 = sub_1007A0854();
    sub_1004B1400(a1, v4);
    if (v15(v4, 1, v8) == 1)
    {
      sub_100007840(v4, &qword_100AE65A8, &qword_10082A450);
    }

    else
    {
      v17 = sub_1007A0854();
      sub_1004B1CE0(v4, type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions);
      if (v17)
      {
        v18 = v16 == v17;
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
LABEL_12:
        sub_1004B1CE0(v11, type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions);
        swift_unknownObjectRelease();
        return result;
      }
    }

    if (sub_1007A0874())
    {
      sub_1004B1AF4(v14);
      swift_unknownObjectRelease();
      sub_1004B1CE0(v11, type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions);
      return result;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1004B0634()
{
  v0[2] = sub_1007A26F4();
  v0[3] = sub_1007A26E4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1004B06E4;

  return sub_1004B0820(0);
}

uint64_t sub_1004B06E4()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_1002AE98C, v1, v0);
}

uint64_t sub_1004B0820(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  v3 = sub_1007A3864();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  sub_1007A26F4();
  *(v2 + 80) = sub_1007A26E4();
  v5 = sub_1007A2694();
  *(v2 + 88) = v5;
  *(v2 + 96) = v4;

  return _swift_task_switch(sub_1004B0974, v5, v4);
}

uint64_t sub_1004B0974()
{
  v1 = *(v0 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v1);

  v2 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 72);

    sub_100007840(v4, &qword_100AE65A8, &qword_10082A450);
LABEL_8:

    v11 = *(v0 + 8);

    return v11();
  }

  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 112);
  sub_100007840(*(v0 + 72), &qword_100AE65A8, &qword_10082A450);
  (*(v3 + 56))(v5, 1, 1, v2);
  sub_1004B1400(v5, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B1400(v6, v7);

  sub_10079B9B4();
  sub_100007840(v6, &qword_100AE65A8, &qword_10082A450);
  sub_100007840(v5, &qword_100AE65A8, &qword_10082A450);
  if (v8 != 1)
  {

    goto LABEL_8;
  }

  sub_1007A3B54();
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_1004B0C6C;

  return sub_1004B1524(200000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1004B0C6C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_1004B1D40;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_1004B0E00;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1004B0E00()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_1004B0E98()
{
  v0 = sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  __chkstk_darwin(v0 - 8);
  v2 = (&v6 - v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v2);

  v3 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_100007840(v2, &qword_100AE65A8, &qword_10082A450);
  return v4;
}

uint64_t sub_1004B0FC0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v15[3] = a2;
  v15[4] = &off_100A1F160;
  v15[0] = v6;
  type metadata accessor for ChromeStyle(0);
  sub_1004B19DC(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);

  *a3 = sub_10079C484();
  a3[1] = v7;
  v8 = type metadata accessor for ThemeOptionsContainerViewModifier(0);
  v9 = v8[5];
  *(a3 + v9) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  swift_storeEnumTagMultiPayload();
  *(a3 + v8[6]) = a1;
  sub_100009864(v15, a3 + v8[7]);
  v10 = (a3 + v8[8]);
  type metadata accessor for ThemeOptionsContainerViewModel(0);
  sub_1004B19DC(&qword_100AE65A0, type metadata accessor for ThemeOptionsContainerViewModel, &unk_10083A474);
  v11 = sub_10079C024();
  v13 = v12;
  result = sub_1000074E0(v15);
  *v10 = v11;
  v10[1] = v13;
  return result;
}

double sub_1004B1140()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_1007A2744();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1007A26F4();

  v6 = sub_1007A26E4();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_1003457A0(0, 0, v4, &unk_10082A4B0, v7);

  return result;
}

double sub_1004B1264@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a2);

  return result;
}

uint64_t sub_1004B12E0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_1004B1400(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B1400(v8, v5);

  sub_10079B9B4();
  return sub_100007840(v8, &qword_100AE65A8, &qword_10082A450);
}

uint64_t sub_1004B1400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE65A8, &qword_10082A450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B1470()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_1004B0634();
}

uint64_t sub_1004B1524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1007A3854();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1004B1624, 0, 0);
}

uint64_t sub_1004B1624()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1007A3864();
  v5 = sub_1004B19DC(&qword_100AD76C0, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_1007A3B34();
  sub_1004B19DC(&qword_100AD76C8, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_1007A3874();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1004B17B4;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1004B17B4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_1004B1970, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1004B1970()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B19DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004B1A2C()
{
  result = qword_100AE65C0;
  if (!qword_100AE65C0)
  {
    sub_1001F1234(&qword_100AE65B0, &qword_10082A4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE65C0);
  }

  return result;
}

uint64_t sub_1004B1A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1004B1AF4(uint64_t a1)
{
  v1 = sub_1001F1160(&qword_100ADB1C0, &qword_10082A4E0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v6 - v2);
  if (!swift_weakLoadStrong())
  {
    v5 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v3);

  v4 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
LABEL_6:
    sub_100007840(v3, &qword_100ADB1C0, &qword_10082A4E0);
    return;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1007A0CF4();
  }

  else
  {
    sub_1004B1CE0(v3, type metadata accessor for OverlayViewModel.Overlay);
  }
}

uint64_t sub_1004B1CE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ExplicitDeclineActionItem.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExplicitDeclineActionItem(0) + 36);
  v4 = sub_100797144();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ExplicitDeclineActionItem(uint64_t a1)
{
  result = qword_100AE6668;
  if (!qword_100AE6668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ExplicitDeclineActionItem.init(data:context:tracker:figaroProvider:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v20);
  sub_100009864(a2, v19);
  sub_100009864(a4, v18);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    sub_1004B2000();
    sub_10079AE34();
    sub_10079AE04();
    v16 = sub_100797524();
    v17 = &protocol witness table for MenuLikeStateController;
    sub_1002256EC(&v15);
    sub_100797514();
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v11 = type metadata accessor for ExplicitDeclineActionItem(0);
    v12 = *(v11 + 36);
    v13 = enum case for ContextActionType.explicitDecline(_:);
    v14 = sub_100797144();
    (*(*(v14 - 8) + 104))(a5 + v12, v13, v14);
    *(a5 + *(v11 + 40)) = 2;
    sub_1000077C0(v20, a5);
    sub_1000077C0(v19, a5 + 40);
    *(a5 + 80) = a3;
    sub_1000077C0(v18, a5 + 88);
    return sub_1000077C0(&v15, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004B2000()
{
  result = qword_100AE65C8;
  if (!qword_100AE65C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE65C8);
  }

  return result;
}

uint64_t ExplicitDeclineActionItem.isSupported.getter()
{
  v1 = v0;
  sub_10000E3E8(v0, v0[3]);
  if ((sub_1007976D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10000E3E8(v0, v0[3]);
  sub_1007977A4();
  if (v10 == 1)
  {
    sub_1001FF70C(v9);
LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  sub_1000077C0(v9, v11);
  sub_10000E3E8(v11, v12);
  sub_1007976B4();
  if (sub_1007972D4())
  {
    goto LABEL_11;
  }

  sub_10000E3E8(v11, v12);
  sub_1007976B4();
  if (sub_1007972D4())
  {
    goto LABEL_11;
  }

  sub_10000E3E8(v11, v12);
  v2 = sub_1007976A4();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_11:
    sub_1000074E0(v11);
    goto LABEL_12;
  }

  sub_10000E3E8(v1, v1[3]);
  v7 = sub_100797794();
  sub_1000074E0(v11);
  return v7 & 1;
}

uint64_t ExplicitDeclineActionItem.handle()()
{
  v1[13] = v0;
  sub_1007A26F4();
  v1[14] = sub_1007A26E4();
  v3 = sub_1007A2694();
  v1[15] = v3;
  v1[16] = v2;

  return _swift_task_switch(sub_1004B2260, v3, v2);
}

uint64_t sub_1004B2260()
{
  v1 = *(v0 + 104);
  sub_10000E3E8(v1, v1[3]);
  if ((sub_1007976D4() & 1) == 0)
  {

    goto LABEL_5;
  }

  sub_10000E3E8(*(v0 + 104), v1[3]);
  sub_1007977A4();
  if (*(v0 + 56) == 1)
  {

    sub_1001FF70C(v0 + 16);
LABEL_5:
    v2 = *(v0 + 8);

    return v2();
  }

  v4 = *(v0 + 104);
  sub_1000077C0((v0 + 16), v0 + 64);
  sub_10000E3E8(v4, v1[3]);
  if (sub_100797764())
  {
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = sub_1004B2454;

    return sub_1004B26FC(v0 + 64);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = sub_1004B25DC;

    return sub_1004B3B7C(v0 + 64);
  }
}

uint64_t sub_1004B2454()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1004B2574, v3, v2);
}

uint64_t sub_1004B2574()
{

  sub_1000074E0((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B25DC()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1004B67F0, v3, v2);
}

uint64_t sub_1004B26FC(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_10079ACE4();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AE66C0, &qword_10082A648);
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v6 = sub_1007A1E24();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  sub_1001F1160(&qword_100AE65D0, &qword_10082A548);
  v2[35] = swift_task_alloc();
  sub_1007A1E14();
  v2[36] = swift_task_alloc();
  v7 = sub_1007979B4();
  v2[37] = v7;
  v2[38] = *(v7 - 8);
  v2[39] = swift_task_alloc();
  v8 = sub_1001F1160(&qword_100AE66C8, &unk_10082A650);
  v2[40] = v8;
  v2[41] = *(v8 - 8);
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_1004B2A10, 0, 0);
}

uint64_t sub_1004B2A10()
{
  sub_10000E3E8((v0[22] + 40), *(v0[22] + 64));
  v0[43] = sub_100796EA4();
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_1004B2AE4;
  v2 = v0[42];

  return BaseObjectGraph.inject<A>(_:)(v2);
}

uint64_t sub_1004B2AE4()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1004B3478;
  }

  else
  {
    v2 = sub_1004B2BF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B2BF8()
{
  v1 = v0[38];
  v16 = v0[39];
  v17 = v0[37];
  v2 = v0[35];
  v3 = v0[30];
  v18 = v0[29];
  v19 = v0[31];
  v4 = v0[21];
  sub_1007A1E04();
  sub_1001F1160(&unk_100ADE588, &qword_10081E368);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  sub_10000E3E8(v4, v4[3]);
  v6 = sub_100797674();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_1001EDD94(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &qword_100AD35D0, &unk_10081E370);
  v8 = sub_100798464();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_1007979A4();
  v0[15] = v17;
  v0[16] = sub_1004B67A4(&qword_100AE66D0, &type metadata accessor for JSAction, &protocol conformance descriptor for JSAction);
  v9 = sub_1002256EC(v0 + 12);
  (*(v1 + 16))(v9, v16, v17);
  (*(v3 + 104))(v19, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v18);
  v10 = swift_task_alloc();
  v0[46] = v10;
  *v10 = v0;
  v10[1] = sub_1004B2E7C;
  v11 = v0[43];
  v12 = v0[40];
  v13 = v0[34];
  v14 = v0[31];

  return ActionDispatcher.perform(_:withMetrics:asPartOf:)(v13, v0 + 12, v14, v11, v12);
}

uint64_t sub_1004B2E7C()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  *(*v1 + 376) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1004B36A4;
  }

  else
  {
    (*(v2[33] + 8))(v2[34], v2[32]);
    sub_1000074E0(v2 + 12);
    v6 = sub_1004B3014;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004B3014()
{
  sub_1004B4F24();
  sub_1004B55D4();
  if (qword_100AD1380 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = sub_100008B98(v3, qword_100AD9040);
  (*(v2 + 16))(v1, v4, v3);
  sub_100798EE4();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 400))
  {

    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = *(v0 + 320);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    (*(v6 + 8))(v5, v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 176);
    v11 = v10[19];
    v12 = v10[20];
    sub_10000E3E8(v10 + 16, v11);
    v13 = v10[10];
    v14 = swift_task_alloc();
    *(v0 + 384) = v14;
    *v14 = v0;
    v14[1] = sub_1004B3260;
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);

    return dispatch thunk of LikeStateController.authAndSubmitExplicitDecline(context:data:assetInfo:tracker:)(v10 + 5, v15, v16, v13, v11, v12);
  }
}

uint64_t sub_1004B3260()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1004B3914;
  }

  else
  {
    v2 = sub_1004B3374;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B3374()
{

  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  (*(v0[38] + 8))(v0[39], v0[37]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004B3478()
{
  v17 = v0;

  sub_10079AC34();
  swift_errorRetain();
  v1 = sub_10079ACC4();
  v2 = sub_1007A29B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[24];
    v15 = v0[25];
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1007A3B84();
    v9 = sub_1000070F4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "error while trying to submit explicit decline preference with : %s for ODP content", v5, 0xCu);
    sub_1000074E0(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1004B36A4()
{
  v23 = v0;
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_1000074E0(v0 + 12);
  sub_10079AC34();
  swift_errorRetain();
  v7 = sub_10079ACC4();
  v8 = sub_1007A29B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v21 = v0[25];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_1007A3B84();
    v15 = sub_1000070F4(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "error while trying to submit explicit decline preference with : %s for ODP content", v11, 0xCu);
    sub_1000074E0(v12);

    (*(v9 + 8))(v21, v10);
  }

  else
  {
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004B3914()
{
  v23 = v0;
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_10079AC34();
  swift_errorRetain();
  v7 = sub_10079ACC4();
  v8 = sub_1007A29B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v21 = v0[25];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_1007A3B84();
    v15 = sub_1000070F4(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "error while trying to submit explicit decline preference with : %s for ODP content", v11, 0xCu);
    sub_1000074E0(v12);

    (*(v9 + 8))(v21, v10);
  }

  else
  {
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004B3B7C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_10079ACE4();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v4 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AE66C0, &qword_10082A648);
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v6 = sub_1007A1E24();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  sub_1001F1160(&qword_100AE65D0, &qword_10082A548);
  v2[35] = swift_task_alloc();
  sub_1007A1E14();
  v2[36] = swift_task_alloc();
  v7 = sub_1007979B4();
  v2[37] = v7;
  v2[38] = *(v7 - 8);
  v2[39] = swift_task_alloc();
  v8 = sub_1001F1160(&qword_100AE66C8, &unk_10082A650);
  v2[40] = v8;
  v2[41] = *(v8 - 8);
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_1004B3E90, 0, 0);
}

uint64_t sub_1004B3E90()
{
  sub_10000E3E8((v0[22] + 40), *(v0[22] + 64));
  v0[43] = sub_100796EA4();
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_1004B3F64;
  v2 = v0[42];

  return BaseObjectGraph.inject<A>(_:)(v2);
}

uint64_t sub_1004B3F64()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1004B4820;
  }

  else
  {
    v2 = sub_1004B4078;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B4078()
{
  v1 = v0[38];
  v18 = v0[39];
  v19 = v0[37];
  v2 = v0[35];
  v3 = v0[30];
  v20 = v0[29];
  v21 = v0[31];
  v4 = v0[22];
  sub_1007A1E04();
  sub_1001F1160(&unk_100ADE588, &qword_10081E368);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  strcpy((inited + 32), "cardIdentifier");
  *(inited + 47) = -18;
  sub_10000E3E8((v4 + 40), *(v4 + 64));
  v6 = sub_100796ED4();
  v7 = sub_1007973B4();
  v9 = v8;

  *(inited + 72) = sub_1001F1160(&qword_100AD4F30, &unk_100816940);
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  sub_1001EDD94(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &qword_100AD35D0, &unk_10081E370);
  v10 = sub_100798464();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  sub_1007979A4();
  v0[15] = v19;
  v0[16] = sub_1004B67A4(&qword_100AE66D0, &type metadata accessor for JSAction, &protocol conformance descriptor for JSAction);
  v11 = sub_1002256EC(v0 + 12);
  (*(v1 + 16))(v11, v18, v19);
  (*(v3 + 104))(v21, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v20);
  v12 = swift_task_alloc();
  v0[46] = v12;
  *v12 = v0;
  v12[1] = sub_1004B4334;
  v13 = v0[43];
  v14 = v0[40];
  v15 = v0[34];
  v16 = v0[31];

  return ActionDispatcher.perform(_:withMetrics:asPartOf:)(v15, v0 + 12, v16, v13, v14);
}

uint64_t sub_1004B4334()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  *(*v1 + 376) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1004B4A4C;
  }

  else
  {
    (*(v2[33] + 8))(v2[34], v2[32]);
    sub_1000074E0(v2 + 12);
    v6 = sub_1004B44CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004B44CC()
{
  if (qword_100AD1380 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = sub_100008B98(v3, qword_100AD9040);
  (*(v2 + 16))(v1, v4, v3);
  sub_100798EE4();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 400))
  {

    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = *(v0 + 320);
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));
    (*(v6 + 8))(v5, v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 176);
    v11 = v10[19];
    v12 = v10[20];
    sub_10000E3E8(v10 + 16, v11);
    v13 = v10[10];
    v14 = swift_task_alloc();
    *(v0 + 384) = v14;
    *v14 = v0;
    v14[1] = sub_1004B470C;
    v16 = *(v0 + 168);
    v15 = *(v0 + 176);

    return dispatch thunk of LikeStateController.authAndSubmitExplicitDecline(context:data:assetInfo:tracker:)(v10 + 5, v15, v16, v13, v11, v12);
  }
}

uint64_t sub_1004B470C()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1004B4CBC;
  }

  else
  {
    v2 = sub_1004B67EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B4820()
{
  v17 = v0;

  sub_10079AC34();
  swift_errorRetain();
  v1 = sub_10079ACC4();
  v2 = sub_1007A29B4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[24];
    v15 = v0[25];
    v4 = v0[23];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1007A3B84();
    v9 = sub_1000070F4(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "error while trying to submit explicit decline preference with : %s for default content", v5, 0xCu);
    sub_1000074E0(v6);

    (*(v3 + 8))(v15, v4);
  }

  else
  {
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];

    (*(v11 + 8))(v10, v12);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1004B4A4C()
{
  v23 = v0;
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_1000074E0(v0 + 12);
  sub_10079AC34();
  swift_errorRetain();
  v7 = sub_10079ACC4();
  v8 = sub_1007A29B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v21 = v0[25];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_1007A3B84();
    v15 = sub_1000070F4(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "error while trying to submit explicit decline preference with : %s for default content", v11, 0xCu);
    sub_1000074E0(v12);

    (*(v9 + 8))(v21, v10);
  }

  else
  {
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004B4CBC()
{
  v23 = v0;
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_10079AC34();
  swift_errorRetain();
  v7 = sub_10079ACC4();
  v8 = sub_1007A29B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v21 = v0[25];
    v10 = v0[23];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_1007A3B84();
    v15 = sub_1000070F4(v13, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "error while trying to submit explicit decline preference with : %s for default content", v11, 0xCu);
    sub_1000074E0(v12);

    (*(v9 + 8))(v21, v10);
  }

  else
  {
    v17 = v0[24];
    v16 = v0[25];
    v18 = v0[23];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1004B4F24()
{
  v1 = sub_10079AD54();
  v34 = *(v1 - 8);
  v35 = v1;
  __chkstk_darwin(v1);
  v33 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10079AD84();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10079AD44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10079AD64();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10079ADB4();
  v31 = *(v13 - 8);
  v32 = v13;
  __chkstk_darwin(v13);
  v27 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E3E8(v0, v0[3]);
  result = sub_1007976D4();
  if (result)
  {
    sub_10000E3E8(v0, v0[3]);
    sub_1007977A4();
    if (v39 == 1)
    {
      return sub_1001FF70C(&v36);
    }

    else
    {
      sub_1000077C0(&v36, v40);
      (*(v10 + 104))(v12, enum case for FigaroClickEvent.ActionContext.actionSheet(_:), v9);
      v16 = type metadata accessor for ExplicitDeclineActionItem(0);
      *v8 = sub_100797134();
      v8[1] = v17;
      (*(v6 + 104))(v8, enum case for FigaroActionType.custom(_:), v5);
      sub_1001F1160(&qword_100ADAF48, &unk_10082A660);
      sub_10079ADA4();
      *(swift_allocObject() + 16) = xmmword_10080B690;
      sub_10000E3E8(v40, v41);
      v26[4] = sub_100797674();
      v26[3] = v18;
      v19 = sub_1004B67A4(&qword_100AD1E90, type metadata accessor for ExplicitDeclineActionItem, &protocol conformance descriptor for ExplicitDeclineActionItem);
      v26[2] = sub_100797094();
      v26[1] = v20;
      sub_10000E3E8(v0 + 11, v0[14]);
      v37 = v16;
      v38 = v19;
      v21 = sub_1002256EC(&v36);
      sub_1004B6740(v0, v21);
      sub_100796F64();
      sub_1000074E0(&v36);
      (*(v29 + 104))(v28, enum case for FigaroClickEvent.Location.Type.button(_:), v30);
      sub_10079AD94();
      sub_10000E3E8(v40, v41);
      sub_100797674();
      (*(v34 + 104))(v33, enum case for FigaroClickEvent.TargetType.dontShow(_:), v35);
      sub_100019158(_swiftEmptyArrayStorage);
      v22 = v27;
      sub_10079AD74();
      sub_1004B67A4(&qword_100ADAF50, &type metadata accessor for FigaroClickEvent, &protocol conformance descriptor for FigaroClickEvent);
      v23 = v32;
      sub_10079AE74();
      (*(v31 + 8))(v22, v23);
      v24 = objc_opt_self();
      type metadata accessor for FigaroKey(0);
      sub_1004B67A4(&qword_100AD36A0, type metadata accessor for FigaroKey, &unk_10080CADC);
      isa = sub_1007A2024().super.isa;

      [v24 recordNativeEvent:isa];

      return sub_1000074E0(v40);
    }
  }

  return result;
}

uint64_t sub_1004B55D4()
{
  v1 = sub_10079ACE4();
  v67 = *(v1 - 8);
  v68 = v1;
  __chkstk_darwin(v1);
  v3 = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v54 - v5;
  __chkstk_darwin(v7);
  v9 = v54 - v8;
  __chkstk_darwin(v10);
  v12 = v54 - v11;
  v58 = sub_100798034();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001F1160(&qword_100AE2578, &unk_100824360);
  __chkstk_darwin(v14 - 8);
  v55 = v54 - v15;
  v16 = sub_100797D94();
  v62 = *(v16 - 8);
  v63 = v16;
  __chkstk_darwin(v16);
  v60 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100798234();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100797C94();
  __chkstk_darwin(v20 - 8);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1007980E4();
  v65 = *(v23 - 8);
  v66 = v23;
  __chkstk_darwin(v23);
  v64 = v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E3E8(v0, v0[3]);
  if (sub_1007976D4())
  {
    sub_10000E3E8(v0, v0[3]);
    sub_1007977A4();
    if (v70)
    {
      sub_1001FF70C(v69);
      sub_10079AC34();
      v25 = sub_10079ACC4();
      v26 = sub_1007A29D4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "not reporting remove suggestion because target is not a single item", v27, 2u);
      }

      return (*(v67 + 8))(v6, v68);
    }

    sub_1000077C0(v69, v71);
    sub_10000E3E8(v0, v0[3]);
    sub_100797744();
    v33 = v65;
    v32 = v66;
    if ((*(v65 + 48))(v22, 1, v66) == 1)
    {
      sub_1004B66E4(v22, v34);
      sub_10079AC34();
      v35 = sub_10079ACC4();
      v36 = sub_1007A29D4();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "not reporting remove suggestion because target is not an ODP item", v37, 2u);
      }

      (*(v67 + 8))(v9, v68);
      return sub_1000074E0(v71);
    }

    (*(v33 + 32))(v64, v22, v32);
    v38 = v0[10];
    if (!v38)
    {
      sub_10079AC34();
      v51 = sub_10079ACC4();
      v52 = sub_1007A29B4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "not reporting remove suggestion because no tracker was found", v53, 2u);
      }

      (*(v67 + 8))(v12, v68);
      (*(v33 + 8))(v64, v32);
      return sub_1000074E0(v71);
    }

    sub_100798004();
    v68 = v38;
    v67 = sub_100797FF4();
    sub_10000E3E8(v71, v72);
    v54[1] = sub_100797674();
    (*(v59 + 104))(v19, enum case for ContentAcquisitionType.unknown(_:), v61);
    sub_10000E3E8(v71, v72);
    v39 = sub_1007976B4();
    (*(v62 + 104))(v60, **(&off_100A1F208 + v39), v63);
    sub_10000E3E8(v71, v72);
    result = sub_100797634();
    v41 = v40;
    if ((v40 & 1) == 0)
    {
      if (result < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (result <= 0x7FFFFFFF)
      {
        goto LABEL_18;
      }

      __break(1u);
      return result;
    }

LABEL_18:
    v42 = sub_100797FF4();
    sub_10000E3E8(v71, v72);
    sub_100797674();
    v43 = v55;
    sub_100797FB4();

    v44 = v57;
    v45 = v56;
    v46 = v58;
    (*(v57 + 104))(v56, enum case for ProductionType.unknown(_:), v58);
    LOBYTE(v69[0]) = v41 & 1;
    v47 = v67;
    v48 = v68;
    v49 = v64;
    v50 = v60;
    sub_100797F04();

    (*(v44 + 8))(v45, v46);
    sub_100007840(v43, &qword_100AE2578, &unk_100824360);
    (*(v62 + 8))(v50, v63);
    (*(v59 + 8))(v19, v61);
    (*(v65 + 8))(v49, v66);
    return sub_1000074E0(v71);
  }

  sub_10079AC34();
  v29 = sub_10079ACC4();
  v30 = sub_1007A29D4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "not reporting remove suggestion because menu is not supported", v31, 2u);
  }

  return (*(v67 + 8))(v3, v68);
}

void ExplicitDeclineActionItem.swiftuiPostAction(shelfID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v40 = a1;
  v7 = sub_1001F1160(&qword_100AE65D0, &qword_10082A548);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_1007A1E14();
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100AE65D8, &qword_10082A550);
  v41 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v31 - v17);
  v19 = sub_1001F1160(&qword_100AE65E0, &unk_10082A558);
  __chkstk_darwin(v19);
  v22 = &v31 - v21;
  if (a2)
  {
    v36 = v20;
    v37 = v12;
    v38 = v13;
    v39 = v9;
    sub_10000E3E8(v4, v4[3]);

    if (sub_1007976D4())
    {
      sub_10000E3E8(v4, v4[3]);
      sub_1007977A4();
      if (v43 != 1)
      {
        sub_1000077C0(v42, v44);
        sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
        v23 = swift_allocObject();
        v31 = xmmword_10080B690;
        *(v23 + 16) = xmmword_10080B690;
        sub_10000E3E8(v44, v44[3]);
        *(v23 + 32) = sub_100797674();
        *(v23 + 40) = v24;
        v35 = sub_100797984();
        v34 = sub_100797994();
        v33 = sub_1004B67A4(&qword_100AE65E8, &type metadata accessor for Page, &protocol conformance descriptor for Page);
        v32 = sub_1004B67A4(&qword_100AE65F0, &type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
        sub_10079B764();
        sub_1001F1160(&qword_100AE65F8, &qword_10082A568);
        v25 = v36;
        v26 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = v31;
        (*(v25 + 16))(v27 + v26, v22, v19);
        *v18 = v27;
        v28 = v41;
        v29 = v38;
        (*(v41 + 104))(v18, enum case for PageUpdateInstruction.removeItems<A, B>(_:), v38);
        sub_1007A1E04();
        (*(v28 + 16))(v15, v18, v29);
        v30 = sub_100798464();
        (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
        *(a3 + 24) = sub_1001F1160(&qword_100AE6600, &unk_10082A570);
        *(a3 + 32) = sub_1004B6478();
        sub_1002256EC(a3);
        sub_10079B754();
        (*(v28 + 8))(v18, v29);
        (*(v25 + 8))(v22, v19);
        sub_1000074E0(v44);
        return;
      }

      sub_1001FF70C(v42);
    }

    else
    {
    }
  }

  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
}

unint64_t sub_1004B6478()
{
  result = qword_100AE6608;
  if (!qword_100AE6608)
  {
    sub_1001F1234(&qword_100AE6600, &unk_10082A570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6608);
  }

  return result;
}

uint64_t sub_1004B64F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return ExplicitDeclineActionItem.handle()();
}

void sub_1004B65A8(uint64_t a1)
{
  sub_1001FEBC8(319, &unk_100AE9C00, &protocol descriptor for ContextActionDataProtocol);
  if (v1 <= 0x3F)
  {
    sub_1001FEBC8(319, &qword_100AD4AF0, &protocol descriptor for ContextMenuPresentationContextProtocol);
    if (v2 <= 0x3F)
    {
      sub_1001FEB70(319);
      if (v3 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10, &protocol descriptor for FigaroProviding);
        if (v4 <= 0x3F)
        {
          sub_1001FEBC8(319, &unk_100AE6678, &protocol descriptor for LikeStateController);
          if (v5 <= 0x3F)
          {
            sub_100797144();
            if (v6 <= 0x3F)
            {
              type metadata accessor for Attributes(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1004B66E4(uint64_t a1, double a2)
{
  v3 = sub_100797C94();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004B6740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExplicitDeclineActionItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B67A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1004B67F4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v6);

  v2 = v7;
  result = *v6;
  v4 = v6[1];
  v5 = v6[2];
  *a1 = v6[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v2;
  return result;
}

uint64_t sub_1004B6880()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

uint64_t sub_1004B68F4()
{
  v0 = swift_allocObject();
  *v9 = 0;
  v7 = 0u;
  v8 = 0u;
  *&v9[8] = xmmword_100816EB0;
  sub_1001F1160(&qword_100AD9AE8, &qword_100816F48);
  sub_10079B964();
  sub_10079B964();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v7);

  v1 = *&v9[16];
  v5 = v7;
  v6 = *v9;
  v4 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v5;
  v8 = v4;
  *v9 = v6;
  *&v9[16] = v1;

  sub_10079B9B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v7);

  v2 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v7) = v2;

  sub_10079B9B4();
  return v0;
}

uint64_t sub_1004B6AF8()
{
  v1 = OBJC_IVAR____TtC5Books16InfoBarViewModel__message;
  v2 = sub_1001F1160(&qword_100AF2890, &unk_10083E130);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books16InfoBarViewModel__isTimedMessage;
  v4 = sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InfoBarViewModel(uint64_t a1)
{
  result = qword_100AE6710;
  if (!qword_100AE6710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004B6C40(uint64_t a1)
{
  sub_1004B6D0C(319);
  if (v1 <= 0x3F)
  {
    sub_1004B6D70();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004B6D0C(uint64_t a1)
{
  if (!qword_100AE6720)
  {
    sub_1001F1234(&qword_100AD9AE8, &qword_100816F48);
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE6720);
    }
  }
}

void sub_1004B6D70()
{
  if (!qword_100AEB4D0)
  {
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEB4D0);
    }
  }
}

uint64_t sub_1004B6DC0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1004B6DD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004B6E20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004B6E84(uint64_t a1)
{
  result = sub_100258BC0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004B6EC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100ADB860, &qword_100835800);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-v6];
  sub_1004B71D4(v2, v26);
  v8 = swift_allocObject();
  sub_1004B720C(v26, v8 + 16);
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  sub_100206ECC();
  sub_10079E084();
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v12 = *(v2 + 8);
  v11 = *(v2 + 16);
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  v15 = *v2;
  type metadata accessor for ChromeStyle(0);
  sub_1002B3600();

  *&v21 = sub_10079C484();
  *(&v21 + 1) = v16;
  *&v22 = v9;
  *(&v22 + 1) = v10;
  *&v23 = v12;
  *(&v23 + 1) = v11;
  *&v24 = v13;
  *(&v24 + 1) = v14;
  v25 = v15;
  sub_10027444C();
  sub_1004B724C();
  sub_10079D6B4();
  v26[2] = v23;
  v26[3] = v24;
  v27 = v25;
  v26[0] = v21;
  v26[1] = v22;
  sub_1004B72A0(v26);
  (*(v5 + 8))(v7, v4);
  v20[7] = 0;
  sub_10079DFE4();
  LOBYTE(v7) = v21;
  v17 = *(&v21 + 1);
  result = sub_1001F1160(&qword_100AE67B0, &qword_10082A828);
  v19 = a1 + *(result + 36);
  *v19 = v9;
  *(v19 + 8) = v7;
  *(v19 + 16) = v17;
  return result;
}

uint64_t sub_1004B7144(uint64_t result)
{
  v1 = *(result + 72);
  if (v1)
  {
    v2 = *(result + 80);
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = *(v3 + 64);

    v1(Strong, v5);
    swift_unknownObjectRelease();

    return sub_100007020(v1, v2);
  }

  return result;
}

unint64_t sub_1004B724C()
{
  result = qword_100AE67A8;
  if (!qword_100AE67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE67A8);
  }

  return result;
}

unint64_t sub_1004B72F4()
{
  result = qword_100AE67B8;
  if (!qword_100AE67B8)
  {
    sub_1001F1234(&qword_100AE67B0, &qword_10082A828);
    sub_1001F1234(&qword_100ADB860, &qword_100835800);
    sub_10027444C();
    sub_1004B724C();
    swift_getOpaqueTypeConformance2();
    sub_1002746A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE67B8);
  }

  return result;
}

uint64_t sub_1004B73D8(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = sub_10000E3E8((a1 + 32), *(a1 + 56));
  v9 = *v7;
  if (a4)
  {
    sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
    v10 = swift_allocError();
    *v11 = a4;
    v12 = a4;
    v7 = v9;
    v8 = v10;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  v13 = *(v9[8] + 40);
  *v13 = a2;
  *(v13 + 8) = a3;
  v14 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_1004B74B8()
{
  v1[4] = v0;
  v2 = sub_1007A2F14();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004B7578, 0, 0);
}

uint64_t sub_1004B7578()
{
  v1 = sub_1004B7BF8();
  if (v2)
  {
    if (qword_100AD1730 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AE67C0);
    v4 = sub_10079ACC4();
    v5 = sub_1007A29D4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No config provided for fetchFinishedAssetCount", v6, 2u);
    }

    v7 = v0[1];

    return v7(0);
  }

  else
  {
    v9 = v1;
    v10 = v0[6];
    v29 = v0[7];
    v12 = v0[4];
    v11 = v0[5];
    v13 = objc_opt_self();
    v14 = [v13 predicateFor_All_Marked_As_Finished_LibraryAssets_In_Year:v9];
    v0[8] = v14;
    v15 = [v13 predicateForAllStoreLibraryAssets];
    v0[9] = v15;
    v0[2] = sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
    sub_1001F1160(&qword_100AE2370, &qword_10082A980);
    sub_1007A22E4();
    v16 = objc_allocWithZone(NSFetchRequest);
    v17 = sub_1007A2214();

    v18 = [v16 initWithEntityName:v17];
    v0[10] = v18;

    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100811360;
    *(v19 + 32) = v14;
    *(v19 + 40) = v15;
    sub_10000A7C4(0, &unk_100AE6940, NSPredicate_ptr);
    v20 = v14;
    v21 = v15;
    isa = sub_1007A25D4().super.isa;

    v23 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v18 setPredicate:v23];
    v24 = *(v12 + 16);
    v25 = swift_allocObject();
    v0[11] = v25;
    *(v25 + 16) = v24;
    *(v25 + 24) = v18;
    (*(v10 + 104))(v29, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v11);
    v24;
    v26 = v18;
    v27 = swift_task_alloc();
    v0[12] = v27;
    *v27 = v0;
    v27[1] = sub_1004B7964;
    v28 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v28, sub_1004BB0DC, v25, &type metadata for Int);
  }
}

uint64_t sub_1004B7964()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1004B7B78;
  }

  else
  {
    v5 = sub_1004B7AF8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004B7AF8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1004B7B78()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004B7BF8()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD6948, &qword_100825F50);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = type metadata accessor for YearInReview.RemoteConfiguration(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1001F1160(&qword_100AE6928, &unk_10082A9A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  if ((sub_100798F24() & 1) != 0 && (v13 = *(v10 + 16), v35 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride, v36 = v13, v13(v12, v0 + OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride, v9), sub_100798EE4(), v34 = *(v10 + 8), v34(v12, v9), v37))
  {
    if (qword_100AD1730 != -1)
    {
      swift_once();
    }

    v14 = sub_10079ACE4();
    sub_100008B98(v14, qword_100AE67C0);

    v15 = sub_10079ACC4();
    v16 = sub_1007A29D4();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v36;
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      v20 = v35;
      v18(v12, v1 + v35, v9);
      sub_100798EE4();
      v21 = v20;
      v22 = v34;
      v34(v12, v9);
      *(v19 + 4) = v37;

      _os_log_impl(&_mh_execute_header, v15, v16, "Using debug override year: %ld for activeYear", v19, 0xCu);

      v36(v12, v1 + v21, v9);
    }

    else
    {

      v22 = v34;
      v18(v12, v1 + v35, v9);
    }

    sub_100798EE4();
    v22(v12, v9);
    return v37;
  }

  else
  {
    v23 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider_config;
    swift_beginAccess();
    sub_1000077D8(v1 + v23, v4, &qword_100AD6948, &qword_100825F50);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_100007840(v4, &qword_100AD6948, &qword_100825F50);
      if (qword_100AD1730 != -1)
      {
        swift_once();
      }

      v24 = sub_10079ACE4();
      sub_100008B98(v24, qword_100AE67C0);
      v25 = sub_10079ACC4();
      v26 = sub_1007A29D4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "No config provided for activeYear", v27, 2u);
      }

      return 0;
    }

    else
    {
      sub_100443804(v4, v8, type metadata accessor for YearInReview.RemoteConfiguration);
      v28 = *v8;
      if (qword_100AD1730 != -1)
      {
        swift_once();
      }

      v29 = sub_10079ACE4();
      sub_100008B98(v29, qword_100AE67C0);
      v30 = sub_10079ACC4();
      v31 = sub_1007A29D4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v30, v31, "Using config provided year: %ld for activeYear", v32, 0xCu);
      }

      sub_1004438C0(v8, type metadata accessor for YearInReview.RemoteConfiguration);
    }
  }

  return v28;
}

uint64_t sub_1004B81AC@<X0>(uint64_t *a2@<X8>)
{
  sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
  result = sub_1007A2F24();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1004B8214()
{
  sub_100007840(v0 + OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider_config, &qword_100AD6948, &qword_100825F50);
  v1 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider_criteria;
  v2 = sub_100797914();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride;
  v4 = sub_1001F1160(&qword_100AE6928, &unk_10082A9A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for YearInReviewEntryEligibilityProvider(uint64_t a1)
{
  result = qword_100AE6830;
  if (!qword_100AE6830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004B8378(uint64_t a1)
{
  sub_100443524(319);
  if (v1 <= 0x3F)
  {
    sub_100797914();
    if (v2 <= 0x3F)
    {
      sub_1004B848C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1004B848C()
{
  if (!qword_100AE6848)
  {
    v0 = sub_100798F04();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE6848);
    }
  }
}

uint64_t sub_1004B84DC(uint64_t a1)
{
  v2 = v1;
  v68 = a1;
  v3 = sub_100796BB4();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AE39E0, &unk_100834C90);
  __chkstk_darwin(v5 - 8);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v56 - v8;
  v10 = type metadata accessor for YearInReview.RemoteConfiguration.DateRange(0);
  v65 = *(v10 - 8);
  v66 = v10;
  __chkstk_darwin(v10);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = &v56 - v13;
  v14 = sub_1001F1160(&qword_100AD6948, &qword_100825F50);
  __chkstk_darwin(v14 - 8);
  v16 = &v56 - v15;
  v17 = type metadata accessor for YearInReview.RemoteConfiguration(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v67 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1001F1160(&qword_100AE6928, &unk_10082A9A0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v56 - v22;
  if ((sub_100798F24() & 1) == 0 || (v24 = *(v21 + 16), v57 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride, v58 = v24, v24(v23, v1 + OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride, v20), sub_100798EE4(), v25 = *(v21 + 8), v25(v23, v20), !v69))
  {
    v31 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider_config;
    swift_beginAccess();
    sub_1000077D8(v2 + v31, v16, &qword_100AD6948, &qword_100825F50);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_100007840(v16, &qword_100AD6948, &qword_100825F50);
      if (qword_100AD1730 != -1)
      {
        swift_once();
      }

      v32 = sub_10079ACE4();
      sub_100008B98(v32, qword_100AE67C0);
      v33 = sub_10079ACC4();
      v34 = sub_1007A29D4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "No config provided for isActive", v35, 2u);
      }

      goto LABEL_27;
    }

    v36 = v67;
    sub_100443804(v16, v67, type metadata accessor for YearInReview.RemoteConfiguration);
    v37 = (v65 + 48);
    if (v68)
    {
      v38 = v36 + *(v17 + 24);
      v39 = v61;
      sub_1000077D8(v38, v61, &qword_100AE39E0, &unk_100834C90);
      if ((*v37)(v39, 1, v66) == 1)
      {
        sub_100007840(v39, &qword_100AE39E0, &unk_100834C90);
        if (qword_100AD1730 != -1)
        {
          swift_once();
        }

        v40 = sub_10079ACE4();
        sub_100008B98(v40, qword_100AE67C0);
        v41 = sub_10079ACC4();
        v42 = sub_1007A29D4();
        if (!os_log_type_enabled(v41, v42))
        {
          goto LABEL_26;
        }

        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = "No configuration for topPicksCard entry point provided.";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v41, v42, v44, v43, 2u);

LABEL_26:

        sub_1004438C0(v36, type metadata accessor for YearInReview.RemoteConfiguration);
LABEL_27:
        v30 = 0;
        return v30 & 1;
      }

      v46 = v60;
      sub_100443804(v39, v60, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
      v47 = v62;
      sub_100796B74();
      v30 = sub_1005E4064(v47);
      (*(v63 + 8))(v47, v64);
      if (qword_100AD1730 != -1)
      {
        swift_once();
      }

      v48 = sub_10079ACE4();
      sub_100008B98(v48, qword_100AE67C0);
      v49 = sub_10079ACC4();
      v50 = sub_1007A29D4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 67109120;
        *(v51 + 4) = v30 & 1;
        v52 = "topPicksCard isValidRange: %{BOOL}d";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 8u);
      }
    }

    else
    {
      sub_1000077D8(v36 + *(v17 + 20), v9, &qword_100AE39E0, &unk_100834C90);
      if ((*v37)(v9, 1, v66) == 1)
      {
        sub_100007840(v9, &qword_100AE39E0, &unk_100834C90);
        if (qword_100AD1730 != -1)
        {
          swift_once();
        }

        v45 = sub_10079ACE4();
        sub_100008B98(v45, qword_100AE67C0);
        v41 = sub_10079ACC4();
        v42 = sub_1007A29D4();
        if (!os_log_type_enabled(v41, v42))
        {
          goto LABEL_26;
        }

        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = "No configuration for notification entry point provided.";
        goto LABEL_25;
      }

      v46 = v59;
      sub_100443804(v9, v59, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
      v53 = v62;
      sub_100796B74();
      v30 = sub_1005E4064(v53);
      (*(v63 + 8))(v53, v64);
      if (qword_100AD1730 != -1)
      {
        swift_once();
      }

      v54 = sub_10079ACE4();
      sub_100008B98(v54, qword_100AE67C0);
      v49 = sub_10079ACC4();
      v50 = sub_1007A29D4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 67109120;
        *(v51 + 4) = v30 & 1;
        v52 = "notification isValidRange: %{BOOL}d";
        goto LABEL_37;
      }
    }

    sub_1004438C0(v46, type metadata accessor for YearInReview.RemoteConfiguration.DateRange);
    sub_1004438C0(v36, type metadata accessor for YearInReview.RemoteConfiguration);
    return v30 & 1;
  }

  if (qword_100AD1730 != -1)
  {
    swift_once();
  }

  v26 = sub_10079ACE4();
  sub_100008B98(v26, qword_100AE67C0);

  v27 = sub_10079ACC4();
  v28 = sub_1007A29D4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    *(v29 + 4) = v68 & 1;
    *(v29 + 12) = 2048;
    v58(v23, v2 + v57, v20);
    sub_100798EE4();
    v25(v23, v20);
    *(v29 + 14) = v69;

    _os_log_impl(&_mh_execute_header, v27, v28, "entryPoint: %ld is active with override year: %ld", v29, 0x16u);
  }

  else
  {
  }

  v30 = 1;
  return v30 & 1;
}

uint64_t sub_1004B8F78(char a1)
{
  *(v2 + 320) = v1;
  *(v2 + 281) = a1;
  v3 = sub_1007978E4();
  *(v2 + 328) = v3;
  *(v2 + 336) = *(v3 - 8);
  *(v2 + 344) = swift_task_alloc();
  v4 = sub_1001F1160(&qword_100AE6928, &unk_10082A9A0);
  *(v2 + 352) = v4;
  *(v2 + 360) = *(v4 - 8);
  *(v2 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_1004B90A4, 0, 0);
}

uint64_t sub_1004B90A4(uint64_t a1)
{
  if ((sub_100798F24() & 1) != 0 && (v3 = *(v1 + 360), v2 = *(v1 + 368), v4 = *(v1 + 352), v5 = *(v1 + 320), v6 = OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride, v7 = *(v3 + 16), v7(v2, v5 + OBJC_IVAR____TtC5Books36YearInReviewEntryEligibilityProvider__debugYearOverride, v4), sub_100798EE4(), v8 = *(v3 + 8), v8(v2, v4), *(v1 + 304)))
  {
    if (qword_100AD1730 != -1)
    {
      swift_once();
    }

    v9 = sub_10079ACE4();
    sub_100008B98(v9, qword_100AE67C0);

    v10 = sub_10079ACC4();
    v11 = sub_1007A29D4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v1 + 368);
      v28 = v5;
      v13 = *(v1 + 352);
      v27 = *(v1 + 281);
      v14 = swift_slowAlloc();
      v15 = v7;
      v16 = v14;
      *v14 = 134218240;
      *(v14 + 4) = v27;
      *(v14 + 12) = 2048;
      v15(v12, v28 + v6, v13);
      sub_100798EE4();
      v8(v12, v13);
      *(v16 + 14) = *(v1 + 312);

      _os_log_impl(&_mh_execute_header, v10, v11, "condition: %ld is eligible with override year: %ld", v16, 0x16u);
    }

    else
    {
    }

    v26 = *(v1 + 8);

    return v26(1);
  }

  else if (*(v1 + 281))
  {
    if (*(v1 + 281) == 1)
    {
      v17 = v1 + 208;
      v18 = v1 + 80;
      v19 = [objc_opt_self() defaultBag];
      v20 = [v19 isYIREnabled];
      *(v1 + 400) = v20;

      *(v1 + 80) = v1;
      *(v1 + 120) = v1 + 288;
      *(v1 + 88) = sub_1004B97BC;
      v21 = swift_continuation_init();
      *(v1 + 264) = sub_1001F1160(&qword_100AE6930, &qword_100817C68);
      *(v1 + 208) = _NSConcreteStackBlock;
      *(v1 + 216) = 1107296256;
      *(v1 + 224) = sub_1004B73D8;
      *(v1 + 232) = &unk_100A1F390;
      *(v1 + 240) = v21;
    }

    else
    {
      v18 = v1 + 16;
      v17 = v1 + 144;
      v24 = [objc_opt_self() defaultBag];
      v20 = [v24 isYIRNotificationsAllowed];
      *(v1 + 416) = v20;

      *(v1 + 16) = v1;
      *(v1 + 56) = v1 + 272;
      *(v1 + 24) = sub_1004B9964;
      v25 = swift_continuation_init();
      *(v1 + 200) = sub_1001F1160(&qword_100AE6930, &qword_100817C68);
      *(v1 + 144) = _NSConcreteStackBlock;
      *(v1 + 152) = 1107296256;
      *(v1 + 160) = sub_1004B73D8;
      *(v1 + 168) = &unk_100A1F368;
      *(v1 + 176) = v25;
    }

    [v20 valueWithCompletion:v17];

    return _swift_continuation_await(v18);
  }

  else
  {
    v22 = swift_task_alloc();
    *(v1 + 376) = v22;
    *v22 = v1;
    v22[1] = sub_1004B95A8;

    return sub_1004B74B8();
  }
}

uint64_t sub_1004B95A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v5 = sub_1004B9B0C;
  }

  else
  {
    *(v4 + 392) = a1;
    v5 = sub_1004B96D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004B96D0()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  *v1 = v0[49];
  (*(v2 + 104))(v1, enum case for YearInReviewEligibilityCriteria.EligibilityCondition.experience(_:), v3);
  v4 = sub_1007978F4();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_1004B97BC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_1004B9BBC;
  }

  else
  {
    v2 = sub_1004B98CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B98CC()
{
  v1 = *(v0 + 288);

  v2 = [v1 BOOLValue];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1004B9964()
{
  v1 = *(*v0 + 48);
  *(*v0 + 424) = v1;
  if (v1)
  {
    v2 = sub_1004B9C80;
  }

  else
  {
    v2 = sub_1004B9A74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004B9A74()
{
  v1 = *(v0 + 272);

  v2 = [v1 BOOLValue];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1004B9B0C()
{
  sub_1004BB088();
  swift_allocError();
  *v1 = 0;
  v1[1] = 0;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1004B9BBC(uint64_t a1)
{
  v2 = *(v1 + 400);
  swift_willThrow();

  sub_1004BB088();
  swift_allocError();
  *v3 = xmmword_10082A830;
  swift_willThrow();

  v4 = *(v1 + 8);

  return v4(0);
}

uint64_t sub_1004B9C80(uint64_t a1)
{
  v2 = *(v1 + 416);
  swift_willThrow();

  sub_1004BB088();
  swift_allocError();
  *v3 = 0xD000000000000019;
  v3[1] = 0x80000001008D8050;
  swift_willThrow();

  v4 = *(v1 + 8);

  return v4(0);
}

void sub_1004B9D54()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v4 = v33 - v3;
  if (sub_1004B84DC(1))
  {
    v5 = [objc_opt_self() predicateFor_All_Marked_As_Finished_LibraryAssets];
    v6 = [*&v1[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_manager] persistentStoreCoordinator];
    if (v6)
    {
      v7 = v6;
      sub_1001F1160(&unk_100AD8160, &unk_100813160);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100811370;
      *(inited + 32) = swift_getKeyPath();
      *(inited + 40) = swift_getKeyPath();
      *(inited + 48) = swift_getKeyPath();
      v9 = v5;
      v10 = sub_10040E230(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v33[0] = v10;
      sub_100408CFC(v10);
      sub_10040E374(v11);

      v12 = objc_allocWithZone(BCManagedObjectIDMonitor);
      v33[1] = sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
      v13 = v7;
      sub_1001F1160(&qword_100AE2370, &qword_10082A980);
      sub_1007A22E4();
      v14 = sub_1007A2214();

      v15 = v9;
      v16 = sub_1007A2214();
      isa = sub_1007A2824().super.isa;
      v18 = [v12 initWithContext:0 coordinator:v13 entityName:v14 predicate:v15 mapProperty:v16 propertiesOfInterest:isa observer:v1];

      if (v18)
      {

        v19 = *&v1[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_monitor];
        *&v1[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_monitor] = v18;
        v20 = v18;

        v21 = sub_1007A2744();
        (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
        v22 = swift_allocObject();
        v22[2] = 0;
        v22[3] = 0;
        v22[4] = v1;
        v23 = v1;
        sub_1003457A0(0, 0, v4, &unk_10082A990, v22);

        if (qword_100AD1738 != -1)
        {
          swift_once();
        }

        v24 = sub_10079ACE4();
        sub_100008B98(v24, qword_100AE67D8);
        v25 = sub_10079ACC4();
        v26 = sub_1007A29D4();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "Successfully setup monitor, observing for changes", v27, 2u);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (qword_100AD1738 != -1)
  {
    swift_once();
  }

  v28 = sub_10079ACE4();
  sub_100008B98(v28, qword_100AE67D8);
  v29 = sub_10079ACC4();
  v30 = sub_1007A29D4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "TopPicksCard is not active, disabling observation", v31, 2u);
  }

  v32 = *&v1[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_monitor];
  *&v1[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_monitor] = 0;
}

id sub_1004BA274@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

id sub_1004BA2A8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 notFinished];
  *a2 = result;
  return result;
}

uint64_t sub_1004BA2DC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dateFinished];
  if (v3)
  {
    v4 = v3;
    sub_100796B64();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_100796BB4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1004BA3A0()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1004BA440;

  return sub_1004B8F78(0);
}

uint64_t sub_1004BA440(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1004BA5FC;
  }

  else
  {
    *(v4 + 32) = a1 & 1;
    v5 = sub_1004BA570;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004BA570()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_isEligible);
  isa = sub_1007A2684().super.super.isa;
  [v1 updateValue:isa];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004BA5FC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_isEligible);
  isa = sub_1007A2684().super.super.isa;
  [v1 updateValue:isa];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1004BA768()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_isEligible);
  *(v0 + 56) = v1;
  if ([v1 getValue])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 72);
      goto LABEL_9;
    }
  }

  else
  {
    sub_100007840(v0 + 16, &unk_100AD5B40, &unk_100811300);
  }

  v2 = 0;
LABEL_9:
  *(v0 + 73) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1004BA8B4;

  return sub_1004B8F78(0);
}

uint64_t sub_1004BA8B4(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1004BAB54;
  }

  else
  {
    *(v4 + 74) = a1 & 1;
    v5 = sub_1004BA9E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004BA9E4()
{
  v1 = *(v0 + 74);
  if (v1 != *(v0 + 73))
  {
    if (qword_100AD1738 != -1)
    {
      swift_once();
    }

    v2 = sub_10079ACE4();
    sub_100008B98(v2, qword_100AE67D8);
    v3 = sub_10079ACC4();
    v4 = sub_1007A29D4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 73);
      v6 = swift_slowAlloc();
      *v6 = 67109376;
      *(v6 + 4) = v5;
      *(v6 + 8) = 1024;
      *(v6 + 10) = v1;
      _os_log_impl(&_mh_execute_header, v3, v4, "TopPicksCard eligibility did change from %{BOOL}d to %{BOOL}d", v6, 0xEu);
    }

    v7 = *(v0 + 56);

    isa = sub_1007A2684().super.super.isa;
    [v7 updateValue:isa];
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1004BAB54()
{
  if (*(v0 + 73) == 1)
  {
    if (qword_100AD1738 != -1)
    {
      swift_once();
    }

    v1 = sub_10079ACE4();
    sub_100008B98(v1, qword_100AE67D8);
    v2 = sub_10079ACC4();
    v3 = sub_1007A29D4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 73);
      v5 = swift_slowAlloc();
      *v5 = 67109376;
      *(v5 + 4) = v4;
      *(v5 + 8) = 1024;
      *(v5 + 10) = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "TopPicksCard eligibility did change from %{BOOL}d to %{BOOL}d", v5, 0xEu);
    }

    v6 = *(v0 + 56);

    isa = sub_1007A2684().super.super.isa;
    [v6 updateValue:isa];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1004BADC0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE67C0);
  sub_100008B98(v0, qword_100AE67C0);
  return sub_10079ACD4();
}

uint64_t sub_1004BAE40()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE67D8);
  sub_100008B98(v0, qword_100AE67D8);
  return sub_10079ACD4();
}

id sub_1004BAEE8(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_monitor] = 0;
  *&v2[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_eligibilityProvider] = a2;
  v6 = objc_allocWithZone(BSUIDynamicValue);
  v11 = 0;

  v7 = [v6 initWithValue:sub_1007A3B04()];
  swift_unknownObjectRelease();
  *&v2[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_isEligible] = v7;
  *&v2[OBJC_IVAR____TtC5Books29TopPicksCardConditionObserver_manager] = a1;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = a1;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_1004BAFCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1004BA380(a1, v4, v5, v6);
}

unint64_t sub_1004BB088()
{
  result = qword_100AE6938;
  if (!qword_100AE6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6938);
  }

  return result;
}

uint64_t sub_1004BB0F8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1004BB138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1004BA748(a1, v4, v5, v6);
}

uint64_t sub_1004BB1EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004BB23C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1004BB290(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1004BB2C0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_61;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v31 = v1;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      v35 = v4;
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1007A3784();
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v3 >= *(v32 + 16))
        {
          goto LABEL_55;
        }

        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v29 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = sub_1007A38D4();
          isUniquelyReferenced_nonNull_bridgeObject = v29;
          goto LABEL_3;
        }
      }

      v7 = sub_1007A0C14();
      v8 = v7;
      if (v7 >> 62)
      {
        v9 = sub_1007A38D4();
        if (!v9)
        {
LABEL_23:

          v11 = _swiftEmptyArrayStorage;
          goto LABEL_24;
        }
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      v34[0] = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_bridgeObject = sub_1007A37F4();
      if (v9 < 0)
      {
        goto LABEL_57;
      }

      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          sub_1007A3784();
        }

        else
        {
        }

        ++v10;
        sub_1007A1AD4();

        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        sub_1007A37E4();
      }

      while (v9 != v10);

      v11 = v34[0];
LABEL_24:
      v2 = (v11 >> 62);
      v4 = v35;
      if (v11 >> 62)
      {
        v12 = sub_1007A38D4();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v4 >> 62;
      if (v4 >> 62)
      {
        v27 = sub_1007A38D4();
        v15 = v27 + v12;
        if (__OFADD__(v27, v12))
        {
LABEL_51:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 + v12;
        if (__OFADD__(v14, v12))
        {
          goto LABEL_51;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          v16 = v4 & 0xFFFFFFFFFFFFFF8;
          if (v15 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

LABEL_33:
        sub_1007A38D4();
        goto LABEL_34;
      }

      if (v13)
      {
        goto LABEL_33;
      }

LABEL_34:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1007A3794();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v16 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_35:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v2)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1007A38D4();
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19)
      {
        if (((v18 >> 1) - v17) < v12)
        {
          goto LABEL_58;
        }

        v35 = v4;
        v20 = v16 + 8 * v17 + 32;
        v30 = v16;
        if (v2)
        {
          if (v19 < 1)
          {
            goto LABEL_60;
          }

          sub_100005920(&unk_100AE6A20, &qword_100AE6A18, &qword_10082AB18, &protocol conformance descriptor for [A]);
          for (i = 0; i != v19; ++i)
          {
            sub_1001F1160(&qword_100AE6A18, &qword_10082AB18);
            v22 = sub_1002B6D80(v34, i, v11);
            v24 = *v23;

            (v22)(v34, 0);
            *(v20 + 8 * i) = v24;
          }
        }

        else
        {
          sub_1007A1614();
          swift_arrayInitWithCopy();
        }

        v5 = v31;
        v4 = v35;
        if (v12 >= 1)
        {
          v25 = *(v30 + 16);
          v6 = __OFADD__(v25, v12);
          v26 = v25 + v12;
          if (v6)
          {
            goto LABEL_59;
          }

          *(v30 + 16) = v26;
        }
      }

      else
      {

        v5 = v31;
        if (v12 > 0)
        {
          goto LABEL_56;
        }
      }

      if (v3 == v5)
      {
        return v4;
      }
    }
  }

  return v2;
}

void *sub_1004BB718(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_61;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v31 = v1;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      v35 = v4;
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1007A3784();
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v3 >= *(v32 + 16))
        {
          goto LABEL_55;
        }

        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v29 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = sub_1007A38D4();
          isUniquelyReferenced_nonNull_bridgeObject = v29;
          goto LABEL_3;
        }
      }

      v7 = sub_1007A0C04();
      v8 = v7;
      if (v7 >> 62)
      {
        v9 = sub_1007A38D4();
        if (!v9)
        {
LABEL_23:

          v11 = _swiftEmptyArrayStorage;
          goto LABEL_24;
        }
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          goto LABEL_23;
        }
      }

      v34[0] = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_bridgeObject = sub_1007A37F4();
      if (v9 < 0)
      {
        goto LABEL_57;
      }

      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          sub_1007A3784();
        }

        else
        {
        }

        ++v10;
        sub_1007A1AC4();

        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        sub_1007A37E4();
      }

      while (v9 != v10);

      v11 = v34[0];
LABEL_24:
      v2 = (v11 >> 62);
      v4 = v35;
      if (v11 >> 62)
      {
        v12 = sub_1007A38D4();
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v4 >> 62;
      if (v4 >> 62)
      {
        v27 = sub_1007A38D4();
        v15 = v27 + v12;
        if (__OFADD__(v27, v12))
        {
LABEL_51:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 + v12;
        if (__OFADD__(v14, v12))
        {
          goto LABEL_51;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          v16 = v4 & 0xFFFFFFFFFFFFFF8;
          if (v15 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

LABEL_33:
        sub_1007A38D4();
        goto LABEL_34;
      }

      if (v13)
      {
        goto LABEL_33;
      }

LABEL_34:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1007A3794();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v16 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_35:
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      if (v2)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1007A38D4();
        v19 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19)
      {
        if (((v18 >> 1) - v17) < v12)
        {
          goto LABEL_58;
        }

        v35 = v4;
        v20 = v16 + 8 * v17 + 32;
        v30 = v16;
        if (v2)
        {
          if (v19 < 1)
          {
            goto LABEL_60;
          }

          sub_100005920(&qword_100AE6398, &unk_100AE6A00, &qword_10082A088, &protocol conformance descriptor for [A]);
          for (i = 0; i != v19; ++i)
          {
            sub_1001F1160(&unk_100AE6A00, &qword_10082A088);
            v22 = sub_1002B6D80(v34, i, v11);
            v24 = *v23;

            (v22)(v34, 0);
            *(v20 + 8 * i) = v24;
          }
        }

        else
        {
          sub_1007A1224();
          swift_arrayInitWithCopy();
        }

        v5 = v31;
        v4 = v35;
        if (v12 >= 1)
        {
          v25 = *(v30 + 16);
          v6 = __OFADD__(v25, v12);
          v26 = v25 + v12;
          if (v6)
          {
            goto LABEL_59;
          }

          *(v30 + 16) = v26;
        }
      }

      else
      {

        v5 = v31;
        if (v12 > 0)
        {
          goto LABEL_56;
        }
      }

      if (v3 == v5)
      {
        return v4;
      }
    }
  }

  return v2;
}