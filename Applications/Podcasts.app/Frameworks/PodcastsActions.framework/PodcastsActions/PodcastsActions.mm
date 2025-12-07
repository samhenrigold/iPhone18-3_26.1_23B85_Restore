uint64_t AcceptEpisodeLimitRecommendationActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_E6CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_E5C74())
  {
    sub_1DE0(a1, a2);
  }

  else
  {
    sub_33B8(a1);
    sub_39B0(a1, a2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CD40, &qword_E8810);
  (*(v5 + 104))(v7, enum case for ActionOutcome.performed(_:), v4);
  return sub_E6F14();
}

uint64_t sub_1DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_E6BA4();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_E6BC4();
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12CDE8, UIViewController_ptr);
  sub_E6DA4();
  v10 = aBlock;
  v36._object = 0x80000000000F65F0;
  v36._countAndFlagsBits = 0xD00000000000002ALL;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_E63A4(v36, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_E87F0;
  v12 = sub_E5C74();
  *(v11 + 56) = &type metadata for UInt;
  *(v11 + 64) = &protocol witness table for UInt;
  *(v11 + 32) = v12;
  sub_E7034();

  v13 = sub_E7024();

  v14 = [objc_opt_self() alertControllerWithTitle:0 message:v13 preferredStyle:0];

  v15 = sub_231C(a1, a2);
  [v14 addAction:v15];

  v16 = sub_2590(a1, a2);
  [v14 addAction:v16];

  v37._countAndFlagsBits = 0x435F4E4F49544341;
  v37._object = 0xED00004C45434E41;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_E63A4(v37, v39);
  v17 = sub_E7024();

  v34 = sub_2C34;
  v35 = 0;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_2A3C;
  v33 = &block_descriptor;
  v18 = _Block_copy(&aBlock);

  v19 = [objc_opt_self() actionWithTitle:v17 style:1 handler:v18];
  _Block_release(v18);

  [v14 addAction:v19];
  sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v20 = sub_E75C4();
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  *(v21 + 24) = v10;
  v34 = sub_4174;
  v35 = v21;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_2D68;
  v33 = &block_descriptor_63;
  v22 = _Block_copy(&aBlock);
  v23 = v14;
  v24 = v10;

  sub_E6BB4();
  aBlock = _swiftEmptyArrayStorage;
  sub_40D4(&qword_12CE00, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE08, &qword_E8AB0);
  sub_4190();
  sub_E7874();
  sub_E75D4();
  _Block_release(v22);

  (*(v29 + 8))(v6, v4);
  return (*(v27 + 8))(v9, v28);
}

id sub_231C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcceptEpisodeLimitRecommendationAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v16._object = 0x80000000000F6660;
  v16._countAndFlagsBits = 0xD000000000000022;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_E63A4(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_E87F0;
  v8 = sub_E5C74();
  *(v7 + 56) = &type metadata for UInt;
  *(v7 + 64) = &protocol witness table for UInt;
  *(v7 + 32) = v8;
  sub_E7034();

  sub_42A4(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_44C0(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  v11 = sub_E7024();

  aBlock[4] = sub_4778;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2A3C;
  aBlock[3] = &block_descriptor_75;
  v12 = _Block_copy(aBlock);

  v13 = [objc_opt_self() actionWithTitle:v11 style:2 handler:v12];
  _Block_release(v12);

  return v13;
}

id sub_2590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcceptEpisodeLimitRecommendationAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_E7534();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE18, &qword_E8AB8);
  sub_E6DA4();
  sub_4ABC(0, &qword_12CE20, NSUserDefaults_ptr);
  (*(v9 + 104))(v11, enum case for NSUserDefaults.Name.shared(_:), v8);
  sub_423C();
  sub_E6DB4();
  (*(v9 + 8))(v11, v8);
  v12 = aBlock[0];
  v25._object = 0x80000000000F6640;
  v25._countAndFlagsBits = 0xD00000000000001DLL;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_E63A4(v25, v26);
  sub_42A4(a1, v7);
  sub_48FC(v24, v23);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_44C0(v7, v16 + v13);
  *(v16 + v14) = v12;
  *(v16 + v15) = a2;
  sub_4524(v23, v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = v12;

  v18 = sub_E7024();

  aBlock[4] = sub_453C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2A3C;
  aBlock[3] = &block_descriptor_69;
  v19 = _Block_copy(aBlock);

  v20 = [objc_opt_self() actionWithTitle:v18 style:0 handler:v19];
  _Block_release(v19);

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v20;
}

id sub_28E4(void *a1, void *a2)
{
  v4 = [a1 presentationController];
  if (v4)
  {
    v5 = v4;
    v6 = [a2 view];
    [v5 setSourceView:v6];
  }

  v7 = [a1 presentationController];
  if (v7)
  {
    v8 = v7;
    result = [a2 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    [result bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v20.origin.x = v12;
    v20.origin.y = v14;
    v20.size.width = v16;
    v20.size.height = v18;
    [v8 setSourceRect:{0.0, 0.0, 240.0, CGRectGetHeight(v20)}];
  }

  return [a2 presentViewController:a1 animated:1 completion:0];
}

void sub_2A3C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2AA4(uint64_t a1, uint64_t a2, NSUserDefaults *a3, uint64_t a4, void *a5)
{
  v9 = sub_E6974();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E6954();
  v13 = sub_E6964();
  v14 = sub_E7494();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "User requested to see more options in settings", v15, 2u);
  }

  (*(v10 + 8))(v12, v9);
  sub_E5C54(a3);
  sub_39B0(a2, a4);
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  return sub_E5B54();
}

uint64_t sub_2C34()
{
  v0 = sub_E6974();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E6954();
  v4 = sub_E6964();
  v5 = sub_E7494();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "User dismissed tip sheet", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2D68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_E5BB4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for ActionMetricsBehavior.notProcessed(_:), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE30, &unk_E8AC0);
  sub_E6E04();

  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_2ED0()
{
  v1 = *v0;
  sub_E7CC4();
  sub_E7CE4(v1);
  return sub_E7CF4();
}

Swift::Int sub_2F44(uint64_t a1)
{
  v2 = *v1;
  sub_E7CC4();
  sub_E7CE4(v2);
  return sub_E7CF4();
}

void *sub_2F94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2FC0(uint64_t a1, id *a2)
{
  result = sub_E7044();
  *a2 = 0;
  return result;
}

uint64_t sub_3038(uint64_t a1, id *a2)
{
  v3 = sub_E7054();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_30B8@<X0>(uint64_t *a1@<X8>)
{
  sub_E7064();
  v2 = sub_E7024();

  *a1 = v2;
  return result;
}

uint64_t sub_30FC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_E7024();

  *a2 = v3;
  return result;
}

uint64_t sub_3144@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E7064();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_3170(uint64_t a1)
{
  v2 = sub_40D4(&qword_12CE68, type metadata accessor for Name, &unk_E8BE0);
  v3 = sub_40D4(&unk_12CE70, type metadata accessor for Name, &unk_E8B80);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_322C()
{
  sub_E7064();
  v0 = sub_E7154();

  return v0;
}

uint64_t sub_3268(uint64_t a1)
{
  sub_E7064();
  sub_E7124();
}

Swift::Int sub_32BC(uint64_t a1)
{
  sub_E7064();
  sub_E7CC4();
  sub_E7124();
  v1 = sub_E7CF4();

  return v1;
}

uint64_t sub_3330(void *a1, uint64_t *a2)
{
  v2 = sub_E7064();
  v4 = v3;
  if (v2 == sub_E7064() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_E7BD4();
  }

  return v7 & 1;
}

uint64_t sub_33B8(uint64_t a1)
{
  v36 = a1;
  v1 = sub_E6BA4();
  v41 = *(v1 - 8);
  v42 = v1;
  __chkstk_darwin(v1);
  v40 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_E6BC4();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_E5C84();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v35);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_E6974();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_E7534();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12CE40, MPMediaLibrary_ptr);
  sub_E6DA4();
  v33 = aBlock[0];
  sub_4ABC(0, &qword_12CE20, NSUserDefaults_ptr);
  (*(v12 + 104))(v14, enum case for NSUserDefaults.Name.shared(_:), v11);
  sub_423C();
  sub_E6DB4();
  (*(v12 + 8))(v14, v11);
  v15 = aBlock[0];
  sub_E6954();
  v16 = sub_E6964();
  v17 = sub_E7494();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "User accepted the new global default", v18, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v19 = v36;
  sub_E5C44();
  sub_E7524();
  sub_E5C54(v15);
  sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v20 = sub_E7584();
  v22 = v34;
  v21 = v35;
  (*(v5 + 16))(v34, v19, v35);
  v23 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v24 = swift_allocObject();
  v25 = v33;
  *(v24 + 16) = v33;
  (*(v5 + 32))(v24 + v23, v22, v21);
  aBlock[4] = sub_4BC8;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2D68;
  aBlock[3] = &block_descriptor_87;
  v26 = _Block_copy(aBlock);
  v27 = v25;
  v28 = v37;
  sub_E6BB4();
  v43 = _swiftEmptyArrayStorage;
  sub_40D4(&qword_12CE00, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE08, &qword_E8AB0);
  sub_4190();
  v29 = v40;
  v30 = v42;
  sub_E7874();
  sub_E75D4();
  _Block_release(v26);

  (*(v41 + 8))(v29, v30);
  (*(v38 + 8))(v28, v39);
}

uint64_t sub_39B0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_E6BA4();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_E6BC4();
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE30, &unk_E8AC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = type metadata accessor for AcceptEpisodeLimitRecommendationAction(0);
  sub_4824(a1 + *(v15 + 20), &aBlock);
  if (!v39)
  {
    return sub_4894(&aBlock);
  }

  sub_4524(&aBlock, v43);
  v32 = v14;
  v16 = v34;
  sub_E6DA4();
  sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  v30 = sub_E75C4();
  (*(v9 + 16))(v12, v14, v8);
  sub_48FC(v43, v42);
  v17 = *(v9 + 80);
  v29 = v5;
  v18 = (v17 + 16) & ~v17;
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v6;
  v20 = v35;
  v21 = v3;
  v22 = swift_allocObject();
  (*(v9 + 32))(v22 + v18, v12, v8);
  sub_4524(v42, v22 + v19);
  *(v22 + ((v19 + 47) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v40 = sub_4A18;
  v41 = v22;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v38 = sub_2D68;
  v39 = &block_descriptor_81;
  v23 = _Block_copy(&aBlock);

  v24 = v36;
  sub_E6BB4();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_40D4(&qword_12CE00, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE08, &qword_E8AB0);
  sub_4190();
  v25 = v29;
  sub_E7874();
  v26 = v30;
  sub_E75D4();
  _Block_release(v23);

  (*(v20 + 8))(v25, v21);
  (*(v33 + 8))(v24, v31);
  (*(v9 + 8))(v32, v8);
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AcceptEpisodeLimitRecommendationActionImplementation(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AcceptEpisodeLimitRecommendationActionImplementation(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_4008(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_4028(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_40D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4134()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_4190()
{
  result = qword_12CE10;
  if (!qword_12CE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12CE08, &qword_E8AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12CE10);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_423C()
{
  result = qword_12D040;
  if (!qword_12D040)
  {
    sub_4ABC(255, &qword_12CE20, NSUserDefaults_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D040);
  }

  return result;
}

uint64_t sub_42A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcceptEpisodeLimitRecommendationAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4308()
{
  v1 = type metadata accessor for AcceptEpisodeLimitRecommendationAction(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_E5C84();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = (v0 + v3 + *(v1 + 20));
  if (v7[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 24);
  v11 = sub_E6CE4();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  __swift_destroy_boxed_opaque_existential_1((v0 + v9));

  return _swift_deallocObject(v0, v9 + 40, v2 | 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_44C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcceptEpisodeLimitRecommendationAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4524(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_453C(uint64_t a1)
{
  v3 = *(type metadata accessor for AcceptEpisodeLimitRecommendationAction(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);

  return sub_2AA4(a1, v1 + v4, v7, v8, (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_4634()
{
  v1 = type metadata accessor for AcceptEpisodeLimitRecommendationAction(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_E5C84();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = (v0 + v3 + *(v1 + 20));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  v7 = *(v1 + 24);
  v8 = sub_E6CE4();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_4778()
{
  v1 = *(type metadata accessor for AcceptEpisodeLimitRecommendationAction(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_33B8(v0 + v2);

  return sub_39B0(v0 + v2, v3);
}

uint64_t sub_4824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE38, &qword_E92E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE38, &qword_E92E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_48FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_4960()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE30, &unk_E8AC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return _swift_deallocObject(v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_4A18()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE30, &unk_E8AC0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_2DAC(v0 + v2, v0 + v3, v4);
}

uint64_t sub_4ABC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_4B04()
{
  v1 = sub_E5C84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_4BC8()
{
  sub_E5C84();
  sub_E5C44();
  return sub_E74E4();
}

void sub_4C44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t DeclineEpisodeLimitRecommendationActionImplementation.perform(_:asPartOf:)()
{
  v0 = sub_E6CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_E7534();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4FD4();
  (*(v5 + 104))(v7, enum case for NSUserDefaults.Name.shared(_:), v4);
  sub_5068(&qword_12D040, sub_4FD4, &protocol conformance descriptor for NSUserDefaults);
  sub_E6DB4();
  (*(v5 + 8))(v7, v4);
  v8 = v12;
  sub_E5C54(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CD40, &qword_E8810);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  v9 = sub_E6F14();

  return v9;
}

unint64_t sub_4FD4()
{
  result = qword_12CE20;
  if (!qword_12CE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12CE20);
  }

  return result;
}

uint64_t sub_5068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_50C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v5[8] = *(AssociatedTypeWitness - 8);
  v5[9] = swift_task_alloc();
  v5[10] = *(a4 - 8);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_51F8, 0, 0);
}

uint64_t sub_51F8()
{
  v8 = v0[6];
  (*(v0[8] + 16))(v0[9], v0[3], v0[7]);
  v1 = *(v8 + 24);

  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_5344;
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[4];

  return v7(v3, v5, v4);
}

uint64_t sub_5344()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_56DC, 0, 0);
  }

  else
  {
    v8 = (*(v2[6] + 32) + **(v2[6] + 32));
    v3 = swift_task_alloc();
    v2[14] = v3;
    *v3 = v2;
    v3[1] = sub_553C;
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[2];

    return v8(v6, v4, v5);
  }
}

uint64_t sub_553C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_574C;
  }

  else
  {
    v2 = sub_5650;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5650()
{
  (*(v0[10] + 8))(v0[11], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_56DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_574C()
{
  (*(v0[10] + 8))(v0[11], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_57D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = *(a4 + 16);
  v11 = *(a4 + 24);
  *v9 = v4;
  v9[1] = sub_588C;

  return sub_50C0(a1, a2, a3, v10, v11);
}

uint64_t sub_588C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_5980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, WitnessTable);
}

uint64_t static ActionDispatcher.Builder<>.buildExpression<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CE30, &unk_E8AC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_E6DF4();
  sub_E6E24();
  type metadata accessor for _EphemeralActionImplementationWrapper(0, a2, a3, v9);
  swift_getWitnessTable();
  sub_E6E14();
  return (*(v6 + 8))(v8, v5);
}

uint64_t dispatch thunk of EphemeralActionImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_5E10;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of EphemeralActionImplementation.perform()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return v9(a1, a2, a3);
}

uint64_t IgnoreAbandonedDownloadsActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = sub_E5A54();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v5 = sub_E7724();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = *(type metadata accessor for IgnoreAbandonedDownloadsAction(0) - 8);
  v3[19] = v6;
  v3[20] = *(v6 + 64);
  v3[21] = swift_task_alloc();
  v7 = sub_E7534();
  v3[22] = v7;
  v3[23] = *(v7 - 8);
  v3[24] = swift_task_alloc();
  v8 = sub_E7324();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v10 = swift_task_alloc();
  v3[28] = v10;
  *v10 = v3;
  v10[1] = sub_60A8;

  return BaseObjectGraph.inject<A>(_:)(v3 + 7, v9, v9);
}

uint64_t sub_60A8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_6A88;
  }

  else
  {
    v2 = sub_61BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_61BC()
{
  v1 = *(v0 + 232);
  swift_getObjectType();
  sub_E7374();
  *(v0 + 240) = sub_E7764();
  if (v1)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    swift_unknownObjectRelease();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 192);
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    swift_unknownObjectRelease();
    *(v0 + 248) = sub_4FD4();
    *(v0 + 344) = enum case for NSUserDefaults.Name.shared(_:);
    v7 = *(v6 + 104);
    *(v0 + 256) = v7;
    *(v0 + 264) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v7(v4);
    *(v0 + 272) = sub_7198(&qword_12D040, sub_4FD4, &protocol conformance descriptor for NSUserDefaults);
    sub_E6DB4();
    v8 = *(v6 + 8);
    *(v0 + 280) = v8;
    *(v0 + 288) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v5);
    v9 = *(v0 + 64);
    *(v0 + 296) = v9;
    sub_E7114();
    v10 = sub_E7024();

    [v9 setBool:1 forKey:v10];

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D048, &qword_E90B0);
    v12 = swift_task_alloc();
    *(v0 + 304) = v12;
    *v12 = v0;
    v12[1] = sub_6484;

    return BaseObjectGraph.inject<A>(_:)(v0 + 16, v11, v11);
  }
}

uint64_t sub_6484()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_6B2C;
  }

  else
  {
    v2 = sub_6598;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6598()
{
  v1 = v0[30];
  v2 = v0[21];
  v3 = v0[19];
  v13 = v0[18];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  TipProvider.requestRefresh()();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_6E20(v6, v2);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[40] = v8;
  *(v8 + 16) = v1;
  sub_6F74(v2, v8 + v7);
  (*(v5 + 104))(v13, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
  v9 = v1;
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_6728;
  v11 = v0[18];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_6FD8, v8, &type metadata for () + 8);
}

uint64_t sub_6728()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  (*(v2[17] + 8))(v2[18], v2[16]);

  if (v0)
  {
    v3 = sub_6BE0;
  }

  else
  {
    v3 = sub_68AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_68AC()
{
  v1 = *(v0 + 280);
  v15 = *(v0 + 240);
  v16 = *(v0 + 296);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v14 = *(v0 + 104);
  v17 = *(v0 + 80);
  (*(v0 + 256))(v2, *(v0 + 344), v3);
  sub_E6DB4();
  v1(v2, v3);
  v6 = *(v0 + 72);
  sub_E5A44();
  sub_E5A14();
  v8 = v7;
  (*(v5 + 8))(v4, v14);
  v9 = kMTEpisodeAbandonedRemovalTipLastDisplayedTimeKey;
  [v6 setDouble:v9 forKey:v8];

  v10 = enum case for ActionOutcome.performed(_:);
  v11 = sub_E6CF4();
  (*(*(v11 - 8) + 104))(v17, v10, v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_6A88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_6B2C()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_6BE0()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_6C98(void *a1, void *a2)
{
  result = sub_E7714();
  if (!v2)
  {
    v5 = result;
    if (result >> 62)
    {
      v6 = sub_E7AC4();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = sub_E79B4();
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          v9 = v8;
          [v8 setDownloadBehavior:2];
        }
      }
    }

    v11 = 0;
    if ([a1 save:&v11])
    {
      return v11;
    }

    else
    {
      v10 = v11;
      sub_E5904();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_6E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IgnoreAbandonedDownloadsAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6E84()
{
  v1 = (type metadata accessor for IgnoreAbandonedDownloadsAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_E6CE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IgnoreAbandonedDownloadsAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_704C()
{
  result = qword_12D050;
  if (!qword_12D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D050);
  }

  return result;
}

uint64_t sub_70A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return IgnoreAbandonedDownloadsActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_7198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_71E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7244();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_7244()
{
  result = qword_12D060;
  if (!qword_12D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D060);
  }

  return result;
}

uint64_t IgnorePurgedEpisodesActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v5 = swift_task_alloc();
  v3[13] = v5;
  *v5 = v3;
  v5[1] = sub_735C;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_735C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_7750;
  }

  else
  {
    v2 = sub_7470;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7470()
{
  v1 = v0[11];
  v2 = *v1;
  v0[15] = *v1;
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v2;
  v0[8] = 1;

  v5 = swift_task_alloc();
  v0[16] = v5;
  v6 = sub_77D4();
  *v5 = v0;
  v5[1] = sub_7578;
  v7 = v0[12];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 9, v0 + 7, v7, &type metadata for UpdateEpisodeDownloadBehavior, v6, v3, v4);
}

uint64_t sub_7578()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_7768;
  }

  else
  {

    v2 = sub_76A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_76A0()
{
  v1 = v0[10];
  v2 = enum case for ActionOutcome.performed(_:);
  v3 = sub_E6CF4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_7768()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_77D4()
{
  result = qword_130950;
  if (!qword_130950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130950);
  }

  return result;
}

unint64_t sub_782C()
{
  result = qword_12D070;
  if (!qword_12D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D070);
  }

  return result;
}

uint64_t sub_7880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return IgnorePurgedEpisodesActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

unint64_t sub_7934()
{
  result = qword_12D078;
  if (!qword_12D078)
  {
    type metadata accessor for IgnorePurgedEpisodesAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D078);
  }

  return result;
}

uint64_t sub_798C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_79F0();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_79F0()
{
  result = qword_12D080;
  if (!qword_12D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D080);
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_E5A54();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v3[10] = swift_task_alloc();
  v5 = sub_E7534();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = sub_E72F4();
  v3[15] = sub_E72E4();
  v7 = sub_E7294();
  v3[16] = v7;
  v3[17] = v6;

  return _swift_task_switch(sub_7BD4, v7, v6);
}

uint64_t sub_7BD4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_4FD4();
  (*(v2 + 104))(v1, enum case for NSUserDefaults.Name.shared(_:), v3);
  sub_8908(&qword_12D040, sub_4FD4, &protocol conformance descriptor for NSUserDefaults);
  sub_E6DB4();
  (*(v2 + 8))(v1, v3);
  v0[18] = v0[2];
  v4 = sub_E5C14();
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_7D40;

  return BaseObjectGraph.inject<A>(_:)(v0 + 3, v4, v4);
}

uint64_t sub_7D40()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_80D8;
  }

  else
  {
    v5 = sub_7E7C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_7E7C()
{
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v19 = v0[7];
  v20 = v0[4];

  v5 = v0[3];
  sub_E66A4();
  v6 = v1;
  v7 = sub_E6674();
  v8 = sub_E6694();

  sub_E6684(v6);
  sub_E7304();
  v9 = sub_E7324();
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);

  v10 = sub_E72E4();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v5;
  sub_854C(0, 0, v3, &unk_E8FE8, v11);

  sub_E5A44();
  sub_E5A14();
  v13 = v12;
  (*(v4 + 8))(v2, v19);
  v14 = kMTEpisodeAbandonedRemovalTipLastDisplayedTimeKey;
  [(NSUserDefaults *)v6 setDouble:v14 forKey:v13];

  v15 = enum case for ActionOutcome.performed(_:);
  v16 = sub_E6CF4();
  (*(*(v16 - 8) + 104))(v20, v15, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_80D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_8170()
{
  v0[2] = sub_E72F4();
  v0[3] = sub_E72E4();
  v3 = (&async function pointer to dispatch thunk of DownloadRemovalObserver.removeDownloadsRecordedInUserDefaults() + async function pointer to dispatch thunk of DownloadRemovalObserver.removeDownloadsRecordedInUserDefaults());
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_8234;

  return v3();
}

uint64_t sub_8234()
{
  *(*v1 + 40) = v0;

  v3 = sub_E7294();
  if (v0)
  {
    v4 = sub_83F4;
  }

  else
  {
    v4 = sub_8390;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_8390()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_83F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_8458()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8498()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_588C;

  return sub_8170();
}

uint64_t sub_854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_8A08(a3, v22 - v9);
  v11 = sub_E7324();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_8A78(v10);
  }

  else
  {
    sub_E7314();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_E7294();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_E70A4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_8A78(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_8A78(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_87BC()
{
  result = qword_12D088;
  if (!qword_12D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D088);
  }

  return result;
}

uint64_t sub_8810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return RemoveAbandonedDownloadsActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_8908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_8950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_89B4();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_89B4()
{
  result = qword_12D098;
  if (!qword_12D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D098);
  }

  return result;
}

uint64_t sub_8A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8A78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int RequestTipProviderRefreshActionImplementation.PerformError.hashValue.getter()
{
  sub_E7CC4();
  sub_E7CD4(0);
  return sub_E7CF4();
}

Swift::Int sub_8B54(uint64_t a1)
{
  sub_E7CC4();
  sub_E7CD4(0);
  return sub_E7CF4();
}

uint64_t RequestTipProviderRefreshActionImplementation.perform(_:asPartOf:)(void *a1)
{
  v2 = sub_E6CF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D048, &qword_E90B0);
  sub_E6D74();
  if (v11)
  {
    sub_4524(&v10, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v7 + 16))(*a1, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CD40, &qword_E8810);
    (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
    v8 = sub_E6F14();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v8;
  }

  else
  {
    sub_8D60(&v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CD40, &qword_E8810);
    sub_8DC8();
    swift_allocError();
    return sub_E6F04();
  }
}

uint64_t sub_8D60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D0A0, &unk_E90B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_8DC8()
{
  result = qword_12D0A8;
  if (!qword_12D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0A8);
  }

  return result;
}

unint64_t sub_8E20()
{
  result = qword_12D0B0;
  if (!qword_12D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0B0);
  }

  return result;
}

unint64_t sub_8E78()
{
  result = qword_12D0B8;
  if (!qword_12D0B8)
  {
    type metadata accessor for RequestTipProviderRefreshAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0B8);
  }

  return result;
}

uint64_t RestorePurgedEpisodesActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v5 = swift_task_alloc();
  v3[13] = v5;
  *v5 = v3;
  v5[1] = sub_8FE4;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_8FE4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_7750;
  }

  else
  {
    v2 = sub_90F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_90F8()
{
  v1 = v0[11];
  v2 = *v1;
  v0[15] = *v1;
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v2;
  v0[8] = 0;

  v5 = swift_task_alloc();
  v0[16] = v5;
  v6 = sub_77D4();
  *v5 = v0;
  v5[1] = sub_91FC;
  v7 = v0[12];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 9, v0 + 7, v7, &type metadata for UpdateEpisodeDownloadBehavior, v6, v3, v4);
}

uint64_t sub_91FC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_7768;
  }

  else
  {

    v2 = sub_9324;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_9324()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[18] = v3;
  v4 = sub_9568();
  *v3 = v0;
  v3[1] = sub_93F0;
  v6 = v0[12];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v4, v5, v6, &type metadata for ReevaluateAutoDownloadsIntent, v4, v1, v2);
}

uint64_t sub_93F0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_9504;
  }

  else
  {
    v2 = sub_76A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_9504()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_9568()
{
  result = qword_12D0C0;
  if (!qword_12D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0C0);
  }

  return result;
}

unint64_t sub_95C0()
{
  result = qword_12D0C8;
  if (!qword_12D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0C8);
  }

  return result;
}

uint64_t sub_9614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return RestorePurgedEpisodesActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

unint64_t sub_96C8()
{
  result = qword_12D0D0;
  if (!qword_12D0D0)
  {
    type metadata accessor for RestorePurgedEpisodesAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0D0);
  }

  return result;
}

uint64_t sub_9720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_9784();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_9784()
{
  result = qword_12D0D8;
  if (!qword_12D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D0D8);
  }

  return result;
}

uint64_t AcceptEpisodeLimitRecommendationAction.init(recommendation:confirmationAction:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_E5C84();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for AcceptEpisodeLimitRecommendationAction(0);
  v10 = a4 + *(v9 + 20);
  v11 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(a2 + 32);
  v12 = *(v9 + 24);
  v13 = sub_E6CE4();
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

uint64_t type metadata accessor for AcceptEpisodeLimitRecommendationAction(uint64_t a1)
{
  result = qword_12D138;
  if (!qword_12D138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeclineEpisodeLimitRecommendationAction.recommendation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_E5C84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AcceptEpisodeLimitRecommendationAction.confirmationAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AcceptEpisodeLimitRecommendationAction(0) + 20);

  return sub_4824(v3, a1);
}

uint64_t AcceptEpisodeLimitRecommendationAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AcceptEpisodeLimitRecommendationAction(0) + 24);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_9A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_E6CE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_9AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E5C84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_E6CE4();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_9BF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_E5C84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  else
  {
    v11 = sub_E6CE4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_9D20(uint64_t a1)
{
  sub_E5C84();
  if (v1 <= 0x3F)
  {
    sub_9DBC(319);
    if (v2 <= 0x3F)
    {
      sub_E6CE4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_9DBC(uint64_t a1)
{
  if (!qword_12D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_12D150, &qword_E9368);
    v1 = sub_E7814();
    if (!v2)
    {
      atomic_store(v1, &qword_12D148);
    }
  }
}

uint64_t DeclineEpisodeLimitRecommendationAction.init(recommendation:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E5C84();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for DeclineEpisodeLimitRecommendationAction(0) + 20);
  v8 = sub_E6CE4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t type metadata accessor for DeclineEpisodeLimitRecommendationAction(uint64_t a1)
{
  result = qword_12D1E0;
  if (!qword_12D1E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeclineEpisodeLimitRecommendationAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeclineEpisodeLimitRecommendationAction(0) + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_9FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_E6CE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_A030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E5C84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_E6CE4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_A134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_E5C84();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_E6CE4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_A230(uint64_t a1)
{
  result = sub_E5C84();
  if (v2 <= 0x3F)
  {
    result = sub_E6CE4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t UpdateEpisodeDownloadBehaviorAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_E6CE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DownloadEpisodesAction.actionMetrics.setter(uint64_t a1)
{
  v3 = sub_E6CE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DownloadEpisodesAction.episodeIDs.getter()
{
  type metadata accessor for DownloadEpisodesAction(0);
}

uint64_t type metadata accessor for DownloadEpisodesAction(uint64_t a1)
{
  result = qword_12D290;
  if (!qword_12D290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DownloadEpisodesAction.intent.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for DownloadEpisodesAction(0) + 20));
}

uint64_t DownloadEpisodesAction.init(actionMetrics:episodeIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_E6CD4();
  *(a3 + *(type metadata accessor for DownloadEpisodesAction(0) + 20)) = a2;
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 40);

  return v7(a3, a1, v6);
}

unint64_t sub_A4F8()
{
  result = qword_1305E0;
  if (!qword_1305E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1305E0);
  }

  return result;
}

uint64_t sub_A570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_A640(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_E6CE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_A6F8(uint64_t a1)
{
  sub_E6CE4();
  if (v1 <= 0x3F)
  {
    sub_A77C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_A77C()
{
  if (!qword_12D2A0)
  {
    v0 = sub_E7284();
    if (!v1)
    {
      atomic_store(v0, &qword_12D2A0);
    }
  }
}

uint64_t IgnoreAbandonedDownloadsAction.init(episodeIDs:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for IgnoreAbandonedDownloadsAction(0) + 20);
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for IgnoreAbandonedDownloadsAction(uint64_t a1)
{
  result = qword_12D328;
  if (!qword_12D328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IgnoreAbandonedDownloadsAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnoreAbandonedDownloadsAction(0) + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_A934(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6CE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_A9F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E6CE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_AA98(uint64_t a1)
{
  sub_A77C();
  if (v1 <= 0x3F)
  {
    sub_E6CE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t IgnorePurgedEpisodesAction.init(episodeIDs:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for IgnorePurgedEpisodesAction(0) + 20);
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for IgnorePurgedEpisodesAction(uint64_t a1)
{
  result = qword_12D3B8;
  if (!qword_12D3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IgnorePurgedEpisodesAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IgnorePurgedEpisodesAction(0) + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_AC7C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6CE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_AD3C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E6CE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t OpenAppLocationError.localizedStringResource.getter()
{
  v0 = sub_E7014();
  __chkstk_darwin(v0 - 8);
  sub_E7004();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  sub_E6FF4(v2);
  sub_AEBC();
  sub_E6FE4();
  v3._object = 0x80000000000F6710;
  v3._countAndFlagsBits = 0xD000000000000011;
  sub_E6FF4(v3);
  return sub_E5924();
}

unint64_t sub_AEBC()
{
  result = qword_12D3F0;
  if (!qword_12D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D3F0);
  }

  return result;
}

uint64_t type metadata accessor for OpenAppLocationAction(uint64_t a1)
{
  result = qword_12D450;
  if (!qword_12D450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OpenAppLocationAction.init(actionMetrics:location:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_E6CE4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for OpenAppLocationAction(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_B16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xC)
    {
      return v10 - 11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_B238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_E6CE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 11;
  }

  return result;
}

uint64_t sub_B2F0(uint64_t a1)
{
  result = sub_E6CE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OpenAudioAction.audioEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OpenAudioAction(0) + 20);

  return sub_B3F4(v3, a1);
}

uint64_t type metadata accessor for OpenAudioAction(uint64_t a1)
{
  result = qword_12D4E0;
  if (!qword_12D4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OpenAudioAction.audioEntity.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OpenAudioAction(0) + 20);

  return sub_B49C(a1, v3);
}

uint64_t sub_B49C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEntity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OpenAudioAction.init(actionMetrics:audioEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E6CE4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for OpenAudioAction(0) + 20);

  return sub_B5D8(a2, v7);
}

uint64_t sub_B5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AudioEntity(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_B754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_E6CE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AudioEntity(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_B850(uint64_t a1)
{
  result = sub_E6CE4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AudioEntity(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OpenStoreURLAction.shareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenStoreURLAction(0) + 20);
  v4 = sub_E59C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OpenStoreURLAction(uint64_t a1)
{
  result = qword_12D570;
  if (!qword_12D570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OpenStoreURLAction.init(actionMetrics:shareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_E6CE4();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for OpenStoreURLAction(0) + 20);
  v8 = sub_E59C4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t sub_BA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_E59C4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_BB74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_E6CE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_E59C4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_BC70(uint64_t a1)
{
  result = sub_E6CE4();
  if (v2 <= 0x3F)
  {
    result = sub_E59C4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsAction.init(episodeIDs:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for RemoveAbandonedDownloadsAction(0) + 20);
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for RemoveAbandonedDownloadsAction(uint64_t a1)
{
  result = qword_12D600;
  if (!qword_12D600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoveAbandonedDownloadsAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveAbandonedDownloadsAction(0) + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_BE54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6CE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_BF14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E6CE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t RemoveDownloadedEpisodesAction.init(episodeIDs:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for RemoveDownloadedEpisodesAction(0) + 20);
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for RemoveDownloadedEpisodesAction(uint64_t a1)
{
  result = qword_12D6B0;
  if (!qword_12D6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RemoveDownloadedEpisodesAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RemoveDownloadedEpisodesAction(0) + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_C140(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6CE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_C200(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E6CE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_C2A8()
{
  result = qword_12D6E8;
  if (!qword_12D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D6E8);
  }

  return result;
}

uint64_t RequestTipProviderRefreshAction.init(groups:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for RequestTipProviderRefreshAction(0) + 20);
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for RequestTipProviderRefreshAction(uint64_t a1)
{
  result = qword_12D750;
  if (!qword_12D750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RequestTipProviderRefreshAction.init(group:actionMetrics:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D6F0, &qword_E9820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_E87F0;
  *(inited + 32) = v5;
  v7 = sub_C50C(inited);
  swift_setDeallocating();
  *a3 = v7;
  v8 = *(type metadata accessor for RequestTipProviderRefreshAction(0) + 20);
  v9 = sub_E6CE4();
  return (*(*(v9 - 8) + 32))(&a3[v8], a2, v9);
}

uint64_t RequestTipProviderRefreshAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RequestTipProviderRefreshAction(0) + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Int sub_C50C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D798, &unk_E9890);
    v3 = sub_E7964();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_E7CC4();
      sub_E7CD4(v10);
      result = sub_E7CF4();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_C65C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6CE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_C71C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E6CE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_C7C0(uint64_t a1)
{
  sub_C844(319);
  if (v1 <= 0x3F)
  {
    sub_E6CE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_C844(uint64_t a1)
{
  if (!qword_12D760)
  {
    sub_C8A0();
    v1 = sub_E73E4();
    if (!v2)
    {
      atomic_store(v1, &qword_12D760);
    }
  }
}

unint64_t sub_C8A0()
{
  result = qword_12D768;
  if (!qword_12D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D768);
  }

  return result;
}

uint64_t RestorePurgedEpisodesAction.init(episodeIDs:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for RestorePurgedEpisodesAction(0) + 20);
  v6 = sub_E6CE4();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for RestorePurgedEpisodesAction(uint64_t a1)
{
  result = qword_12D7F8;
  if (!qword_12D7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RestorePurgedEpisodesAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RestorePurgedEpisodesAction(0) + 20);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_CA54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_E6CE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_CB14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_E6CE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t SwitchNewsProviderIntent.topicID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SearchAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchAction(0) + 24);

  return sub_CC80(v3, a1);
}

uint64_t type metadata accessor for SearchAction(uint64_t a1)
{
  result = qword_12D890;
  if (!qword_12D890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CC80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SearchAction.hintIndex.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SearchAction(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SearchAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchAction(0) + 36);
  v4 = sub_E6CE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchAction.init(origin:term:url:hintIndex:activatesSearchBar:actionMetrics:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = type metadata accessor for SearchAction(0);
  v18 = a9 + v17[7];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  sub_CF40(a4, a9 + v17[6]);
  *v18 = a5;
  *(v18 + 8) = a6 & 1;
  *(a9 + v17[8]) = a7;
  v19 = v17[9];
  v20 = sub_E6CE4();
  v21 = *(*(v20 - 8) + 32);

  return v21(a9 + v19, a8, v20);
}

uint64_t sub_CF40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_CFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_E6CE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SearchAction.with(hintIndex:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_D07C(v3, a3);
  result = type metadata accessor for SearchAction(0);
  v8 = a3 + *(result + 28);
  *v8 = a1;
  *(v8 + 8) = a2 & 1;
  return result;
}

uint64_t sub_D07C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SearchAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v55 = a3;
  v5 = sub_E6CE4();
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v7 - 8);
  v60 = &v46 - v8;
  v9 = sub_E6C94();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v57 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v46 - v13;
  v62 = sub_E6C34();
  v64 = *(v62 - 8);
  v15 = __chkstk_darwin(v62);
  v56 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v59 = &v46 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v46 - v20;
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v63 = a1;
  sub_E6C44();
  v24 = *(v10 + 16);
  v24(v14, a2, v9);
  v25 = v61;
  v26 = sub_D700(v23, v14);
  if (v25)
  {
    (*(v10 + 8))(a2, v9);
    return (*(v64 + 8))(v63, v62);
  }

  else
  {
    v50 = v24;
    v48 = v26;
    v28 = v59;
    v52 = v9;
    v61 = a2;
    sub_E6C44();
    v47 = sub_E6C14();
    v30 = v29;
    v31 = *(v64 + 8);
    v32 = v62;
    v64 += 8;
    v51 = v31;
    v31(v21, v62);
    if (v30)
    {
      v49 = v30;
      sub_E6C44();
      sub_E6BF4();
      v33 = v28;
      v34 = v51;
      v51(v33, v32);
      sub_E6C44();
      v35 = v61;
      v36 = v52;
      v50(v57, v61, v52);
      v37 = v58;
      sub_E6CC4();
      (*(v10 + 8))(v35, v36);
      v34(v63, v62);
      v42 = type metadata accessor for SearchAction(0);
      v43 = v55;
      v44 = &v55[v42[7]];
      *v55 = v48;
      v45 = v49;
      *(v43 + 1) = v47;
      *(v43 + 2) = v45;
      sub_CF40(v60, &v43[v42[6]]);
      *v44 = 0;
      v44[8] = 1;
      v43[v42[8]] = 0;
      return (*(v53 + 32))(&v43[v42[9]], v37, v54);
    }

    else
    {
      v38 = sub_E6F54();
      sub_E528(&qword_12D830, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v40 = v39;
      v41 = type metadata accessor for SearchAction(0);
      *v40 = 1836213620;
      v40[1] = 0xE400000000000000;
      v40[2] = v41;
      (*(*(v38 - 8) + 104))(v40, enum case for JSONError.missingProperty(_:), v38);
      swift_willThrow();
      (*(v10 + 8))(v61, v52);
      return (v51)(v63, v32);
    }
  }
}

uint64_t sub_D700(uint64_t a1, uint64_t a2)
{
  v5 = sub_E79C4();
  v27 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_E6C94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  sub_E6F94();
  sub_E570();
  sub_E6C04();
  if (v2)
  {
    v25 = a2;
    v26 = a1;

    v29 = v2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    if (swift_dynamicCast())
    {

      v13 = v27;
      (*(v27 + 32))(v28, v9, v5);
      v14 = sub_E6F54();
      sub_E528(&qword_12D830, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D8F0, &unk_E99B0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_E87F0;
      *(v17 + 32) = swift_allocError();
      v18 = v28;
      (*(v13 + 16))(v19, v28, v5);
      *v16 = &type metadata for SearchOrigin;
      v16[1] = v17;
      (*(*(v14 - 8) + 104))(v16, enum case for JSONError.malformedDocument(_:), v14);
      swift_willThrow();
      (*(v11 + 8))(v25, v10);
      v20 = sub_E6C34();
      (*(*(v20 - 8) + 8))(v26, v20);
      (*(v13 + 8))(v18, v5);
    }

    else
    {
      (*(v11 + 8))(v25, v10);
      v23 = sub_E6C34();
      (*(*(v23 - 8) + 8))(v26, v23);
    }
  }

  else
  {

    (*(v11 + 8))(a2, v10);
    v21 = sub_E6C34();
    (*(*(v21 - 8) + 8))(a1, v21);
    return v30;
  }
}

uint64_t sub_DB70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_DC90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v38 = a6;
  v36 = a5;
  v35 = sub_E79C4();
  v33 = *(v35 - 8);
  v11 = __chkstk_darwin(v35);
  v34 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = sub_E6C94();
  v16 = *(v15 - 1);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3(0);
  (*(v16 + 16))(v18, a2, v15);
  sub_E6F94();
  sub_E528(a4, v36, v38);
  v38 = a1;
  v20 = v37;
  sub_E6C04();
  if (v20)
  {
    v36 = v15;
    v37 = a2;

    v39 = v20;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    v21 = v35;
    if (swift_dynamicCast())
    {

      v22 = v33;
      (*(v33 + 32))(v34, v14, v21);
      v23 = sub_E6F54();
      sub_E528(&qword_12D830, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12D8F0, &unk_E99B0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_E87F0;
      *(v26 + 32) = swift_allocError();
      v27 = v34;
      (*(v22 + 16))(v28, v34, v21);
      *v25 = v19;
      v25[1] = v26;
      (*(*(v23 - 8) + 104))(v25, enum case for JSONError.malformedDocument(_:), v23);
      swift_willThrow();
      (*(v16 + 8))(v37, v36);
      v29 = sub_E6C34();
      (*(*(v29 - 8) + 8))(v38, v29);
      (*(v22 + 8))(v27, v21);
    }

    else
    {
      (*(v16 + 8))(v37, v36);
      v32 = sub_E6C34();
      (*(*(v32 - 8) + 8))(v38, v32);
    }
  }

  else
  {

    (*(v16 + 8))(a2, v15);
    v30 = sub_E6C34();
    return (*(*(v30 - 8) + 8))(v38, v30);
  }
}

uint64_t sub_E150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_E6CE4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_E294(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_E6CE4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_E3C4(uint64_t a1)
{
  sub_E480(319);
  if (v1 <= 0x3F)
  {
    sub_E4D8();
    if (v2 <= 0x3F)
    {
      sub_E6CE4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_E480(uint64_t a1)
{
  if (!qword_12D8A0)
  {
    sub_E59C4();
    v1 = sub_E7814();
    if (!v2)
    {
      atomic_store(v1, &qword_12D8A0);
    }
  }
}

void sub_E4D8()
{
  if (!qword_12D8A8)
  {
    v0 = sub_E7814();
    if (!v1)
    {
      atomic_store(v0, &qword_12D8A8);
    }
  }
}

uint64_t sub_E528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_E570()
{
  result = qword_12D900;
  if (!qword_12D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12D900);
  }

  return result;
}

uint64_t UpdateEpisodeDownloadBehaviorAction.contentIDs.getter()
{
  type metadata accessor for UpdateEpisodeDownloadBehaviorAction(0);
}

uint64_t type metadata accessor for UpdateEpisodeDownloadBehaviorAction(uint64_t a1)
{
  result = qword_12D980;
  if (!qword_12D980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UpdateEpisodeDownloadBehaviorAction.intent.getter@<X0>(void *a1@<X8>)
{
  updated = type metadata accessor for UpdateEpisodeDownloadBehaviorAction(0);
  v4 = *(v1 + *(updated + 24));
  *a1 = *(v1 + *(updated + 20));
  a1[1] = v4;
}

uint64_t UpdateEpisodeDownloadBehaviorAction.init(actionMetrics:contentIDs:newBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_E6CE4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for UpdateEpisodeDownloadBehaviorAction(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_E754@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + *(a1 + 24));
  *a2 = *(v2 + *(a1 + 20));
  a2[1] = v3;
}

uint64_t sub_E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_E6CE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_E84C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_E6CE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_E904(uint64_t a1)
{
  sub_E6CE4();
  if (v1 <= 0x3F)
  {
    sub_A77C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MTEpisodeDownloadBehavior(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_E9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[8] = AssociatedTypeWitness;
  v7[9] = *(AssociatedTypeWitness - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();

  return _swift_task_switch(sub_EB44, 0, 0);
}

uint64_t sub_EB44()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 24))(v2, v1);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_EC48;
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[5];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v7, v8, v11, v10, v9, v4, v5);
}

uint64_t sub_EC48()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_EEA0;
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    v6 = sub_EDD8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_EDD8()
{
  v1 = *(v0 + 16);
  v2 = enum case for ActionOutcome.performed(_:);
  v3 = sub_E6CF4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_EEA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_EF10(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_E6CF4();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_F070;

  return v12(v9);
}

uint64_t sub_F070()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_F214;
  }

  else
  {
    v2 = sub_F184;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F184()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_E6F34();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_F214()
{
  sub_E6F24();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v22 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  sub_E6DA4();
  sub_48FC(v23, v22);
  (*(v14 + 16))(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v16 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  sub_4524(v22, (v17 + 40));
  (*(v14 + 32))(&v17[v16], v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *&v17[(v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12CD40, &qword_E8810);

  v18 = sub_E6F44();
  v19 = sub_E7324();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_E9B20;
  v20[5] = v17;
  v20[6] = v18;

  sub_8E218(0, 0, v13, &unk_E9B38, v20);

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_F580()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_F650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80);
  v8 = *(v1 + ((*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_588C;

  return sub_E9B4(a1, (v1 + 5), v1 + v7, v8, v4, v5, v6);
}

uint64_t sub_F77C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_F7C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_588C;

  return sub_EF10(a1, v4, v5, v6, v7, v8);
}

uint64_t LibraryEntityIDAligner.init(originalIDs:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10C40(a1);

  *a2 = v3;
  return result;
}

void *LibraryEntityIDAligner.normalizing(identifiers:for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_E59C4();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v27 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v27 - v19;
  __chkstk_darwin(v18);
  v22 = &v27 - v21;
  v29 = &_swiftEmptySetSingleton;
  if (swift_conformsToProtocol2() && a2)
  {
    v28 = a1;
    sub_E6534();
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_110AC(v9, &unk_12DFA0, &qword_E9B50);
    }

    else
    {
      (*(v11 + 32))(v22, v9, v10);
      (*(v11 + 16))(v17, v22, v10);
      sub_BEC98(v20, v17);
      v23 = *(v11 + 8);
      v23(v20, v10);
      v23(v22, v10);
    }

    a1 = v28;
  }

  if (swift_conformsToProtocol2() && a2)
  {
    sub_E65C4();
    if ((*(v11 + 48))(v7, 1, v10) == 1)
    {
      sub_110AC(v7, &unk_12DFA0, &qword_E9B50);
    }

    else
    {
      (*(v11 + 32))(v14, v7, v10);
      (*(v11 + 16))(v17, v14, v10);
      sub_BEC98(v20, v17);
      v24 = *(v11 + 8);
      v24(v20, v10);
      v24(v14, v10);
    }
  }

  v25 = sub_FEC8(a1, &v29);

  return v25;
}

uint64_t sub_FCAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v29[0] = a3;
  v31 = sub_E59C4();
  __chkstk_darwin(v31);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = *a2;
  v13 = *(*a2 + 56);
  v12 = *a2 + 56;
  v11 = v13;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v29[3] = v5 + 16;
  v30 = v5;
  v29[2] = v5 + 8;

  v32 = v10;

  for (i = 0; v16; result = )
  {
    v33 = v9;
    v34 = v8;
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v31;
    v23 = v30;
    (*(v30 + 16))(v7, *(v32 + 48) + *(v30 + 72) * (v21 | (v20 << 6)), v31);
    v24 = sub_E5974();
    v26 = v25;
    (*(v23 + 8))(v7, v22);
    v35._countAndFlagsBits = v24;
    v35._object = v26;
    v8 = sub_E70B4(v35);
    v9 = v27;
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      v28 = v29[0];
      *v29[0] = v8;
      *(v28 + 8) = v9;
      return result;
    }

    v16 = *(v12 + 8 * v20);
    ++i;
    if (v16)
    {
      v33 = v9;
      v34 = v8;
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_FEC8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v18 = _swiftEmptyArrayStorage;
  sub_15D18(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  for (i = (a1 + 40); ; i += 2)
  {
    v9 = *i;
    v16[0] = *(i - 1);
    v16[1] = v9;

    sub_FCAC(v16, a2, v17);
    if (v3)
    {
      break;
    }

    v3 = 0;

    v10 = v17[0];
    v11 = v17[1];
    v18 = v5;
    v13 = v5[2];
    v12 = v5[3];
    if (v13 >= v12 >> 1)
    {
      sub_15D18((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    v5[2] = v13 + 1;
    v14 = &v5[2 * v13];
    v14[4] = v10;
    v14[5] = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t LibraryEntityIDAligner.alignIdentifiers<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = sub_E7814();
  v10 = *(v32 - 8);
  v11 = __chkstk_darwin(v32);
  v31 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = (v26 - v13);
  v27 = *v3;
  v34 = a1;
  v33[3] = a1;
  v15 = sub_E7284();

  swift_getWitnessTable();
  sub_E7184();
  v33[2] = v33[0];
  sub_E7AB4();
  sub_E7A84();
  v26[2] = v15;
  v16 = sub_E7AA4();
  v17 = (v10 + 32);
  v29 = TupleTypeMetadata2 - 8;
  v30 = v16;
  v26[0] = v6 + 8;
  v26[1] = v6 + 32;
  v18 = v28;
  while (1)
  {
    v19 = v31;
    sub_E7A94();
    (*v17)(v14, v19, v32);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v20 = *v14;
    v21 = *(TupleTypeMetadata2 + 48);
    v33[0] = v27;
    (*(v6 + 32))(v8, v14 + v21, a2);
    v22 = sub_1081C(v8, v33, a2, *(v18 + 8));
    v24 = v23;
    (*(v6 + 8))(v8, a2);
    v33[0] = v22;
    v33[1] = v24;
    sub_E7244();
    sub_107C8(v20, v34, a2);
    _swift_isClassOrObjCExistentialType();
    sub_E63F4();
  }

  return v34;
}

uint64_t LibraryEntityIDAligner.originalIdentifier(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1081C(v4, v1, v2, v3);
}

uint64_t sub_103AC(void *a1)
{
  v2 = sub_E59C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = sub_E6554();
  v28 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = sub_E6584();
  v30 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_E6574();
  if (result)
  {
    v9 = result;
    v10 = [result URIRepresentation];

    sub_E5994();
    v11 = sub_E5974();
    v13 = v12;
    result = (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = 0;
  v31 = v11;
  v32 = v13;
  v15 = _swiftEmptyArrayStorage;
LABEL_5:
  if (v14 <= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16 + 1;
  v18 = 16 * v14 + 40;
  while (1)
  {
    if (v14 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
      swift_arrayDestroy();
      v25 = sub_10C40(v15);

      return v25;
    }

    if (v17 == ++v14)
    {
      break;
    }

    v19 = v18 + 16;
    v20 = *&v26[v18];
    v18 += 16;
    if (v20)
    {
      v21 = *&v26[v19 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22FBC(0, *(v15 + 2) + 1, 1, v15);
        v15 = result;
      }

      v23 = *(v15 + 2);
      v22 = *(v15 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_22FBC((v22 > 1), v23 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 2) = v23 + 1;
      v24 = &v15[16 * v23];
      *(v24 + 4) = v21;
      *(v24 + 5) = v20;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10640(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_E65E4();
  sub_10D78();
  sub_E7854();
  v15[0] = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = 0;
  v15[1] = sub_E65A4();
  v15[2] = v4;
  v5 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = &v15[2 * v3];
  while (++v3 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_22FBC(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_22FBC((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E0A0, &qword_EC5A0);
  swift_arrayDestroy();
  v13 = sub_10C40(v5);

  return v13;
}

uint64_t sub_107C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1081C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_E6974();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[3] = a3;
  v38[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v13 = *a2;
  v37 = &_swiftEmptySetSingleton;
  sub_48FC(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA58, &qword_E9BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E150, &qword_E9BF0);
  if (swift_dynamicCast())
  {
    sub_4524(&v32, v36);
    v35[0] = v13;
    v14 = sub_103AC(v36);
    sub_3D918(v14);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_110AC(&v32, &qword_12DA60, &qword_E9BF8);
  }

  sub_48FC(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E160, &qword_E9C00);
  if (swift_dynamicCast())
  {
    sub_4524(&v32, v36);
    v35[0] = v13;
    v15 = sub_10640(v36);
    sub_3D918(v15);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_110AC(&v32, &qword_12DA68, &qword_E9C08);
  }

  v16 = v37;

  v17 = sub_422A0(v16, v13);

  v18 = sub_3DA1C(v17);
  v20 = v19;

  if (!v20)
  {
    sub_E6914();
    sub_48FC(v38, v36);
    v21 = sub_E6964();
    v22 = sub_E74B4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31[1] = a4;
      v25 = v9;
      v26 = v24;
      *&v32 = v24;
      *v23 = 136315138;
      __swift_project_boxed_opaque_existential_1(v36, v36[3]);
      sub_E7994();
      v31[0] = v8;
      v27 = v35[0];
      v28 = v35[1];
      __swift_destroy_boxed_opaque_existential_1(v36);
      v29 = sub_23E64(v27, v28, &v32);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_0, v21, v22, "Unable to find original identifier for entity, this may result in the entity being discarded: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);

      (*(v25 + 8))(v11, v31[0]);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
      __swift_destroy_boxed_opaque_existential_1(v36);
    }

    sub_E7994();
    v18 = v36[0];
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return v18;
}

uint64_t sub_10C40(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_E73C4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_BEB48(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _s18ChannelEntityQueryVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s18ChannelEntityQueryVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10D78()
{
  result = qword_12DA40;
  if (!qword_12DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DA40);
  }

  return result;
}

uint64_t sub_10DCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_E73C4();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_BEF78(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void *sub_10EA0(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_4ABC(0, a2, a3);
    sub_10FF8(a4, a2, a3);
    result = sub_E73C4();
    v15 = result;
    if (v10)
    {
      break;
    }

    v12 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      return result;
    }

LABEL_6:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v13 = sub_E79B4();
      }

      else
      {
        if (a2 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v13 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v15;
      a5(&v14, v13);

      a2 = (a2 + 1);
      if (v10 == v12)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_E7AC4();
  }

  a4 = result;
  v12 = sub_E7AC4();
  result = a4;
  if (v12)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10FF8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4ABC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_110AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1110C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = sub_E7424();
  if (!v19)
  {
    return sub_E7254();
  }

  v41 = v19;
  v45 = sub_E7A54();
  v32 = sub_E7A64();
  sub_E7A04(v41);
  result = sub_E73F4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_E7444();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_E7A44();
      result = sub_E7434();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t LibraryEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_E6014();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_11608, 0, 0);
}

uint64_t sub_11608()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v0[11] = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_E65D4();
  v6 = sub_E6004();
  (*(v1 + 8))(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DFE0, &qword_EABA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_E87F0;

  *(v7 + 32) = sub_E6284();
  v8 = objc_allocWithZone(sub_E6134());
  v9 = sub_E6114();
  v0[12] = v9;
  v10 = swift_task_alloc();
  v0[13] = v10;
  v10[2] = v5;
  v10[3] = v3;
  v10[4] = v9;
  v10[5] = v6;
  v11 = swift_task_alloc();
  v0[14] = v11;
  swift_getAssociatedTypeWitness();
  v12 = sub_E7284();
  v0[15] = v12;
  *v11 = v0;
  v11[1] = sub_11844;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x80000000000F6740, sub_16A1C, v10, v12);
}

uint64_t sub_11844()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_11CCC;
  }

  else
  {

    v2 = sub_11960;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_11960()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  *(v0 + 24) = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 48);
  WitnessTable = swift_getWitnessTable();
  *(v0 + 136) = sub_1110C(sub_16A28, v3, v1, v2, &type metadata for Never, WitnessTable, &protocol witness table for Never, v5);

  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_11AA0;

  return sub_16A48();
}

uint64_t sub_11AA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_11C58;
  }

  else
  {
    *(v4 + 160) = a1;

    v5 = sub_11BDC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_11BDC()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[20];

  return v2(v3);
}

uint64_t sub_11C58()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_11CCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_11D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_E7284();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131CF0, &unk_EA7F0);
  v9 = sub_E72C4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a4;
  *(v14 + 3) = a5;
  *(v14 + 4) = a3;
  (*(v10 + 32))(&v14[v13], v12, v9);
  sub_E6124();
}

uint64_t sub_11F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v7 = [swift_unknownObjectRetain() itemsFor:a3];
    sub_E71F4();

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    v8 = sub_E7B24();

    if (v8)
    {
      sub_E7284();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131CF0, &unk_EA7F0);
      sub_E72C4();
      sub_E72B4();
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    sub_18814();
    swift_allocError();
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_E7284();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131CF0, &unk_EA7F0);
  sub_E72C4();
  return sub_E72A4();
}

uint64_t sub_12190(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_unknownObjectRetain();
  return sub_E65B4();
}

uint64_t LibraryEntityQuery.entities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_12264, 0, 0);
}

uint64_t sub_12264()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = sub_10C40(v4);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[7] = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v6 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v3, AssociatedTypeWitness);
  v7 = sub_126A4(v6, v2, v1);
  v9 = v8;
  v11 = v10;
  v0[8] = v7;
  v0[9] = v8;
  v0[10] = v10;

  v12 = swift_task_alloc();
  v0[11] = v12;
  *v12 = v0;
  v12[1] = sub_12418;
  v13 = v0[4];
  v14 = v0[3];

  return LibraryEntityQuery.findAndPrepareEntities(for:adamIDs:uuids:)(v7, v11, v9, v14, v13);
}

uint64_t sub_12418(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_12618;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_1255C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1255C()
{
  v1 = v0[13];
  v2 = v0[7];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = LibraryEntityIDAligner.alignIdentifiers<A>(for:)(v1, v2, *(AssociatedConformanceWitness + 8));

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_12618()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_126A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  sub_2727C(sub_1858C, v15, a1);
  if (!v4)
  {
    v5 = sub_E7224();
    v3 = v6;

    sub_10C40(v7);

    v8 = *(v5 + 16);
    if (v8)
    {
      v18 = _swiftEmptyArrayStorage;
      sub_15D38(0, v8, 0);
      v9 = v18;
      v10 = v18[2];
      v11 = 32;
      do
      {
        v12 = *(v5 + v11);
        v18 = v9;
        v13 = v9[3];
        if (v10 >= v13 >> 1)
        {
          sub_15D38((v13 > 1), v10 + 1, 1);
          v9 = v18;
        }

        v9[2] = v10 + 1;
        v9[v10 + 4] = v12;
        v11 += 8;
        ++v10;
        --v8;
      }

      while (v8);
    }

    else
    {

      v9 = _swiftEmptyArrayStorage;
    }

    sub_10DCC(v9);
  }

  return v3;
}

uint64_t LibraryEntityQuery.findAndPrepareEntities(for:adamIDs:uuids:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_12914;

  return sub_12AFC(a1, a3, a2, a4, a5);
}

uint64_t sub_12914(uint64_t a1)
{
  v3 = *v2;
  v3[3] = a1;
  v3[4] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_12A48, 0, 0);
  }
}

uint64_t sub_12A48()
{
  v1 = v0[4];
  sub_E7384();
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[1];
    v5 = v0[3];

    return v4(v5);
  }
}

uint64_t sub_12AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = sub_E6974();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return _swift_task_switch(sub_12BE8, 0, 0);
}

uint64_t sub_12BE8()
{
  v0[3] = v0[14];
  v0[2] = v0[13];

  v1 = sub_169A4();
  v0[24] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_12D4C;
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];

  return sub_13C04(v8, v7, v5, v2, v6, v4);
}

uint64_t sub_12D4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_13A44;
  }

  else
  {

    v4 = sub_12E68;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_12E68()
{
  v65 = v0;
  v1 = v0[27];
  v3 = v0[15];
  v2 = v0[16];
  v60 = v0[26];
  v62 = v0[14];
  v0[4] = v60;
  v4 = swift_task_alloc();
  *v4 = v3;
  v4[1] = v2;
  KeyPath = swift_getKeyPath();

  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = KeyPath;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[28] = AssociatedTypeWitness;
  v59 = AssociatedTypeWitness;
  v8 = sub_E7284();
  v0[29] = v8;
  v0[30] = swift_getWitnessTable();
  v9 = sub_E7174();

  sub_3DA98(v9);

  v0[5] = v60;
  v10 = swift_task_alloc();
  *v10 = v3;
  v10[1] = v2;
  v11 = swift_getKeyPath();

  v12 = swift_task_alloc();
  v12[2] = v3;
  v12[3] = v2;
  v12[4] = v11;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1110C(sub_16CD8, v12, v8, &type metadata for UInt64, &type metadata for Never, WitnessTable, &protocol witness table for Never, v14);

  if (*(v62 + 16))
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = 32;
      do
      {
        sub_42AF4(*(v15 + v17));
        v17 += 8;
        --v16;
      }

      while (v16);
    }
  }

  v18 = v0[2];
  v0[31] = v18;
  v0[6] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_16D14(&qword_12DB70, &unk_12DF70, &qword_E9E80);
  if (sub_E7404() & 1) != 0 || (v0[7] = v0[3], __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88), sub_16D14(&qword_12DAE8, &unk_12DF80, &qword_E9E88), (sub_E7404()))
  {
    sub_E7384();
    if (v1)
    {

      v19 = v0[1];

      return v19();
    }

    else
    {
      sub_E6914();
      v21 = sub_E6964();
      v22 = sub_E7494();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v21, v22, "Some entities are lingering, checking remote source for episode content.", v23, 2u);
      }

      v24 = v0[23];
      v25 = v0[18];
      v26 = v0[19];

      v27 = *(v26 + 8);
      v0[32] = v27;
      v27(v24, v25);
      v0[8] = v18;
      if (sub_E7404())
      {
        sub_E6914();
        v28 = sub_E6964();
        v29 = sub_E74B4();
        v30 = os_log_type_enabled(v28, v29);
        v63 = v0[22];
        v31 = v0[18];
        if (v30)
        {
          v32 = swift_slowAlloc();
          v64[0] = swift_slowAlloc();
          *v32 = 136315394;
          v0[11] = v59;
          swift_getMetatypeMetadata();
          v33 = sub_E7084();
          v61 = v31;
          v35 = sub_23E64(v33, v34, v64);

          *(v32 + 4) = v35;
          *(v32 + 12) = 2080;

          v36 = sub_E73B4();
          v38 = v37;

          v39 = sub_23E64(v36, v38, v64);

          *(v32 + 14) = v39;
          _os_log_impl(&dword_0, v28, v29, "Failed to find requested local entities (%s) with identifiers: %s", v32, 0x16u);
          swift_arrayDestroy();

          v41 = v61;
          v40 = v63;
        }

        else
        {

          v40 = v63;
          v41 = v31;
        }

        v27(v40, v41);
      }

      v51 = v0[16];
      v52 = v0[15];
      v0[33] = v0[3];

      v54 = sub_273C0(v53);
      v0[34] = v54;
      v0[35] = 0;

      v55 = (*(v51 + 40))(v52, v51);
      v0[36] = v55;
      v56 = swift_task_alloc();
      v0[37] = v56;
      *v56 = v0;
      v56[1] = sub_135F0;
      v57 = v0[15];
      v58 = v0[16];

      return sub_17B58(v54, v55, v57, v58);
    }
  }

  else
  {
    sub_E6914();
    v42 = sub_E6964();
    v43 = sub_E7494();
    v44 = os_log_type_enabled(v42, v43);
    v46 = v0[19];
    v45 = v0[20];
    v47 = v0[18];
    if (v44)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v42, v43, "Found episodes using local-only identifiers", v48, 2u);
    }

    (*(v46 + 8))(v45, v47);
    v49 = v0[26];

    v50 = v0[1];

    return v50(v49);
  }
}

uint64_t sub_135F0(uint64_t a1)
{
  *(*v1 + 304) = a1;

  return _swift_task_switch(sub_1372C, 0, 0);
}

uint64_t sub_1372C()
{
  v22 = v0;
  *(v0 + 72) = *(v0 + 304);
  v1 = *(v0 + 264);
  *(swift_task_alloc() + 16) = *(v0 + 120);
  v2 = sub_E7174();

  if (*(v1 + 16))
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 32;
      do
      {
        sub_42AF4(*(v2 + v4));
        v4 += 8;
        --v3;
      }

      while (v3);
    }
  }

  *(v0 + 80) = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88);
  sub_16D14(&qword_12DAE8, &unk_12DF80, &qword_E9E88);
  if (sub_E7404())
  {
    sub_E6914();
    v5 = sub_E6964();
    v6 = sub_E74B4();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 256);
    v20 = *(v0 + 168);
    v9 = *(v0 + 144);
    if (v7)
    {
      v19 = *(v0 + 256);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;

      v12 = sub_E73B4();
      v14 = v13;

      v15 = sub_23E64(v12, v14, &v21);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_0, v5, v6, "Failed to find requested remote episodes with identifiers: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);

      v19(v20, v9);
    }

    else
    {

      v8(v20, v9);
    }
  }

  v16 = sub_E7234();

  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_13A44()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_13AE8(void *a4@<X4>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_E6544();
  v8 = sub_169A4();
  if (v5)
  {

    *a4 = v5;
  }

  else
  {
    v9 = v8;
    v10 = sub_E6834();
    v12 = v11;
    v14 = v13;

    *a5 = v10;
    *(a5 + 8) = v12;
    *(a5 + 16) = v14;
  }
}

uint64_t sub_13C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_E7724();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_13CD0, 0, 0);
}

uint64_t sub_13CD0()
{
  v1 = v0[8];
  v2 = v0[7];
  v20 = v0[6];
  v21 = v0[12];
  v18 = v0[5];
  v19 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAD8, &unk_E9E00);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_E6544();
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_188E0(v3, v5, AssociatedTypeWitness);
  v0[13] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_E9C10;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v8 + 32) = sub_E7544();
  *(v8 + 40) = (*(v1 + 48))(v18, v2, v1);
  *(v8 + 48) = (*(v1 + 56))(v19, v2, v1);
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v10 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v7 setPredicate:v10];
  v11 = swift_allocObject();
  v0[14] = v11;
  v11[2] = v2;
  v11[3] = v1;
  v11[4] = v20;
  v11[5] = v7;
  v12 = sub_E7284();
  sub_1886C(v21);
  v13 = v20;
  v14 = v7;
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_13FE0;
  v16 = v0[12];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v16, sub_16C78, v11, v12);
}

uint64_t sub_13FE0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_141E8;
  }

  else
  {
    v5 = sub_14174;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_14174()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_141E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_14254@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_E6554();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_142E4@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_E65E4();
  *a3 = result;
  return result;
}

uint64_t sub_14374@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_E65E4();
  *a3 = result;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_1441C@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_E7734();
  if (!v4)
  {
    v14[9] = result;
    v14[7] = result;
    v9 = swift_checkMetadataState();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = __chkstk_darwin(v9);
    v10 = sub_E7284();
    WitnessTable = swift_getWitnessTable();
    v13 = sub_1110C(sub_16C98, v14, v10, v9, &type metadata for Never, WitnessTable, &protocol witness table for Never, v12);

    *a4 = v13;
  }

  return result;
}

uint64_t sub_145C4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = v4;
  return sub_E6564();
}

uint64_t sub_14670(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_unknownObjectRetain();
  return sub_E65B4();
}

uint64_t LibraryEntityQuery.fetchEntities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_E7324();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_147E4, 0, 0);
}

uint64_t sub_147E4()
{
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v1 = sub_E7774();
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_E7374();
  v5 = sub_E7764();
  v0[9] = v5;
  (*(v3 + 8))(v2, v4);

  v6 = sub_E7224();
  v8 = v7;
  v10 = v9;
  v0[10] = v6;
  v0[11] = v7;
  v0[12] = v9;

  v11 = sub_10C40(v10);
  v0[13] = v11;

  v12 = *(v6 + 16);
  if (v12)
  {
    sub_15D38(0, v12, 0);
    v13 = (v6 + 32);
    v14 = _swiftEmptyArrayStorage[2];
    do
    {
      v16 = *v13++;
      v15 = v16;
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_15D38((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      _swiftEmptyArrayStorage[v14++ + 4] = v15;
      --v12;
    }

    while (v12);
  }

  v18 = sub_10DCC(_swiftEmptyArrayStorage);
  v0[14] = v18;

  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_14A44;
  v20 = v0[4];
  v21 = v0[3];

  return sub_13C04(v8, v11, v18, v5, v21, v20);
}

uint64_t sub_14A44(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_14E2C, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[18] = v5;
    *v5 = v4;
    v5[1] = sub_14C04;

    return sub_16A48();
  }
}

uint64_t sub_14C04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_14DB8;
  }

  else
  {
    *(v4 + 160) = a1;

    v5 = sub_14D40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_14D40()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[20];

  return v2(v3);
}

uint64_t sub_14DB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_14E2C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t LibraryEntityQuery.artworkData(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_E6974();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_E61A4();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v4[18] = swift_task_alloc();
  v7 = sub_E5FD4();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_1508C, 0, 0);
}

uint64_t sub_1508C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_16A60(v0[7], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_110AC(v0[18], &unk_12DB10, &qword_EAC60);

    v4 = v0[1];

    return v4(0, 0xF000000000000000);
  }

  else
  {
    v6 = v0[9];
    v7 = v0[8];
    sub_16AD0(v0[18], v0[21]);
    v0[22] = (*(v6 + 40))(v7, v6);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_15248;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v8, v8);
  }
}

uint64_t sub_15248()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_15B74;
  }

  else
  {
    v2 = sub_15378;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_15378()
{
  sub_E5FA4();
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_15444;
  v4 = v0[17];

  return ImageProvider.data(for:)(v4, v2, v1);
}

uint64_t sub_15444(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {

    v7 = sub_15654;
  }

  else
  {
    *(v6 + 208) = a2;
    *(v6 + 216) = a1;
    v7 = sub_1557C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1557C()
{
  v1 = v0[21];
  (*(v0[15] + 8))(v0[17], v0[14]);
  sub_16B34(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[26];
  v3 = v0[27];

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_15654()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  sub_E6174();
  v4 = v3;
  v6 = v5;
  v7 = swift_task_alloc();
  v0[28] = v7;
  *v7 = v0;
  v7[1] = sub_1572C;
  v8.n128_u64[0] = v4;
  v9.n128_u64[0] = v6;

  return ImageProvider.placeholderData(with:)(v1, v2, v8, v9);
}

uint64_t sub_1572C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {

    v7 = sub_1593C;
  }

  else
  {
    *(v6 + 232) = a2;
    *(v6 + 240) = a1;
    v7 = sub_15864;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_15864()
{
  v1 = v0[21];
  (*(v0[15] + 8))(v0[17], v0[14]);
  sub_16B34(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[29];
  v3 = v0[30];

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_1593C(uint64_t a1)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[14];
  v5 = v1[15];
  sub_E6914();
  (*(v5 + 16))(v2, v3, v4);
  v6 = sub_E6964();
  v7 = sub_E74B4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v1[15];
  v9 = v1[16];
  v11 = v1[14];
  if (v8)
  {
    v21 = v1[14];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = sub_E6184();
    v15 = *(v10 + 8);
    v15(v9, v21);
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_0, v6, v7, "Episode entity was unable to prepare artwork or placeholder for %@.", v12, 0xCu);
    sub_110AC(v13, &unk_12DB20, &unk_F0760);
  }

  else
  {

    v15 = *(v10 + 8);
    v15(v9, v11);
  }

  v16 = v1[21];
  v17 = v1[17];
  v18 = v1[14];
  (*(v1[12] + 8))(v1[13], v1[11]);
  v15(v17, v18);
  sub_16B34(v16);
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);

  v19 = v1[1];

  return v19(0, 0xF000000000000000);
}

uint64_t sub_15B74()
{
  sub_16B34(*(v0 + 168));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_15C20(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_15C6C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_15CA4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

char *sub_15D18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_15EE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_15D38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_15FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_15D58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_160F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_15D78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_164A4(a1, a2, a3, *v3, &qword_12DA90, &qword_E9DA8, type metadata accessor for ChannelEntity);
  *v3 = result;
  return result;
}

char *sub_15DBC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_16214(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_15DDC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_164A4(a1, a2, a3, *v3, &qword_12DAB8, &qword_E9DD8, type metadata accessor for StationEntity);
  *v3 = result;
  return result;
}

void *sub_15E20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_16348(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_15E40(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_164A4(a1, a2, a3, *v3, &qword_12DA88, &qword_E9DA0, type metadata accessor for EpisodeEntity);
  *v3 = result;
  return result;
}

void *sub_15E84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_164A4(a1, a2, a3, *v3, &qword_12DA80, &qword_E9D98, type metadata accessor for ShowEntity);
  *v3 = result;
  return result;
}

void *sub_15EC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_16680(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_15EE8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_15FF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAE0, &qword_E9E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_160F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAB0, &qword_E9DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_16214(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAD0, &unk_E9DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_16348(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAC0, &unk_E9DE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAC8, &qword_EA550);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_164A4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_16680(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAA8, &unk_E9DC0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_16870(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA98, &unk_E9DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAA0, &unk_F59F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_169A4()
{
  v1 = sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v2 = sub_E7774();
  if (!v0)
  {
    v3 = v2;
    v1 = sub_E7754();
  }

  return v1;
}

uint64_t sub_16A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_16AD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_E5FD4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_16B34(uint64_t a1)
{
  v2 = sub_E5FD4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_16B94()
{
  result = qword_12DA78;
  if (!qword_12DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DA78);
  }

  return result;
}

uint64_t sub_16C38()
{

  return _swift_deallocObject(v0, 48, 7);
}

__n128 sub_16CCC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_16D14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_16D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = swift_getAssociatedTypeWitness();
  v4[13] = swift_getAssociatedConformanceWitness();
  v4[14] = swift_getAssociatedTypeWitness();
  v5 = sub_E6324();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8);
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8);
  v4[23] = swift_task_alloc();
  v6 = sub_E5FE4();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = sub_E6084();
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_170B4, 0, 0);
}

uint64_t sub_170B4()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  (*(v0[25] + 104))();
  v0[30] = swift_checkMetadataState();
  sub_E65D4();
  v7 = sub_E6014();
  (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
  v8 = sub_E60A4();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = sub_E6034();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = sub_E6024();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = sub_E6094();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = sub_E59C4();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);

  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF2D0(_swiftEmptyArrayStorage);
  sub_AF4B8(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF7A4(_swiftEmptyArrayStorage);
  sub_AF98C(_swiftEmptyArrayStorage);
  sub_AFB74(_swiftEmptyArrayStorage);
  sub_AFD5C(_swiftEmptyArrayStorage);
  sub_E6074();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFD0, &unk_E9ED0);
  v14 = swift_task_alloc();
  v0[31] = v14;
  *v14 = v0;
  v14[1] = sub_17490;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v13, v13);
}

uint64_t sub_17490()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_17970;
  }

  else
  {
    v2 = sub_175A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_175A4()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_17674;
  v2 = v0[29];
  v3 = v0[17];

  return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v3, v2);
}

uint64_t sub_17674()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_17A60;
  }

  else
  {
    v2 = sub_17788;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_17788()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v15 = *(v0 + 216);
  v16 = *(v0 + 232);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v14 = *(v0 + 80);
  v6 = sub_E6314();
  (*(v4 + 8))(v3, v5);
  *(v0 + 56) = v6;
  v7 = swift_task_alloc();
  *(v7 + 16) = v14;
  *(v7 + 32) = v1;
  v8 = sub_E7284();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1110C(sub_18568, v7, v8, v1, &type metadata for Never, WitnessTable, &protocol witness table for Never, v10);

  (*(v2 + 8))(v16, v15);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_17970()
{
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_17A60()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_17B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_E68B4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = sub_E6874();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = sub_E68A4();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_17D28, 0, 0);
}

uint64_t sub_17D28()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  sub_E6884();
  sub_E6884();
  sub_E6894();
  sub_E6844();
  v4 = *(v3 + 8);
  v0[22] = v4;
  v0[23] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = sub_E6894();
  v6 = sub_E7674();
  if (sub_E77F4())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v5, v6, v8, "LibraryAppIntentMediaAPIFetch", "", v7, 2u);
  }

  v9 = v0[21];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v13 = v0[10];
  v14 = v0[11];

  (*(v14 + 16))(v12, v11, v13);
  sub_E68F4();
  swift_allocObject();
  v0[24] = sub_E68E4();
  v15 = *(v14 + 8);
  v0[25] = v15;
  v0[26] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v11, v13);
  v4(v9, v10);
  v16 = swift_task_alloc();
  v0[27] = v16;
  *v16 = v0;
  v16[1] = sub_17F40;
  v17 = v0[4];
  v18 = v0[5];
  v20 = v0[2];
  v19 = v0[3];

  return sub_16D68(v20, v19, v17, v18);
}

uint64_t sub_17F40(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_182D4;
  }

  else
  {
    v4 = sub_18054;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_18054(uint64_t a1)
{
  sub_E6884();
  v2 = sub_E6894();
  sub_E68D4();
  v3 = sub_E7664();
  if (sub_E77F4())
  {
    v4 = v1[9];
    v5 = v1[6];
    v6 = v1[7];

    sub_E6904();

    if ((*(v6 + 88))(v4, v5) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[7] + 8))(v1[9], v1[6]);
      v7 = "SUCCESS";
    }

    v22 = v1[25];
    v23 = v1[22];
    v14 = v1[19];
    v15 = v1[16];
    v16 = v1[13];
    v17 = v1[10];
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v2, v3, v19, "LibraryAppIntentMediaAPIFetch", v7, v18, 2u);

    v22(v16, v17);
    v23(v14, v15);
  }

  else
  {
    v8 = v1[25];
    v9 = v1[22];
    v10 = v1[19];
    v11 = v1[16];
    v12 = v1[13];
    v13 = v1[10];

    v8(v12, v13);
    v9(v10, v11);
  }

  v24 = v1[28];

  v20 = v1[1];

  return v20(v24);
}

uint64_t sub_182D4(uint64_t a1)
{
  sub_E6884();
  v2 = sub_E6894();
  sub_E68D4();
  v3 = sub_E7664();
  if (sub_E77F4())
  {
    v5 = v1[7];
    v4 = v1[8];
    v6 = v1[6];

    sub_E6904();

    if ((*(v5 + 88))(v4, v6) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[7] + 8))(v1[8], v1[6]);
      v7 = "FAILURE";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v2, v3, v9, "LibraryAppIntentMediaAPIFetch", v7, v8, 2u);
  }

  v10 = v1[25];
  v11 = v1[22];
  v12 = v1[18];
  v13 = v1[16];
  v14 = v1[12];
  v15 = v1[10];

  v10(v14, v15);
  v11(v12, v13);
  swift_getAssociatedTypeWitness();
  v18 = sub_E7254();

  v16 = v1[1];

  return v16(v18);
}

uint64_t sub_185B0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_E7284();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131CF0, &unk_EA7F0);
  v1 = sub_E72C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_186DC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v5 = v2[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_E7284();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_131CF0, &unk_EA7F0);
  v7 = *(sub_E72C4() - 8);
  v8 = v2[4];
  v9 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return sub_11F30(a1, a2, v8, v9, v6, v5);
}

unint64_t sub_18814()
{
  result = qword_12DAF0;
  if (!qword_12DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DAF0);
  }

  return result;
}

uint64_t sub_1886C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v3 = sub_E7724();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t LocalLibraryEntityQuery.entities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_E7324();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_189F4, 0, 0);
}

uint64_t sub_189F4()
{
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);
  v1 = sub_E7774();
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_E7374();
  v5 = sub_E7764();
  v0[9] = v5;
  (*(v3 + 8))(v2, v4);

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_18B64;
  v7 = v0[4];
  v9 = v0[2];
  v8 = v0[3];

  return LocalLibraryEntityQuery.entities(for:in:)(v9, v5, v8, v7);
}

uint64_t sub_18B64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_18CFC;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_18C8C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_18C8C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_18CFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LocalLibraryEntityQuery.entities(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_18D90, 0, 0);
}

uint64_t sub_18D90()
{
  v1 = v0[2];

  v0[7] = sub_10C40(v2);

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v4 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v1, AssociatedTypeWitness);
  v0[9] = v4;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_18ED0;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];

  return sub_1BCB4(v4, v8, v6, v7);
}

uint64_t sub_18ED0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v5[11] = a1;
  v5[12] = a2;

  v7 = swift_task_alloc();
  v5[13] = v7;
  *v7 = v6;
  v7[1] = sub_1908C;
  v8 = v5[5];
  v9 = v5[4];
  v10 = v5[3];

  return sub_192F8(a1, a2, v10, v9, v8);
}

uint64_t sub_1908C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_19280;
  }

  else
  {

    *(v4 + 120) = a1;
    v5 = sub_191C4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_191C4()
{
  v1 = v0[15];
  v2 = v0[8];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = LibraryEntityIDAligner.alignIdentifiers<A>(for:)(v1, v2, *(AssociatedConformanceWitness + 8));

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_19280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = sub_E6974();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_193C0, 0, 0);
}

uint64_t sub_193C0()
{
  v0[2] = v0[7];

  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_1946C;
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  return sub_19A08(v6, v5, v3, v4, v2);
}

uint64_t sub_1946C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_198B8;
  }

  else
  {
    v4 = sub_19580;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_19580()
{
  v27 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v0[3] = v0[16];
  v3 = swift_task_alloc();
  *v3 = v2;
  v3[1] = v1;
  KeyPath = swift_getKeyPath();

  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = KeyPath;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_E7284();
  swift_getWitnessTable();
  v7 = sub_E7174();

  sub_3DA98(v7);

  v0[4] = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_1BFDC();
  if (sub_E7404())
  {
    sub_E6914();
    v8 = sub_E6964();
    v9 = sub_E74B4();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[12];
    if (v10)
    {
      v25 = v0[14];
      v14 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v14 = 136315394;
      v0[5] = AssociatedTypeWitness;
      swift_getMetatypeMetadata();
      v15 = sub_E7084();
      v17 = sub_23E64(v15, v16, v26);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;

      v18 = sub_E73B4();
      v20 = v19;

      v21 = sub_23E64(v18, v20, v26);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_0, v8, v9, "Failed to find requested local entities (%s) with identifiers: %s", v14, 0x16u);
      swift_arrayDestroy();

      (*(v11 + 8))(v25, v13);
    }

    else
    {

      (*(v11 + 8))(v12, v13);
    }
  }

  v22 = v0[1];
  v23 = v0[16];

  return v22(v23);
}

uint64_t sub_198B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19928@<X0>(uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_E6544();
  v6 = sub_E6834();
  v8 = v7;
  v10 = v9;

  *a5 = v6;
  *(a5 + 8) = v8;
  *(a5 + 16) = v10;
  return result;
}

uint64_t sub_19A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_E7724();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_19AD0, 0, 0);
}

uint64_t sub_19AD0()
{
  v1 = v0[7];
  v2 = v0[6];
  v21 = v0[5];
  v22 = v0[11];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAD8, &unk_E9E00);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_E6544();
  v6 = v5;
  swift_getAssociatedTypeWitness();
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_1BC5C(v4, v6);
  v0[12] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_E9EE0;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v9 + 32) = sub_E7544();
  *(v9 + 40) = (*(v1 + 40))(v3, v2, v1);
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v11 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v8 setPredicate:v11];
  v12 = swift_allocObject();
  v0[13] = v12;
  v12[2] = v2;
  v12[3] = v1;
  v12[4] = v21;
  v12[5] = v8;
  v13 = sub_E7284();
  v14 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v15 = sub_E7724();
  (*(*(v15 - 8) + 104))(v22, v14, v15);
  v16 = v21;
  v17 = v8;
  v18 = swift_task_alloc();
  v0[14] = v18;
  *v18 = v0;
  v18[1] = sub_19E0C;
  v19 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v19, sub_1BF7C, v12, v13);
}

uint64_t sub_19E0C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1A014;
  }

  else
  {
    v5 = sub_19FA0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_19FA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A014()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A080@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_E6554();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1A110@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  result = sub_E7734();
  if (!v4)
  {
    v14[9] = result;
    v14[7] = result;
    v9 = swift_checkMetadataState();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = __chkstk_darwin(v9);
    v10 = sub_E7284();
    WitnessTable = swift_getWitnessTable();
    v13 = sub_1110C(sub_1BF9C, v14, v10, v9, &type metadata for Never, WitnessTable, &protocol witness table for Never, v12);

    *a4 = v13;
  }

  return result;
}

uint64_t sub_1A2B8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = v4;
  return sub_E6564();
}

uint64_t LocalLibraryEntityQuery.fetchEntities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_E7324();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1A428, 0, 0);
}

uint64_t sub_1A428()
{
  v0[10] = (*(v0[5] + 32))(v0[4]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1A504;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1A504()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1A99C;
  }

  else
  {

    v2 = sub_1A620;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1A620()
{
  v1 = v0[12];
  swift_getObjectType();
  sub_6C94();
  v2 = sub_E7764();
  v0[13] = v2;
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  if (v1)
  {
    (*(v4 + 8))(v3, v5);
    swift_unknownObjectRelease();

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    swift_unknownObjectRelease();
    v8 = sub_E7224();
    v10 = v9;
    v12 = v11;
    v0[14] = v8;
    v0[15] = v9;
    v0[16] = v11;

    v13 = sub_10C40(v12);
    v0[17] = v13;

    v14 = swift_task_alloc();
    v0[18] = v14;
    *v14 = v0;
    v14[1] = sub_1A7D4;
    v15 = v0[5];
    v16 = v0[4];

    return sub_19A08(v10, v13, v2, v16, v15);
  }
}

uint64_t sub_1A7D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_1AA08;
  }

  else
  {

    *(v4 + 160) = a1;
    v5 = sub_1A928;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1A928()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 160);

  return v1(v2);
}

uint64_t sub_1A99C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AA08()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t LocalLibraryEntityQuery.artworkData(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_E6974();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_E61A4();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB10, &qword_EAC60);
  v4[18] = swift_task_alloc();
  v7 = sub_E5FD4();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_1AC60, 0, 0);
}

uint64_t sub_1AC60()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_16A60(v0[7], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_110AC(v0[18], &unk_12DB10, &qword_EAC60);

    v4 = v0[1];

    return v4(0, 0xF000000000000000);
  }

  else
  {
    v6 = v0[9];
    v7 = v0[8];
    sub_16AD0(v0[18], v0[21]);
    v0[22] = (*(v6 + 32))(v7, v6);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_15248;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v8, v8);
  }
}

uint64_t LocalLibraryEntityQuery.search(for:property:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = sub_E7724();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = sub_E7324();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_1AF44, 0, 0);
}

uint64_t sub_1AF44()
{
  v0[17] = (*(v0[9] + 32))(v0[8]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_1B020;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1B020()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1B7BC;
  }

  else
  {

    v2 = sub_1B13C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1B13C()
{
  v1 = v0[19];
  swift_getObjectType();
  sub_6C94();
  v2 = sub_E7764();
  v0[20] = v2;
  if (v1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    swift_unknownObjectRelease();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    v31 = v0[9];
    v32 = v0[13];
    v6 = v0[6];
    v28 = v0[7];
    v7 = v0[5];
    v29 = v0[4];
    v30 = v0[8];
    (*(v0[15] + 8))(v0[16], v0[14]);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAD8, &unk_E9E00);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v8 = sub_E6544();
    v10 = v9;
    swift_getAssociatedTypeWitness();
    v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v12 = sub_1BC5C(v8, v10);
    v0[21] = v12;
    sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12CDF0, qword_E9F60);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_E9EF0;
    *(v13 + 56) = &type metadata for String;
    v14 = sub_1BE80();
    *(v13 + 32) = v6;
    *(v13 + 40) = v28;
    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v14;
    *(v13 + 64) = v14;
    *(v13 + 72) = v29;
    *(v13 + 80) = v7;

    v15 = sub_E7454();
    v0[22] = v15;
    [v12 setPredicate:v15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_E9F00;
    v17 = objc_allocWithZone(NSSortDescriptor);
    v18 = sub_E7024();
    v19 = [v17 initWithKey:v18 ascending:1];

    *(v16 + 32) = v19;
    sub_4ABC(0, &unk_12DB50, NSSortDescriptor_ptr);
    isa = sub_E71E4().super.isa;

    [v12 setSortDescriptors:isa];

    v21 = swift_allocObject();
    v0[23] = v21;
    v21[2] = v30;
    v21[3] = v31;
    v21[4] = v5;
    v21[5] = v12;
    v22 = sub_E7284();
    v23 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
    v24 = sub_E7724();
    (*(*(v24 - 8) + 104))(v32, v23, v24);
    v5;
    v25 = v12;
    v26 = swift_task_alloc();
    v0[24] = v26;
    *v26 = v0;
    v26[1] = sub_1B5CC;
    v27 = v0[13];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 3, v27, sub_1BF14, v21, v22);
  }
}

uint64_t sub_1B5CC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    return _swift_task_switch(sub_1B724, 0, 0);
  }
}

uint64_t sub_1B724()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  v3 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1B7BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B834@<X0>(void *a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = sub_E6974();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v11 = sub_E7734();
  if (v4)
  {
    sub_E6914();
    swift_errorRetain();
    v12 = sub_E6964();
    v13 = sub_E74B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v14 = 136315138;
      v28 = v4;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
      v15 = sub_E7084();
      v17 = a4;
      v18 = sub_23E64(v15, v16, &v29);

      *(v14 + 4) = v18;
      a4 = v17;
      _os_log_impl(&dword_0, v12, v13, "Unable to search for podcasts: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    (*(v26 + 8))(v10, v27);
    swift_checkMetadataState();
    v19 = sub_E7254();
  }

  else
  {
    v27 = &v25;
    v29 = v11;
    __chkstk_darwin(v11);
    *(&v25 - 2) = a2;
    *(&v25 - 1) = a3;
    v21 = sub_E7284();
    v22 = swift_checkMetadataState();
    WitnessTable = swift_getWitnessTable();
    v19 = sub_1110C(sub_1BF5C, (&v25 - 4), v21, v22, &type metadata for Never, WitnessTable, &protocol witness table for Never, v24);
  }

  *a4 = v19;
  return result;
}

uint64_t sub_1BBB0(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = v3;
  return sub_E6564();
}

id sub_1BC5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_E7024();

  v4 = [v2 initWithEntityName:v3];

  return v4;
}

uint64_t sub_1BCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1BCD8, 0, 0);
}

uint64_t sub_1BCD8()
{
  v21 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_15D58(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      v19 = *(v3 - 1);
      v20 = v4;

      sub_19928(&v17);

      v5 = v17;
      v6 = v18;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        v16 = v17;
        sub_15D58((v7 > 1), v8 + 1, 1);
        v5 = v16;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[3 * v8];
      *(v9 + 2) = v5;
      *(v9 + 48) = v6;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  sub_E7224();
  v11 = v10;

  v13 = sub_10C40(v12);
  swift_bridgeObjectRelease_n();

  v14 = *(v0 + 8);

  return v14(v11, v13);
}

unint64_t sub_1BE80()
{
  result = qword_12DB40;
  if (!qword_12DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DB40);
  }

  return result;
}

uint64_t sub_1BED4()
{

  return _swift_deallocObject(v0, 48, 7);
}

__n128 sub_1BFD0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_1BFDC()
{
  result = qword_12DB70;
  if (!qword_12DB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_12DF70, &qword_E9E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DB70);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15PodcastsActions10QueryErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C074(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C0BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1C100(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void *sub_1C128(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  sub_15D18(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v3 = a1 + 56;
  result = sub_E7884();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v27 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v28 = *(v6 + 36);
    v11 = v6;
    sub_E6814();
    sub_10D78();
    result = sub_E7854();
    v13 = v2;
    v29 = v2;
    v14 = v2[2];
    v15 = v13[3];
    if (v14 >= v15 >> 1)
    {
      v24 = v12;
      v25 = result;
      sub_15D18((v15 > 1), v14 + 1, 1);
      v12 = v24;
      result = v25;
      v13 = v29;
    }

    v13[2] = v14 + 1;
    v16 = &v13[2 * v14];
    v16[4] = result;
    v16[5] = v12;
    v8 = 1 << *(v11 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v17 = *(v3 + 8 * v10);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v11;
    v2 = v13;
    if (v28 != *(v11 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v27;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      v9 = v27;
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1E32C(v5, v28, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1E32C(v5, v28, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t PlayPreviousChapterAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5214();
  *a1 = result;
  return result;
}

unint64_t sub_1C420()
{
  result = qword_12DB88;
  if (!qword_12DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DB88);
  }

  return result;
}

uint64_t sub_1C4A8(uint64_t *a1, uint64_t *a2)
{

  sub_E51E4();
}

uint64_t RemoveEpisodesDownloadAppIntent.objectGraph.setter(uint64_t a1)
{

  sub_E51E4();
}

uint64_t (*ChannelEntity.ChannelEntityQuery.objectGraph.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_1C5B0;
}

void sub_1C5B0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id ChannelEntity.ChannelEntityQuery.predicate(forAdamIDs:)(uint64_t a1)
{
  v1 = sub_1C128(a1);
  v2 = objc_opt_self();
  sub_10C40(v1);

  isa = sub_E73A4().super.isa;

  v4 = [v2 predicateForChannelStoreIds:isa];

  return v4;
}

id ChannelEntity.ChannelEntityQuery.predicate(forUuids:)()
{
  v0 = [objc_opt_self() falsePredicate];

  return v0;
}

uint64_t ChannelEntity.ChannelEntityQuery.suggestedEntities()()
{
  v2 = sub_E7724();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_E7324();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v0;
  v1[11] = v4;
  v1[12] = v5;

  return _swift_task_switch(sub_1C824, 0, 0);
}

uint64_t sub_1C824()
{
  sub_E51D4();
  v0[13] = v0[3];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1C8F0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1C8F0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D024;
  }

  else
  {

    v2 = sub_1CA0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1CA0C()
{
  v1 = v0[15];
  swift_getObjectType();
  sub_6C94();
  v2 = sub_E7764();
  v0[16] = v2;
  if (v1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    swift_unknownObjectRelease();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = v0[8];
    v7 = v0[6];
    v8 = v0[7];
    (*(v0[10] + 8))(v0[11], v0[9]);
    swift_unknownObjectRelease();
    v9 = swift_allocObject();
    v0[17] = v9;
    *(v9 + 16) = v5;
    (*(v8 + 104))(v6, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
    v5;
    v10 = swift_task_alloc();
    v0[18] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E050, &qword_EA0E0);
    v0[19] = v11;
    *v10 = v0;
    v10[1] = sub_1CC10;
    v12 = v0[8];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 4, v12, sub_1DDA0, v9, v11);
  }
}

uint64_t sub_1CC10()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v3 = sub_1D09C;
  }

  else
  {
    v3 = sub_1CD94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1CD94()
{
  v1 = v0[4];
  v0[21] = v1;
  v0[5] = v1;

  v2 = swift_task_alloc();
  v0[22] = v2;
  v3 = sub_1DE54();
  *v2 = v0;
  v2[1] = sub_1CE68;
  v4 = v0[19];
  v5 = v0[12];

  return Collection<>.concurrentMap(_:)(&unk_EA0F0, v5, v4, v3);
}

uint64_t sub_1CE68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_1D114;
  }

  else
  {

    *(v4 + 192) = a1;
    v5 = sub_1CFA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1CFA4()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 192);

  return v1(v2);
}

uint64_t sub_1D024()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D09C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D114()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D1A4(void *a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for ChannelEntity(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTChannelEntityName];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_E9F00;
  v8 = objc_allocWithZone(NSSortDescriptor);
  v9 = sub_E7024();
  v10 = [v8 initWithKey:v9 ascending:1];

  *(v7 + 32) = v10;
  sub_4ABC(0, &unk_12DB50, NSSortDescriptor_ptr);
  isa = sub_E71E4().super.isa;

  [v6 setSortDescriptors:isa];

  sub_4ABC(0, &qword_12DC30, MTChannel_ptr);
  v12 = sub_E7734();
  if (v1)
  {

    return;
  }

  v13 = v12;
  v14 = v23;
  if (!(v12 >> 62))
  {
    v15 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_15:

    *v14 = _swiftEmptyArrayStorage;
    return;
  }

  v15 = sub_E7AC4();
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_5:
  v21[1] = 0;
  v22 = v6;
  v24 = _swiftEmptyArrayStorage;
  sub_15D78(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = 0;
    v17 = v24;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = sub_E79B4();
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      ChannelEntity.init(model:)(v18, v5);
      v24 = v17;
      v20 = v17[2];
      v19 = v17[3];
      if (v20 >= v19 >> 1)
      {
        sub_15D78((v19 > 1), v20 + 1, 1);
        v17 = v24;
      }

      ++v16;
      v17[2] = v20 + 1;
      sub_1E2C8(v5, v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20);
    }

    while (v15 != v16);

    *v23 = v17;
  }
}

uint64_t sub_1D4C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_1D4E0, 0, 0);
}

uint64_t sub_1D4E0()
{
  sub_E51D4();
  v1 = v0[2];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1D58C;

  return ChannelEntity.prepare(asPartOf:)(v1);
}

uint64_t sub_1D58C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1D6C8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D6C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D7E4;

  return sub_27604(a2, a3);
}

uint64_t sub_1D7E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1D8F4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E340;

  return sub_28A70(a1, v4);
}

uint64_t sub_1D9A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E338;

  return ChannelEntity.ChannelEntityQuery.suggestedEntities()();
}

uint64_t sub_1DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAF8;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1DAF8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1DBF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1DF24();
  *v5 = v2;
  v5[1] = sub_588C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1DCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_1DD68()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1DDBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_588C;

  return sub_1D4C0(a1, v1);
}

unint64_t sub_1DE54()
{
  result = qword_12DB90;
  if (!qword_12DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E050, &qword_EA0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DB90);
  }

  return result;
}

unint64_t sub_1DF24()
{
  result = qword_12DBF0;
  if (!qword_12DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DBF0);
  }

  return result;
}

unint64_t sub_1DF7C()
{
  result = qword_12DBF8;
  if (!qword_12DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DBF8);
  }

  return result;
}

unint64_t sub_1DFD4()
{
  result = qword_12DC00;
  if (!qword_12DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC00);
  }

  return result;
}

unint64_t sub_1E060()
{
  result = qword_12DC08;
  if (!qword_12DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC08);
  }

  return result;
}

uint64_t sub_1E0E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E130()
{
  result = qword_12DC18;
  if (!qword_12DC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E050, &qword_EA0E0);
    sub_1E0E8(&qword_12DC10, &protocol conformance descriptor for ChannelEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC18);
  }

  return result;
}

void *sub_1E1D0@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}