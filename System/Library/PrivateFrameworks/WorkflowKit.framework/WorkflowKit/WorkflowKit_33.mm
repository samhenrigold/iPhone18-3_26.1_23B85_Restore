id sub_1CA5C80D0()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  strcpy((inited + 120), "TVRemote_Sleep");
  *(inited + 135) = -18;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000012;
  *(inited + 168) = 0x80000001CA9D3200;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t TypedValueRepresentableParameterStateContext.init(action:parameter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TypedValueRepresentableError.hashValue.getter()
{
  v1 = *v0;
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

uint64_t static TypedValueRepresentableParameterState.typeIdentifier.getter@<X0>(void *a2@<X8>)
{
  v3 = swift_allocObject();
  v3[2] = sub_1CA94C3A8();
  v3[3] = v4;
  swift_getMetatypeMetadata();
  v3[4] = sub_1CA94C408();
  v3[5] = v5;
  *a2 = v3;
  v6 = *MEMORY[0x1E69DB098];
  v7 = sub_1CA94ADC8();
  return (*(*(v7 - 8) + 104))(a2, v6, v7);
}

unint64_t sub_1CA5C8454()
{
  result = qword_1EC446D50;
  if (!qword_1EC446D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypedValueRepresentableError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of TypedValueRepresentableParameterState.typedValue(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1CA3601B4;

  return v11(a1, a2, a3, a4);
}

id sub_1CA5C8754()
{
  v29[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A51B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Name";
  v6 = @"Name";
  v7 = sub_1CA94C438("Edit Calendar Event (Action Name)", 33);
  v9 = v8;
  v10 = sub_1CA94C438("Edit Calendar Event", 19);
  v12 = v11;
  v13 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v15, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"RemoteExecuteOnPlatforms";
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F4A08978;
  *(inited + 200) = &unk_1F4A089A8;
  *(inited + 184) = v23;
  *(inited + 192) = @"RequiredResources";
  *(inited + 224) = v23;
  *(inited + 232) = @"ResidentCompatible";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v24 = @"RemoteExecuteOnPlatforms";
  v25 = @"RequiredResources";
  v26 = @"ResidentCompatible";
  v27 = sub_1CA94C368();
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v27;
  *(inited + 280) = 0xD00000000000001ALL;
  *(inited + 288) = 0x80000001CA9938C0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id RowTemplatePropertySetterParameterState.propertyName.getter()
{
  result = *(v0 + 24);
  if (result)
  {
    result = [result value];
    if (result)
    {
      v2 = result;
      sub_1CA94C398();

      return 0;
    }
  }

  return result;
}

uint64_t RowTemplatePropertySetterParameterState.identity.getter()
{
  v1 = *(v0 + 40);
  sub_1CA94C218();
  return v1;
}

void *RowTemplatePropertySetterParameterState.subject.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_1CA5C8BF4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  RowTemplatePropertySetterParameterState.subject.setter(v1);
}

void RowTemplatePropertySetterParameterState.subject.setter(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectRelease();
  *(v2 + 2) = 0;

  *(v2 + 3) = a1;
  v9 = *v2;
  v10 = v2[1];
  *v11 = v2[2];
  *&v11[12] = *(v2 + 44);
  v4 = sub_1CA5C8D08();
  v5 = [objc_opt_self() BOOLValueType];
  v6 = v5;
  if (!v4)
  {

    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &unk_1EC441AB0, 0x1E69ACAA0);
  v7 = sub_1CA94CFD8();

  if ((v7 & 1) == 0)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:
  *(v2 + 32) = v8;
}

id sub_1CA5C8D08()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [v1 value];
    if (v2)
    {
      v3 = v2;
      sub_1CA94C398();
    }
  }

  return 0;
}

void (*RowTemplatePropertySetterParameterState.subject.modify(void *a1))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1CA5C8E3C;
}

void sub_1CA5C8E3C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    RowTemplatePropertySetterParameterState.subject.setter(v2);
  }

  else
  {
    RowTemplatePropertySetterParameterState.subject.setter(*a1);
  }
}

uint64_t RowTemplatePropertySetterParameterState.selectedOperator.setter(_BYTE *a1)
{
  *(v1 + 32) = *a1;
  result = swift_unknownObjectRelease();
  *(v1 + 16) = 0;
  return result;
}

uint64_t (*RowTemplatePropertySetterParameterState.selectedOperator.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  return sub_1CA5C8F6C;
}

uint64_t RowTemplatePropertySetterParameterState.operators.getter()
{
  v1 = *(v0 + 24);
  v8[0] = *(v0 + 32);
  *(v8 + 12) = *(v0 + 44);
  result = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = [v1 value];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = 0;
      sub_1CA94C398();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

id RowTemplatePropertySetterParameterState.serializedRepresentation.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 value];
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4457D8, &qword_1CA987B78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    strcpy((inited + 32), "WFRowSubject");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v2;
    sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
    v4 = v2;
    sub_1CA94C1E8();
    v2 = sub_1CA94C1A8();
  }

  return v2;
}

__n128 RowTemplatePropertySetterParameterState.init(updatableState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 32);
  v6 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_37();
  v10 = sub_1CA948CC8();
  v12 = v11;
  v14 = *(a1 + 16);
  v15 = *a1;
  (*(v8 + 8))(v2, v6);
  *(a2 + 40) = v10;
  *(a2 + 48) = v12;
  *(a2 + 56) = 16842752;
  result = v15;
  *a2 = v15;
  *(a2 + 16) = v14;
  *(a2 + 32) = v5;
  return result;
}

void RowTemplatePropertySetterParameterState.init(serializedRepresentation:variableProvider:parameter:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_37();
  v13 = sub_1CA948CC8();
  v15 = v14;
  (*(v11 + 8))(v4, v9);
  v33 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444490, &qword_1CA983530);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  if (!a2)
  {

    swift_unknownObjectRelease();

LABEL_15:

    goto LABEL_16;
  }

  ObjectType = swift_getObjectType();
  v17 = dynamic_cast_existential_1_conditional(a2, ObjectType, &protocol descriptor for UpdatableParameterStateDataSource);
  if (!v17)
  {

    swift_unknownObjectRelease();

    goto LABEL_14;
  }

  v19 = v17;
  v28 = v18;
  v20 = sub_1CA323E28();

  if (!v20 || (*&v30 = v20, (swift_dynamicCast() & 1) == 0))
  {

    swift_unknownObjectRelease();
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v21 = swift_getObjectType();
  v22 = (*(v28 + 56))(v33, v34, v21);

  swift_unknownObjectRelease();

  if (!v22 || (swift_getObjectType(), v23 = sub_1CA2DAD18(), WFParameterState.swiftParameterState<A>(_:)(&type metadata for UpdatableParameterState, v23, &v33), swift_unknownObjectRelease(), v33 == 1))
  {

LABEL_10:
    swift_unknownObjectRelease();
LABEL_16:
    *(a4 + 44) = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
    return;
  }

  v24 = v35;
  v25 = v36;
  v26 = v37;
  swift_unknownObjectRelease();
  *&v30 = v19;
  *(&v30 + 1) = v28;
  *&v31 = v24;
  *(&v31 + 1) = v25;
  v32[0] = v26;
  *&v32[1] = v42[0];
  *&v32[4] = *(v42 + 3);
  *&v32[8] = v13;
  *&v32[16] = v15;
  *&v32[24] = 16842752;
  v27 = v31;
  *a4 = v30;
  a4[1] = v27;
  *(a4 + 44) = *&v32[12];
  a4[2] = *v32;
  v33 = v19;
  v34 = v28;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  *&v38[3] = *(v42 + 3);
  *v38 = v42[0];
  v39 = v13;
  v40 = v15;
  v41 = 16842752;
  sub_1CA2DBDB8(&v30, v29);
  sub_1CA5CACB4(&v33);
}

double RowTemplatePropertySetterParameterState.init(variable:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1CA948D28();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_37();
  sub_1CA948CC8();

  (*(v7 + 8))(v2, v5);

  result = 0.0;
  *(a2 + 44) = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

void __swiftcall RowTemplatePropertySetterParameterState.makeSubjectParameter(key:)(WFParameter *__return_ptr retstr, Swift::String key)
{
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  v5 = *(v2 + 32);
  v8 = *v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v6 = objc_allocWithZone(type metadata accessor for UpdatableStateSubjectPickerParameter());
  v7 = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1CA5CA0EC(&v8);
}

uint64_t RowTemplatePropertySetterParameterState.setParameterState(_:key:)(uint64_t a1)
{
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(v1 + 16) = a1;
  return result;
}

uint64_t RowTemplatePropertySetterParameterState.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if (!v2)
  {
    sub_1CA94D938();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1CA94D938();
    return MEMORY[0x1CCAA2780](v4);
  }

  v5 = [v2 hash];
  sub_1CA94D938();
  MEMORY[0x1CCAA2780](v5);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1CA94D938();
  v6 = v3;
  sub_1CA94CFE8();

  return MEMORY[0x1CCAA2780](v4);
}

uint64_t static RowTemplatePropertySetterParameterState.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 32);
  v6 = *(a2 + 2);
  v5 = *(a2 + 3);
  v7 = *(a2 + 32);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v13 = *a2;
  v14 = v6;
  v15 = v5;
  v16 = v7;
  v8 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v2) = static UpdatableParameterState.== infix(_:_:)(&v17, &v13);
  v10 = v15;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v11 = v19;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v2 & 1;
}

uint64_t RowTemplatePropertySetterParameterState.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1CA94D918();
  if (v1)
  {
    v4 = [v1 hash];
    sub_1CA94D938();
    MEMORY[0x1CCAA2780](v4);
  }

  else
  {
    sub_1CA94D938();
  }

  sub_1CA94D938();
  if (v2)
  {
    v5 = v2;
    sub_1CA94CFE8();
  }

  MEMORY[0x1CCAA2780](v3);
  return sub_1CA94D968();
}

uint64_t sub_1CA5C9D8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA3E78A8;

  return RowTemplatePropertySetterParameterState.process(context:)();
}

void (*sub_1CA5C9E44(void *a1))(uint64_t *a1, char a2)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1CA5C8E3C;
}

uint64_t (*sub_1CA5C9EC0(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  return sub_1CA5CB07C;
}

uint64_t sub_1CA5C9EEC(_BYTE *a1)
{
  v1 = *a1;
  *(*a1 + 32) = a1[8];
  result = swift_unknownObjectRelease();
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_1CA5C9F38(uint64_t a1)
{
  sub_1CA94D918();
  UpdatableParameterState.hash(into:)(v2);
  return sub_1CA94D968();
}

uint64_t sub_1CA5C9F98()
{
  result = PropertyUpdateOperator.defaultLocalizedLabel.getter();
  if (!v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA5C9FD4(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA981310;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *(inited + 32) = v5;
    *(inited + 40) = v6;
    *(inited + 48) = v2;
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
    v7 = v2;
    sub_1CA94C218();
    return sub_1CA94C1E8();
  }

  else
  {
    sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);

    return sub_1CA94C1E8();
  }
}

id sub_1CA5CA0EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = &v1[OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState];
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v4;
  v3[32] = v2;
  sub_1CA2DAD6C(1, 0, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = 0x79747265706F7270;
  *(inited + 48) = 0xE800000000000000;
  *(inited + 64) = v6;
  *(inited + 72) = @"HideClearButton";
  v7 = MEMORY[0x1E69E6370];
  *(inited + 80) = 1;
  *(inited + 104) = v7;
  *(inited + 112) = @"Placeholder";
  v8 = v1;
  v9 = @"Key";
  v10 = @"HideClearButton";
  v11 = @"Placeholder";
  sub_1CA94C438("Property", 8);
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v13 = sub_1CA94C368();
  v14 = sub_1CA94C368();

  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  v16 = sub_1CA94C3A8();
  v18 = v17;

  *(inited + 120) = v16;
  *(inited + 128) = v18;
  *(inited + 144) = v6;
  *(inited + 152) = @"DisallowedVariableTypes";
  sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = @"DisallowedVariableTypes";
  v21 = [ObjCClassFromMetadata allInsertableVariableTypes];
  type metadata accessor for WFVariableType(0);
  sub_1CA5C6850(&qword_1EC441A60, type metadata accessor for WFVariableType, &unk_1CA9804C8);
  v22 = sub_1CA94C8F8();

  sub_1CA3E4650(v22, v23, v24, v25, v26, v27, v28);
  v30 = v29;

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = v30;
  _s3__C3KeyVMa_0(0);
  sub_1CA5C6850(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v31 = sub_1CA94C1E8();
  v32 = sub_1CA2F864C(v31);
  v35.receiver = v8;
  v35.super_class = type metadata accessor for UpdatableStateSubjectPickerParameter();
  v33 = objc_msgSendSuper2(&v35, sel_initWithDefinition_, v32);

  return v33;
}

uint64_t sub_1CA5CA4F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443A50, &qword_1CA986840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v2 = (v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState);
  v4 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 8);
  v5 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 16);
  v6 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 24);
  if (v4 == 1)
  {
    sub_1CA5CB02C(1, *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 8), *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 16), *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 24));
    v7 = 1;
    v8 = v3;
    v9 = v5;
    v10 = v6;
LABEL_7:
    sub_1CA2DAD6C(v7, v8, v9, v10);
    goto LABEL_8;
  }

  v11 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState);
  v12 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 8);
  v13 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 16);
  if (!v6)
  {
    sub_1CA5CB02C(v11, v12, v13, 0);
    v7 = v4;
    v8 = v3;
    v9 = v5;
    v10 = 0;
    goto LABEL_7;
  }

  sub_1CA5CB02C(v11, v12, v13, *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_965B354D2BCE37F95CE5CB3E462835A136UpdatableStateSubjectPickerParameter_updatableState + 24));
  v14 = v6;
  sub_1CA2DAD6C(v4, v3, v5, v6);
  v15 = [v14 value];

  if (v15)
  {
    sub_1CA94C398();
  }

LABEL_8:
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v18 = *(inited + 40);
  if (v18)
  {
    v19 = *(inited + 32);
    sub_1CA94C218();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA26DADC();
      v17 = v22;
    }

    v20 = *(v17 + 16);
    if (v20 >= *(v17 + 24) >> 1)
    {
      sub_1CA26DADC();
      v17 = v23;
    }

    *(v17 + 16) = v20 + 1;
    v21 = v17 + 16 * v20;
    *(v21 + 32) = v19;
    *(v21 + 40) = v18;
  }

  swift_setDeallocating();
  sub_1CA32E2E4();
  v24 = *v2;
  v25 = v2[1];
  v26 = v2[2];
  v27 = v2[3];
  v28 = *v2;
  if (*v2 >= 2)
  {
    sub_1CA5CB02C(v28, v25, v26, v27);
    v30 = swift_unknownObjectRetain();
    sub_1CA2DAD6C(v30, v25, v26, v27);
    ObjectType = swift_getObjectType();
    v29 = (*(v25 + 16))(ObjectType, v25);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1CA5CB02C(v28, v25, v26, v27);
    sub_1CA2DAD6C(v24, v25, v26, v27);
    v29 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA2B7FF4(v29);
  v32 = *(v17 + 16);
  if (v32)
  {
    sub_1CA94D508();
    v33 = v17 + 40;
    do
    {
      sub_1CA94C218();
      v34 = sub_1CA94C368();
      v35 = [objc_allocWithZone(WFStringSubstitutableState) initWithValue_];

      v36 = WFVariableSubstitutableParameterStateUpcast(v35);

      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      v33 += 16;
      --v32;
    }

    while (v32);

    return v16;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1CA5CA898(void *a1)
{
  sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (WFVariableSubstitutableParameterStateDowncast(a1, ObjCClassFromMetadata))
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 value];
      if (v4)
      {
        v5 = v4;
        sub_1CA94C398();
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_1CA5CAB70()
{
  result = sub_1CA568E98(v0);
  if (result)
  {
    v2 = sub_1CA25B410(result);

    return v2 > 15;
  }

  return result;
}

id sub_1CA5CAC0C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UpdatableStateSubjectPickerParameter();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1CA5CAC60()
{
  result = qword_1EC446D58;
  if (!qword_1EC446D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D58);
  }

  return result;
}

unint64_t sub_1CA5CAD08(uint64_t a1)
{
  result = sub_1CA5CAD30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5CAD30()
{
  result = qword_1EC446D60;
  if (!qword_1EC446D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D60);
  }

  return result;
}

unint64_t sub_1CA5CAD84()
{
  result = qword_1EC446D68;
  if (!qword_1EC446D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D68);
  }

  return result;
}

unint64_t sub_1CA5CADE4(uint64_t a1)
{
  result = sub_1CA5CAE0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA5CAE0C()
{
  result = qword_1EC446D70;
  if (!qword_1EC446D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D70);
  }

  return result;
}

unint64_t sub_1CA5CAE64()
{
  result = qword_1EC446D78;
  if (!qword_1EC446D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446D78);
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CA5CAED4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 60))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1CA5CAF14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CA5CAF74(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 9))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA5CAFC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1CA5CB02C(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result != 1)
  {
    v5 = a4;
    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  return result;
}

id sub_1CA5CB0B8()
{
  v32[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"IconColor";
  *(inited + 80) = 1953392980;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 104) = v1;
  *(inited + 112) = @"IconSymbol";
  *(inited + 120) = 0xD000000000000026;
  *(inited + 128) = 0x80000001CA9D3340;
  *(inited + 144) = v1;
  *(inited + 152) = @"IconSymbolColor";
  *(inited + 160) = 0x6E65657247;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 184) = v1;
  *(inited + 192) = @"LocallyProcessesData";
  v2 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v2;
  *(inited + 232) = @"Name";
  v3 = @"ActionClass";
  v4 = @"IconColor";
  v5 = @"IconSymbol";
  v6 = @"IconSymbolColor";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438("Filter Locations (Action Name)", 30);
  v11 = v10;
  v12 = sub_1CA94C438("Filter Locations", 16);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v17, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 240) = v23;
  *(inited + 264) = v24;
  *(inited + 272) = @"Output";
  v25 = @"Output";
  v26 = MEMORY[0x1E69E6158];
  v27 = sub_1CA94C1E8();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 280) = v27;
  *(inited + 304) = v28;
  *(inited + 312) = @"ResidentCompatible";
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  v29 = @"ResidentCompatible";
  v30 = sub_1CA94C368();
  *(inited + 384) = v26;
  *(inited + 352) = v30;
  *(inited + 360) = 0xD000000000000015;
  *(inited + 368) = 0x80000001CA993430;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5CB504()
{
  v113 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9D33C0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v117 = sub_1CA94C438("define|word|dictionary|lookup|term", 34);
  v5 = v4;
  v6 = sub_1CA94C438("define|word|dictionary|lookup|term", 34);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v118 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v119 = v10;
  v11 = &v105 - v118;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v114 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v115 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v116 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v105 - v116;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v117, v5, v6, v8, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v117 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v112 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Shows the definition of the word passed into the action.", 56);
  v110 = v24;
  v25 = sub_1CA94C438("Shows the definition of the word passed into the action.", 56);
  v27 = v26;
  v111 = &v105;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v105 - v118;
  sub_1CA948D98();
  v29 = [v12 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v105 - v116;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v110, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v117;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v112;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1802398032;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x6D726F6674786574;
  *(inited + 208) = 0xEA00000000007461;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v37 = swift_initStackObject();
  v109 = xmmword_1CA981350;
  *(v37 + 16) = xmmword_1CA981350;
  *(v37 + 32) = 0x656C7069746C754DLL;
  *(v37 + 40) = 0xE800000000000000;
  v38 = MEMORY[0x1E69E6370];
  *(v37 + 48) = 0;
  *(v37 + 72) = v38;
  strcpy((v37 + 80), "ParameterKey");
  *(v37 + 93) = 0;
  *(v37 + 94) = -5120;
  *(v37 + 96) = 1685221207;
  *(v37 + 104) = 0xE400000000000000;
  *(v37 + 120) = v36;
  *(v37 + 128) = 0x6465726975716552;
  *(v37 + 136) = 0xE800000000000000;
  *(v37 + 144) = 1;
  *(v37 + 168) = v38;
  *(v37 + 176) = 0x7365707954;
  *(v37 + 184) = 0xE500000000000000;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v37 + 216) = v112;
  *(v37 + 192) = &unk_1F4A08A28;
  v39 = @"IconColor";
  v40 = @"IconSymbol";
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v42;
  *(inited + 264) = v43;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 1;
  *(inited + 304) = v38;
  *(inited + 312) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v46 = sub_1CA94C438("Show Definition (Action Name)", 29);
  v48 = v47;
  v49 = sub_1CA94C438("Show Definition", 15);
  v51 = v50;
  v111 = &v105;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v105 - v118;
  sub_1CA948D98();
  v53 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v105 - v116;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 344) = v117;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v111 = swift_allocObject();
  *(v111 + 1) = xmmword_1CA9813B0;
  v110 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = v109;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000014;
  *(v56 + 48) = 0x80000001CA99B500;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"Key";
  *(v56 + 80) = 1685221207;
  *(v56 + 88) = 0xE400000000000000;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Label";
  v58 = @"Parameters";
  v59 = @"Class";
  v60 = @"Key";
  v61 = @"Label";
  v62 = sub_1CA94C438("Word (Word)", 11);
  v107 = v63;
  v108 = v62;
  v64 = sub_1CA94C438("Word", 4);
  v106 = v65;
  *&v109 = &v105;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v105 - v118;
  sub_1CA948D98();
  v67 = v114;
  v68 = [v114 bundleURL];
  v105 = &v105;
  MEMORY[0x1EEE9AC00](v68);
  v69 = v116;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 120) = sub_1CA2F9F14(v108, v107, v64, v106, 0, 0, v66, &v105 - v69);
  *(v56 + 144) = v117;
  *(v56 + 152) = @"Placeholder";
  v71 = @"Placeholder";
  v72 = sub_1CA94C438("word (Word)", 11);
  v107 = v73;
  v108 = v72;
  v74 = sub_1CA94C438("word", 4);
  v106 = v75;
  *&v109 = &v105;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v105 - v118;
  sub_1CA948D98();
  v77 = [v67 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v79 = sub_1CA2F9F14(v108, v107, v74, v106, 0, 0, v76, &v105 - v69);
  *(v56 + 184) = v117;
  *(v56 + 160) = v79;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v80 = sub_1CA94C1E8();
  v81 = sub_1CA2F864C(v80);
  v82 = v111;
  v111[4] = v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v82;
  *(inited + 384) = v83;
  *(inited + 392) = @"ParameterSummary";
  v84 = @"ParameterSummary";
  v85 = sub_1CA94C438("Show definition of ${Word} (Parameter Summary)", 46);
  v87 = v86;
  v88 = sub_1CA94C438("Show definition of ${Word}", 26);
  v90 = v89;
  v117 = &v105;
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v105 - v118;
  sub_1CA948D98();
  v92 = [v114 bundleURL];
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v105 - v116;
  sub_1CA948B68();

  v94 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v95 = sub_1CA2F9F14(v85, v87, v88, v90, 0, 0, v91, v93);
  v96 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v97 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v96;
  *(inited + 424) = v97;
  *(inited + 432) = @"RequiredResources";
  *(inited + 440) = &unk_1F4A08A58;
  v98 = v112;
  *(inited + 464) = v112;
  *(inited + 472) = @"UserInterfaceClasses";
  v99 = @"RequiredResources";
  v100 = @"UserInterfaceClasses";
  v101 = sub_1CA94C1E8();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 480) = v101;
  *(inited + 504) = v102;
  *(inited + 512) = @"UserInterfaces";
  *(inited + 544) = v98;
  *(inited + 520) = &unk_1F4A08AE8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v103 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5CC274()
{
  v46 = sub_1CA94B4D8();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v43 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v2;
  *(inited + 72) = @"ActionKeywords";
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("phone|spam|scam", 15);
  v7 = v6;
  v8 = sub_1CA94C438("phone|spam|scam", 15);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = MEMORY[0x1E69E6158];
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v23;
  *(inited + 144) = v24;
  *(inited + 152) = @"DisabledOnPlatforms";
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F4A08B68;
  *(inited + 184) = v25;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x6E65657247;
  *(inited + 208) = 0xE500000000000000;
  *(inited + 224) = v22;
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD00000000000001ALL;
  *(inited + 248) = 0x80000001CA9D3530;
  *(inited + 264) = v22;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v26 = @"DisabledOnPlatforms";
  v27 = @"IconColor";
  v28 = @"IconSymbol";
  v29 = @"InputPassthrough";
  v30 = sub_1CA94C368();
  *(inited + 344) = v22;
  *(inited + 312) = v30;
  *(inited + 320) = 0xD000000000000060;
  *(inited + 328) = 0x80000001CA9D3550;
  *(inited + 352) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v31 = swift_initStackObject();
  v43 = xmmword_1CA981310;
  *(v31 + 16) = xmmword_1CA981310;
  *(v31 + 32) = 0x6574617473;
  *(v31 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v32 = swift_initStackObject();
  *(v32 + 16) = v43;
  *(v32 + 64) = v22;
  *(v32 + 32) = @"Key";
  *(v32 + 40) = 0x65756C61566E4FLL;
  *(v32 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v33 = @"Key";
  v34 = sub_1CA94C1E8();
  *(v31 + 48) = sub_1CA2F864C(v34);
  v35 = sub_1CA94C1E8();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 360) = v35;
  *(inited + 384) = v36;
  *(inited + 392) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1CA9813B0;
  v38 = v45;
  (*(v44 + 104))(v45, *MEMORY[0x1E69DB3E8], v46);
  v39 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource(0));
  v40 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v38);
  *(v37 + 32) = v41;
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444680, &qword_1CA9839D8);
  *(inited + 400) = v37;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static WFParameterValueRegistry.allParameterValueClassesInWorkflowKit()()
{
  sub_1CA25B3D0(0, &unk_1EC446DA0, off_1E836DEF0);
  [swift_getObjCClassFromMetadata() processingValueClass];
  sub_1CA2E739C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v1 = v0;
  v2 = *(v0 + 24);
  if (*(v0 + 16) >= v2 >> 1)
  {
    OUTLINED_FUNCTION_1_44(v2);
    v1 = v51;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(ObjCClassMetadata);
  sub_1CA25B3D0(0, &qword_1EC446AE8, off_1E836E218);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v4);
    v1 = v52;
  }

  v6 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v6);
  sub_1CA25B3D0(0, &qword_1EC446B00, off_1E836EC20);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v7);
    v1 = v53;
  }

  v8 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v8);
  sub_1CA25B3D0(0, &qword_1EC446B08, off_1E836EC18);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v9);
    v1 = v54;
  }

  v10 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v10);
  sub_1CA25B3D0(0, &qword_1EC446B10, off_1E836DEC8);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v11);
    v1 = v55;
  }

  v12 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v12);
  sub_1CA25B3D0(0, &qword_1EC4417B0, off_1E836F350);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v13);
    v1 = v56;
  }

  v14 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v14);
  sub_1CA25B3D0(0, &qword_1EC446DB0, off_1E836EBE0);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v15);
    v1 = v57;
  }

  v16 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v16);
  sub_1CA25B3D0(0, &qword_1EC446DB8, off_1E836EE48);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v17);
    v1 = v58;
  }

  v18 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v18);
  [objc_opt_self() processingValueClass];
  v19 = *(v1 + 16);
  v20 = *(v1 + 24);
  v21 = v20 >> 1;
  v22 = v19 + 1;
  if (v20 >> 1 <= v19)
  {
    OUTLINED_FUNCTION_5_40();
    v1 = v59;
    v20 = *(v59 + 24);
    v21 = v20 >> 1;
  }

  v23 = swift_getObjCClassMetadata();
  *(v1 + 16) = v22;
  *(v1 + 8 * v19 + 32) = v23;
  if (v21 < (v19 + 2))
  {
    sub_1CA2E739C(v20 > 1, v19 + 2, 1, v1);
    v1 = v60;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A50, &unk_1CA989900);
  *(v1 + 16) = v19 + 2;
  *(v1 + 8 * v22 + 32) = v24;
  v25 = *(v1 + 24);
  if ((v19 + 3) > (v25 >> 1))
  {
    OUTLINED_FUNCTION_1_44(v25);
    v1 = v61;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444670, &qword_1CA9839D0);
  OUTLINED_FUNCTION_2_54(v26);
  v27 = v19 + 4;
  if ((v19 + 4) > *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_40();
    v1 = v62;
  }

  v28 = sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
  *(v1 + 16) = v27;
  *(v1 + 8 * (v19 + 3) + 32) = v28;
  v29 = *(v1 + 24);
  if ((v19 + 5) > (v29 >> 1))
  {
    OUTLINED_FUNCTION_1_44(v29);
    v1 = v63;
  }

  v30 = sub_1CA25B3D0(0, &qword_1EC443820, 0x1E6996F28);
  *(v1 + 16) = v19 + 5;
  *(v1 + 8 * v27 + 32) = v30;
  sub_1CA25B3D0(0, &qword_1EC446DC0, off_1E836E530);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v31);
    v1 = v64;
  }

  v32 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v32);
  sub_1CA25B3D0(0, &unk_1EC446DC8, off_1E836E548);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v33);
    v1 = v65;
  }

  v34 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v34);
  sub_1CA25B3D0(0, &qword_1EC446AA0, off_1E836F588);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v35);
    v1 = v66;
  }

  v36 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v36);
  sub_1CA25B3D0(0, &qword_1EC446DD8, off_1E836E5A0);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v37);
    v1 = v67;
  }

  v38 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v38);
  sub_1CA25B3D0(0, &qword_1EC446DE0, off_1E836DE00);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v39);
    v1 = v68;
  }

  v40 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v40);
  sub_1CA25B3D0(0, &qword_1EC446DE8, off_1E836F378);
  [swift_getObjCClassFromMetadata() processingValueClass];
  OUTLINED_FUNCTION_0_60();
  if (v5)
  {
    OUTLINED_FUNCTION_1_44(v41);
    v1 = v69;
  }

  v42 = swift_getObjCClassMetadata();
  OUTLINED_FUNCTION_2_54(v42);
  v70 = v1;
  sub_1CA25B3D0(0, &qword_1EC446DF0, off_1E836EE20);
  v43 = [swift_getObjCClassFromMetadata() processingValueClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446DF8, &qword_1CA98DE28);
  sub_1CA94C658();

  OUTLINED_FUNCTION_3_48();
  sub_1CA25B3D0(0, &qword_1EC446E00, off_1E836EBA0);
  v44 = [swift_getObjCClassFromMetadata() processingValueClasses];
  OUTLINED_FUNCTION_4_47(v44);

  OUTLINED_FUNCTION_3_48();
  sub_1CA25B3D0(0, &qword_1EC446E08, off_1E836E060);
  v45 = [swift_getObjCClassFromMetadata() processingValueClasses];
  OUTLINED_FUNCTION_4_47(v45);

  OUTLINED_FUNCTION_3_48();
  v46 = [objc_opt_self() processingValueClasses];
  OUTLINED_FUNCTION_4_47(v46);

  OUTLINED_FUNCTION_3_48();
  sub_1CA25B3D0(0, &qword_1EC446E10, off_1E836DFE0);
  v47 = [swift_getObjCClassFromMetadata() processingValueClasses];
  OUTLINED_FUNCTION_4_47(v47);

  OUTLINED_FUNCTION_3_48();
  sub_1CA25B3D0(0, &unk_1EC446AF0, off_1E836E1F0);
  v48 = [swift_getObjCClassFromMetadata() processingValueClasses];
  v49 = OUTLINED_FUNCTION_4_47(v48);

  sub_1CA2B8A88(v49);
  return v70;
}

id WFVariableSubstitutableParameterStateUpcast<A, B>(_:)(void *a1)
{
  v1 = WFVariableSubstitutableParameterStateUpcast(a1);

  return v1;
}

id WFVariableSubstitutableParameterStateDowncast<A, B>(_:to:)(void *a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = WFVariableSubstitutableParameterStateDowncast(a1, ObjCClassFromMetadata);
  if (result)
  {
    result = swift_dynamicCastUnknownClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void sub_1CA5CD198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = sub_1CA94D098();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  MEMORY[0x1EEE9AC00](v11);
  (*(v15 + 16))(&v16 - v14, a3, v6);
  (*(v10 + 16))(v13, a1, v9);
  type metadata accessor for OrderedDictionary(0, v6, v7, v8);
  OrderedDictionary.subscript.setter();
}

void OrderedDictionary.removeValue(forKey:)()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v38 = v3;
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_4_12();
  v36 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v35 = v9 - v8;
  v11 = *(v10 + 24);
  OUTLINED_FUNCTION_9_31();
  v12 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  OUTLINED_FUNCTION_4_12();
  v34 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_10_30();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_48_0();
  v33 = v24;
  v37 = v0;
  sub_1CA94C268();
  if (__swift_getEnumTagSinglePayload(v20, 1, v11) == 1)
  {
    (*(v14 + 8))(v20, v12);
    v25 = 1;
    v26 = v38;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v26, v25, 1, v11);
    OUTLINED_FUNCTION_36();
    return;
  }

  v31 = *(v34 + 32);
  v31(v33, v20, v11);
  (*(v36 + 16))(v35, v2, v5);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v11);
  OUTLINED_FUNCTION_6_42();
  sub_1CA94C248();
  sub_1CA94C278();
  v39 = *(v37 + 8);
  OUTLINED_FUNCTION_6_42();
  sub_1CA94C758();
  OUTLINED_FUNCTION_2_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_26();
  sub_1CA94CAF8();
  if ((v40 & 1) == 0)
  {
    sub_1CA94C718();
    v27 = OUTLINED_FUNCTION_104();
    v28(v27);
    OUTLINED_FUNCTION_9_31();
    sub_1CA94C758();
    v29 = v32;
    sub_1CA94C718();
    (*(v34 + 8))(v29, v11);
    v26 = v38;
    v31(v38, v33, v11);
    v25 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  *v6 = a3;
  v6[1] = v3;
  v7 = sub_1CA94D098();
  v6[2] = v7;
  v8 = *(v7 - 8);
  v6[3] = v8;
  v9 = *(v8 + 64);
  v6[4] = __swift_coroFrameAllocStub(v9);
  v6[5] = __swift_coroFrameAllocStub(v9);
  v6[6] = *(a3 + 16);
  OUTLINED_FUNCTION_4_12();
  v11 = v10;
  v6[7] = v10;
  v13 = *(v12 + 64);
  v6[8] = __swift_coroFrameAllocStub(v13);
  v6[9] = __swift_coroFrameAllocStub(v13);
  (*(v11 + 16))();
  v14 = OUTLINED_FUNCTION_69();
  OrderedDictionary.subscript.getter(v14, v15);
  return sub_1CA5CD82C;
}

void sub_1CA5CD82C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  if (a2)
  {
    v5 = v2[7];
    v12 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    OUTLINED_FUNCTION_19_22();
    v10 = OUTLINED_FUNCTION_104();
    v11(v10);
    (*(v5 + 32))(v3, v4, v12);
    OrderedDictionary.subscript.setter();
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    OrderedDictionary.subscript.setter();
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

void OrderedDictionary.subscript.getter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1[3];
  v10 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v12 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v16 = *(v0 + 2);
  v19 = *v0;
  v20 = v16;
  OrderedDictionary.subscript.getter(v6, v2);
  v17 = OUTLINED_FUNCTION_22_21(v15);
  v18 = *(v9 - 8);
  if (v17 == 1)
  {
    (*(v18 + 16))(v8, v4, v9);
    if (OUTLINED_FUNCTION_22_21(v15) != 1)
    {
      (*(v12 + 8))(v15, v10);
    }
  }

  else
  {
    (*(v18 + 32))(v8, v15, v9);
  }

  OUTLINED_FUNCTION_36();
}

void sub_1CA5CDAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 24);
  v4 = *(a2 + a3 - 16);
  v5 = *(a2 + a3 - 8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for OrderedDictionary(0, v3, v4, v5);
  OrderedDictionary.subscript.getter();
}

void sub_1CA5CDB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a2;
  v6 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v8 = *(a3 + a4 - 8);
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v21 - v14;
  MEMORY[0x1EEE9AC00](v13);
  (*(v17 + 16))(v21 - v16, v18, v6);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(v9 + 16);
  v20(v15, a3 + *(TupleTypeMetadata2 + 48), v7);
  v20(v12, a1, v7);
  type metadata accessor for OrderedDictionary(0, v6, v7, v8);
  OrderedDictionary.subscript.setter();
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v7;
  *v7 = a4;
  v7[1] = v4;
  v8 = *(a4 + 24);
  v7[2] = v8;
  OUTLINED_FUNCTION_4_12();
  v10 = v9;
  *(v11 + 24) = v9;
  v7[4] = OUTLINED_FUNCTION_23_17();
  v7[5] = OUTLINED_FUNCTION_23_17();
  v7[6] = OUTLINED_FUNCTION_23_17();
  v12 = OUTLINED_FUNCTION_23_17();
  v7[7] = v12;
  v7[8] = *(a4 + 16);
  OUTLINED_FUNCTION_4_12();
  v14 = v13;
  v7[9] = v13;
  v16 = *(v15 + 64);
  v7[10] = __swift_coroFrameAllocStub(v16);
  v7[11] = __swift_coroFrameAllocStub(v16);
  (*(v14 + 16))();
  v17 = *(v10 + 16);
  v7[12] = v17;
  v7[13] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v12, a3, v8);
  OrderedDictionary.subscript.getter();
  return sub_1CA5CE0C4;
}

void sub_1CA5CE0C4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v6 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v8 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  if (a2)
  {
    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    (*(v2 + 96))(*(v2 + 40), *(v2 + 48), v9);
    v11 = OUTLINED_FUNCTION_69();
    v12(v11);
    (*(v10 + 32))(v8, v5, v9);
    OrderedDictionary.subscript.setter();
    (*(v10 + 8))(v6, v9);
  }

  else
  {
    OrderedDictionary.subscript.setter();
  }

  free(v3);
  free(v4);
  free(v5);
  free(v6);
  free(v7);
  free(v8);

  free(v2);
}

void OrderedDictionary.init(dictionaryLiteral:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1CA94D098();
  OUTLINED_FUNCTION_18_0(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  OUTLINED_FUNCTION_4_12();
  v41 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_0();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_20_26();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_4_12();
  v19 = v18;
  OUTLINED_FUNCTION_29();
  v40 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  v44 = v5;
  v45 = v1;
  OrderedDictionary.init()(&v47);
  v24 = v48;
  v43 = v47;
  v49 = v47;
  v50 = v48;
  sub_1CA94C218();
  v25 = sub_1CA94C668();

  *&v47 = v25;
  if (v25 != sub_1CA94C6F8())
  {
    v39 = v7;
    v27 = *(TupleTypeMetadata2 + 48);
    v42 = v19 + 16;
    *&v43 = v27;
    v28 = (v41 + 32);
    v41 = v3 - 8;
    while (1)
    {
      v29 = sub_1CA94C6D8();
      sub_1CA94C688();
      if (v29)
      {
        v30 = OUTLINED_FUNCTION_16_28();
        v31(v30);
      }

      else
      {
        v36 = sub_1CA94D468();
        if (v40 != 8)
        {
          __break(1u);
          return;
        }

        v46 = v36;
        v37 = OUTLINED_FUNCTION_16_28();
        v38(v37);
        swift_unknownObjectRelease();
      }

      sub_1CA94C738();
      v32 = v44;
      (*v28)(v16, v23, v44);
      (*(*(v3 - 8) + 32))(v11, &v23[v43], v3);
      OUTLINED_FUNCTION_89();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v3);
      type metadata accessor for OrderedDictionary(0, v32, v3, v45);
      OrderedDictionary.subscript.setter();
      if (v47 == sub_1CA94C6F8())
      {

        v26 = v49;
        v24 = v50;
        v7 = v39;
        goto LABEL_10;
      }
    }
  }

  v26 = v43;
LABEL_10:
  *v7 = v26;
  *(v7 + 16) = v24;
  OUTLINED_FUNCTION_36();
}

void OrderedDictionary.description.getter()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_9_31();
  v4 = sub_1CA94D098();
  OUTLINED_FUNCTION_18_0(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v32 - v6;
  v35 = v2;
  v8 = *(v2 + 16);
  OUTLINED_FUNCTION_4_12();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v14 = v13 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v36 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_10_30();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v32 - v19;
  v21 = *(v0 + 8);
  v34 = *(v0 + 16);
  v44 = 91;
  v45 = 0xE100000000000000;
  v32[2] = v21;
  v43 = v21;
  OUTLINED_FUNCTION_6_42();
  v22 = sub_1CA94C758();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1CCAA1420](&v40, v22, WitnessTable);
  v42 = v40;
  sub_1CA94D648();
  sub_1CA94D618();
  v24 = sub_1CA94D638();
  v36 += 4;
  v37 = v24;
  v33 = (v10 + 32);
  v32[1] = v3 - 8;
  while (1)
  {
    v25 = v38;
    sub_1CA94D628();
    (*v36)(v20, v25, v39);
    if (OUTLINED_FUNCTION_22_21(v20) == 1)
    {

      MEMORY[0x1CCAA1300](93, 0xE100000000000000);
      OUTLINED_FUNCTION_36();
      return;
    }

    v26 = *v20;
    (*v33)(v14, &v20[*(TupleTypeMetadata2 + 48)], v8);
    v40 = 0;
    v41 = 0xE000000000000000;
    OUTLINED_FUNCTION_104();
    sub_1CA94D7B8();
    MEMORY[0x1CCAA1300](8250, 0xE200000000000000);
    sub_1CA94C268();
    if (__swift_getEnumTagSinglePayload(v7, 1, v3) == 1)
    {
      break;
    }

    OUTLINED_FUNCTION_69();
    sub_1CA94D7B8();
    v27 = OUTLINED_FUNCTION_69();
    v28(v27);
    MEMORY[0x1CCAA1300](v40, v41);

    v29 = sub_1CA94C6F8();
    if (__OFSUB__(v29, 1))
    {
      __break(1u);
      break;
    }

    if (v26 != v29 - 1)
    {
      MEMORY[0x1CCAA1300](8236, 0xE200000000000000);
    }

    v30 = OUTLINED_FUNCTION_104();
    v31(v30);
  }

  __break(1u);
}

uint64_t OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = sub_1CA94D098();
  OUTLINED_FUNCTION_18_0(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  sub_1CA94C798();
  sub_1CA94C268();
  result = OUTLINED_FUNCTION_22_21(v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_69();
    return v10(v9);
  }

  return result;
}

uint64_t sub_1CA5CEA70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69828](a1, a2, WitnessTable, v5);
}

uint64_t sub_1CA5CEAF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OrderedDictionary.startIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1CA5CEB20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OrderedDictionary.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_1CA5CEB48(uint64_t **a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v6;
  v8 = a3[2];
  v7 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6[4] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v6[5] = v10;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v6[6] = v11;
  v12 = sub_1CA5CED34(v6, *a2, a3);
  v14 = v13;
  v6[7] = v12;
  (*(*(v8 - 8) + 16))(v11);
  (*(*(v7 - 8) + 16))(&v11[*(TupleTypeMetadata2 + 48)], v14, v7);
  return sub_1CA5CECBC;
}

void sub_1CA5CECBC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*sub_1CA5CED34(uint64_t *a1, uint64_t a2, void *a3))()
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  a1[2] = v8;
  OrderedDictionary.subscript.getter(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_1CA5CEE14;
}

void sub_1CA5CEE14(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1CA5CEE64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t sub_1CA5CEEE4(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_1CA94C9A8();
}

uint64_t sub_1CA5CEF6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  OUTLINED_FUNCTION_0_61();
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t sub_1CA5CEFD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[1];
  v6 = v2[2];
  *a2 = *v2;
  a2[1] = v5;
  a2[2] = v6;
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  v7 = OrderedDictionary.startIndex.getter(a1);

  a2[3] = v7;
  return result;
}

uint64_t sub_1CA5CF058(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1CA5CF0AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t static OrderedDictionary<>.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1[2];
  v11 = a2[2];
  if ((sub_1CA94C788() & 1) == 0 || (sub_1CA94C788() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE68930](v10, v11, a3, a4, a5, a6);
}

uint64_t OrderedDictionary.sorted(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v48 = a2;
  v47 = a1;
  v43 = a4;
  v6 = a3[3];
  OUTLINED_FUNCTION_6_42();
  v7 = sub_1CA94D098();
  OUTLINED_FUNCTION_18_0(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v42 - v9;
  v10 = a3[2];
  OUTLINED_FUNCTION_4_12();
  v44 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_0();
  v51 = v14 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_4_12();
  v53 = v16;
  OUTLINED_FUNCTION_29();
  v42 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v21 = *v4;
  *&v59 = v4[1];
  v62 = v21;
  v22 = sub_1CA94C758();
  OUTLINED_FUNCTION_6_42();
  v23 = sub_1CA94C758();
  WitnessTable = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  sub_1CA94D858();
  v46 = v64;
  v45 = v65;
  v62 = v64;
  v63 = v65;
  v66 = v10;
  v54 = v10;
  v55 = v6;
  v52 = a3;
  v56 = a3[4];
  v57 = v47;
  v58 = v48;
  *&v59 = v22;
  *(&v59 + 1) = v23;
  v60 = WitnessTable;
  v61 = v25;
  sub_1CA94D448();
  swift_getWitnessTable();
  v26 = v49;
  sub_1CA94C608();

  if (!v26)
  {
    v46 = 0;
    v28 = v44;
    OrderedDictionary.init()(&v59);
    sub_1CA94C218();
    v29 = sub_1CA94C668();

    v64 = v29;
    if (v29 != sub_1CA94C6F8())
    {
      v49 = *(TupleTypeMetadata2 + 48);
      v48 = v53 + 16;
      v32 = (v28 + 32);
      v47 = v6 - 8;
      v33 = v50;
      do
      {
        v34 = sub_1CA94C6D8();
        sub_1CA94C688();
        if (v34)
        {
          v35 = OUTLINED_FUNCTION_16_28();
          v36(v35);
        }

        else
        {
          result = sub_1CA94D468();
          if (v42 != 8)
          {
            __break(1u);
            return result;
          }

          v62 = result;
          v40 = OUTLINED_FUNCTION_16_28();
          v41(v40);
          swift_unknownObjectRelease();
        }

        sub_1CA94C738();
        (*v32)(v51, v20, v66);
        (*(*(v6 - 8) + 32))(v33, &v20[v49], v6);
        OUTLINED_FUNCTION_89();
        __swift_storeEnumTagSinglePayload(v37, v38, v39, v6);
        OrderedDictionary.subscript.setter();
      }

      while (v64 != sub_1CA94C6F8());
    }

    v30 = v60;
    v31 = v43;
    *v43 = v59;
    *(v31 + 2) = v30;
  }

  return result;
}

double OrderedDictionary.sort(by:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  OrderedDictionary.sorted(by:)(a1, a2, a3, &v10);

  if (!v4)
  {

    v9 = v11;
    result = *&v10;
    *v3 = v10;
    *(v3 + 16) = v9;
  }

  return result;
}

uint64_t OrderedDictionary.mapValues<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v7 = v5;
  v75 = a2;
  v76 = a4;
  v74 = a1;
  v64 = a5;
  v9 = sub_1CA94D098();
  OUTLINED_FUNCTION_18_0(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v64 - v11;
  v12 = a3[2];
  v94 = a3;
  OUTLINED_FUNCTION_4_12();
  v66 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = v16 - v15;
  v18 = a3[3];
  OUTLINED_FUNCTION_4_12();
  v73 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  v71 = v22 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_4_12();
  v77 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_3_1();
  v70 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_48_0();
  v69 = v28;
  v80 = sub_1CA94D098();
  OUTLINED_FUNCTION_4_12();
  v65 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3_1();
  v79 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_48_0();
  v78 = v33;
  v35 = *v5;
  v34 = v5[1];
  v36 = v7[2];
  v37 = v94;
  v38 = v94[4];
  v84 = v12;
  v39 = v71;
  v72 = v38;
  OrderedDictionary.init()(&v92);
  v83 = v35;
  v85 = v35;
  v86 = v34;
  v87 = v36;
  v88 = v35;
  v89 = v34;
  v90 = v36;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v40 = OrderedDictionary.startIndex.getter(v37);

  v91 = v40;
  v83 = (v66 + 32);
  v82 = (v73 + 32);
  v67 = v77 + 4;
  v77 = (v65 + 32);
  v73 += 8;
  v68 = v17;
  while (1)
  {
    v41 = OrderedDictionary.endIndex.getter(v94);
    v42 = v91;
    if (v91 == v41)
    {
      v43 = 1;
      v44 = v79;
    }

    else
    {
      v45 = *(TupleTypeMetadata2 + 48);
      v46 = v69;
      OrderedDictionary.subscript.getter(v69, v69 + v45, v91, v94);
      v47 = v70;
      (*v83)(v70, v46, v84);
      v17 = v68;
      v39 = v71;
      (*v82)(v47 + *(TupleTypeMetadata2 + 48), v46 + v45, v18);
      v44 = v79;
      (*v67)(v79, v47, TupleTypeMetadata2);
      v85 = v42;
      OUTLINED_FUNCTION_0_61();
      swift_getWitnessTable();
      sub_1CA94C9A8();
      v43 = 0;
    }

    v48 = v78;
    __swift_storeEnumTagSinglePayload(v44, v43, 1, TupleTypeMetadata2);
    (*v77)(v48, v44, v80);
    if (__swift_getEnumTagSinglePayload(v48, 1, TupleTypeMetadata2) == 1)
    {

      v60 = v93;
      v61 = v64;
      *v64 = v92;
      *(v61 + 2) = v60;
      return result;
    }

    (*v82)(v39, v48 + *(TupleTypeMetadata2 + 48), v18);
    v49 = v18;
    v50 = v84;
    (*v83)(v17, v48, v84);
    v74(v39);
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_89();
    v51 = v76;
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v76);
    v55 = OUTLINED_FUNCTION_20_26();
    type metadata accessor for OrderedDictionary(v55, v56, v51, v72);
    OrderedDictionary.subscript.setter();
    v57 = OUTLINED_FUNCTION_11_31();
    v58(v57);
    v18 = v49;
  }

  (*(v66 + 8))(v17, v50);
  v62 = OUTLINED_FUNCTION_11_31();
  v63(v62);
}

uint64_t sub_1CA5CFED0(unint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1CA5CFF9C()
{
  result = qword_1EC446E28;
  if (!qword_1EC446E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446E28);
  }

  return result;
}

uint64_t sub_1CA5D0164(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC446E20, &qword_1CA98DE90);
    sub_1CA5CFF9C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CA5D0224(uint64_t a1)
{
  v2 = sub_1CA62E6C4(a1, *v1, *(v1 + 8), *(v1 + 16));
  v3 = RowTemplateParameterOptions.variablesDisabled.getter();
  v4 = objc_allocWithZone(type metadata accessor for ByteCountUnitPickerParameter());
  sub_1CA5D0CF8(1953066613, 0xE400000000000000, v3 & 1);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1CA3225FC();
  return v2;
}

uint64_t sub_1CA5D02CC(uint64_t a1, uint64_t *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = *a2;
  v5 = a2[1];
  v3[4] = *a2;
  v3[5] = v5;
  v6 = *v2;
  v7 = v2[1];
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_1CA5D0390;

  return sub_1CA62EC48(v4, v5, v6, v7);
}

uint64_t sub_1CA5D0390(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 56) = a1;
    v11 = OUTLINED_FUNCTION_3_46();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1CA5D04C4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  [*(v0 + 16) setNumber_];

  v4 = *(v2 + 24);
  v3 = *(v2 + 32);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1CA5D057C;
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);

  return sub_1CA5D0720(v7, v6, v4, v3);
}

uint64_t sub_1CA5D057C(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_1();
  *v8 = v7;

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 72) = a1;
    v11 = OUTLINED_FUNCTION_3_46();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1CA5D06B0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);
  [*(v0 + 16) setByteCountUnit_];

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA5D0720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA5D0744, 0, 0);
}

uint64_t sub_1CA5D0744()
{
  if (*(v0[2] + 16) && (v1 = sub_1CA271BF8(v0[4], v0[5]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[2] + 56) + 8 * v1);
    v0[6] = v3;
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v4 = swift_task_alloc();
      v0[7] = v4;
      *v4 = v0;
      v4[1] = sub_1CA5D0908;
      v5 = v0[3];

      return sub_1CA32BC3C(v5);
    }

    else
    {
      sub_1CA2A741C();
      swift_allocError();
      *v8 = v3;
      *(v8 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v9();
    }
  }

  else
  {
    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_1CA5D0908()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v4;
  *(v2 + 72) = v0;

  if (v0)
  {
    v5 = sub_1CA2A630C;
  }

  else
  {
    v5 = sub_1CA5D0A10;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA5D0A10()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    swift_unknownObjectRelease();
    v3 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRelease();
LABEL_5:
    swift_unknownObjectRelease();
    v4 = *(v0 + 8);

    return v4(v3);
  }

  sub_1CA2A741C();
  swift_allocError();
  v7 = v6;
  *(v6 + 24) = swift_getObjectType();
  *v7 = v1;
  *(v7 + 32) = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA5D0B58(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = sub_1CA5D0C10;

  return sub_1CA5D02CC(a1, a2);
}

uint64_t sub_1CA5D0C10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v1 = *v0;
  OUTLINED_FUNCTION_1();
  *v2 = v1;

  OUTLINED_FUNCTION_5();

  return v3();
}

id sub_1CA5D0CF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813C0;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 64) = v9;
  *(inited + 72) = @"HideClearButton";
  v10 = MEMORY[0x1E69E6370];
  *(inited + 80) = 1;
  *(inited + 104) = v10;
  *(inited + 112) = @"DisallowedVariableTypes";
  if (a3)
  {
    sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = v4;
    v13 = @"Key";
    v14 = @"HideClearButton";
    v15 = @"DisallowedVariableTypes";
    v16 = [ObjCClassFromMetadata allInsertableVariableTypes];
    type metadata accessor for WFVariableType(0);
    sub_1CA514750(&qword_1EC441A60, type metadata accessor for WFVariableType, &unk_1CA9804C8);
    v17 = sub_1CA94C8F8();

    sub_1CA3E4650(v17, v18, v19, v20, v21, v22, v23);
    v25 = v24;
  }

  else
  {
    v26 = @"Key";
    v27 = @"HideClearButton";
    v28 = @"DisallowedVariableTypes";
    v25 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 120) = v25;
  _s3__C3KeyVMa_0(0);
  sub_1CA514750(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v29 = sub_1CA94C1E8();
  v30 = sub_1CA2F864C(v29);
  v33.receiver = v4;
  v33.super_class = type metadata accessor for ByteCountUnitPickerParameter();
  v31 = objc_msgSendSuper2(&v33, sel_initWithDefinition_, v30);

  return v31;
}

uint64_t sub_1CA5D100C()
{
  v0 = *(static NSByteCountFormatterUnits.wf_validUnits.getter() + 16);
  if (v0)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1CA94D508();
    v1 = 32;
    do
    {
      v2 = sub_1CA94D168();
      v3 = [objc_allocWithZone(WFByteCountUnitSubstitutableState) initWithNumber_];

      v4 = WFVariableSubstitutableParameterStateUpcast(v3);
      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      v1 += 8;
      --v0;
    }

    while (v0);

    return v6;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1CA5D111C(void *a1)
{
  sub_1CA25B3D0(0, &unk_1EC446EC0, off_1E836DEE0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (!WFVariableSubstitutableParameterStateDowncast(a1, ObjCClassFromMetadata))
  {
    return 0;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3 || (v4 = [v3 number]) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  v6 = sub_1CA94D158();
  v7 = WFLabelForByteCountUnit(v6);
  v8 = sub_1CA94C3A8();
  swift_unknownObjectRelease();

  return v8;
}

id sub_1CA5D12EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ByteCountUnitPickerParameter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA5D139C()
{
  v43 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("geocode|latitude|longitude", 26);
  v44 = v5;
  v45 = v4;
  v6 = sub_1CA94C438("geocode|latitude|longitude", 26);
  v39 = v7;
  v40 = v6;
  v8 = sub_1CA948E58();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v39 - v42;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v41 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v39 - v41;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v45, v44, v40, v39, 0, 0, v10, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v45 = v18;
  *(inited + 80) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 1953392980;
  *(inited + 128) = 0xE400000000000000;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0x6E697070616DLL;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 184) = v19;
  *(inited + 192) = @"IconSymbolColor";
  *(inited + 200) = 0x6E65657247;
  *(inited + 208) = 0xE500000000000000;
  *(inited + 224) = v19;
  *(inited + 232) = @"Name";
  v20 = @"IconColor";
  v21 = @"IconSymbol";
  v22 = @"IconSymbolColor";
  v23 = @"Name";
  v24 = sub_1CA94C438("Get Details of Locations (Action Name)", 38);
  v26 = v25;
  v27 = sub_1CA94C438("Get Details of Locations", 24);
  v29 = v28;
  v44 = &v39;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v39 - v42;
  sub_1CA948D98();
  v31 = [v11 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v39 - v41;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v32);
  v35 = v45;
  *(inited + 240) = v34;
  *(inited + 264) = v35;
  *(inited + 272) = @"ResidentCompatible";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v36 = @"ResidentCompatible";
  v37 = sub_1CA94C368();
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 312) = v37;
  *(inited + 320) = 0xD000000000000015;
  *(inited + 328) = 0x80000001CA993430;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t WFAction.parameterState<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1CA94C368();
  v6 = [v4 parameterStateForKey_];

  if (!v6)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA5D1A3C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1CA5D1AF4;

  return WFAction.run(with:)();
}

uint64_t sub_1CA5D1AF4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[4];
  if (v2)
  {
    v10 = sub_1CA948AC8();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(v3[4], 0);
  }

  _Block_release(v4[4]);
  v11 = v8[1];

  return v11();
}

uint64_t WFAction.processParametersWithoutAskingForValues(withInput:workQueue:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  return OUTLINED_FUNCTION_0_62(sub_1CA5D1CA0);
}

uint64_t sub_1CA5D1CA0()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446ED0, &qword_1CA98E268);
  *v2 = v0;
  v2[1] = sub_1CA5D1DAC;

  return MEMORY[0x1EEE6DE38](&v0[1]);
}

uint64_t sub_1CA5D1DAC()
{
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v2 = v5;
  *(v5 + 64) = v0;

  if (v0)
  {
    v3 = sub_1CA5D1EC0;
  }

  else
  {

    v3 = sub_1CA5806B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CA5D1EC0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1CA5D1F24(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446ED8, &qword_1CA98E288);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_1CA5D26A8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA5D2178;
  aBlock[3] = &block_descriptor_27;
  v12 = _Block_copy(aBlock);

  [a2 processParametersWithoutAskingForValuesWithInput:0 workQueue:a3 completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_1CA5D20E0(uint64_t result, void *a2, id a3)
{
  if (result)
  {
    v3 = a2;
    sub_1CA94C218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446ED8, &qword_1CA98E288);
    return sub_1CA94C7E8();
  }

  else if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446ED8, &qword_1CA98E288);
    return sub_1CA94C7D8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA5D2178(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444280, &qword_1CA983550);
    v6 = sub_1CA94C1C8();
  }

  v8 = a3;
  v9 = a4;
  v7(v6, a3, a4);
}

uint64_t WFAction.contentItemClass.getter()
{
  [v0 contentItemClass];
  swift_getObjCClassMetadata();
  sub_1CA5D25A8();

  return swift_dynamicCastMetatypeUnconditional();
}

uint64_t sub_1CA5D22C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = sub_1CA94C368();
  v8 = [v5 *a5];

  if (v8)
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1CA2C0A74(v13);
    return 0;
  }
}

uint64_t sub_1CA5D23AC(SEL *a1)
{
  v2 = [v1 *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v3 = sub_1CA94C658();

  v4 = *(v3 + 16);
  if (v4)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1CA2B8DF8(0, v4, 0);
    v5 = v11;
    sub_1CA5D25A8();
    v6 = 32;
    do
    {
      v7 = swift_dynamicCastMetatypeUnconditional();
      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1CA2B8DF8(v8 > 1, v9 + 1, 1);
      }

      *(v11 + 16) = v9 + 1;
      *(v11 + 8 * v9 + 32) = v7;
      v6 += 8;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

Swift::Bool __swiftcall WFAction.canHandleInput(of:supportedClasses:includingCoercedTypes:)(Swift::OpaquePointer of, Swift::OpaquePointer supportedClasses, Swift::Bool includingCoercedTypes)
{
  sub_1CA360CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
  v5 = sub_1CA94C648();

  sub_1CA360CAC();
  v6 = sub_1CA94C648();

  v7 = [v3 canHandleInputOfContentClasses:v5 withSupportedClasses:v6 includingCoercedTypes:includingCoercedTypes];

  return v7;
}

unint64_t sub_1CA5D25A8()
{
  result = qword_1EDB9F790;
  if (!qword_1EDB9F790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB9F790);
  }

  return result;
}

uint64_t sub_1CA5D25F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CA2DBC14;

  return sub_1CA5D1A3C(v2, v3, v4);
}

uint64_t sub_1CA5D26A8(uint64_t a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446ED8, &qword_1CA98E288);

  return sub_1CA5D20E0(a1, a2, a3);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1CA5D2788()
{
  v29[0] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"IconColor";
  *(inited + 80) = 1953392980;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 104) = v1;
  *(inited + 112) = @"IconSymbol";
  *(inited + 120) = 0xD000000000000026;
  *(inited + 128) = 0x80000001CA9D3340;
  *(inited + 144) = v1;
  *(inited + 152) = @"IconSymbolColor";
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 184) = v1;
  *(inited + 192) = @"Input";
  v2 = @"ActionClass";
  v3 = @"IconColor";
  v4 = @"IconSymbol";
  v5 = @"IconSymbolColor";
  v6 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v7 = sub_1CA94C1E8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 200) = v7;
  *(inited + 224) = v8;
  *(inited + 232) = @"LocallyProcessesData";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v9;
  *(inited + 272) = @"Name";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438("Filter Files (Action Name)", 26, v29[0]);
  v14 = v13;
  v15 = sub_1CA94C438("Filter Files", 12);
  v17 = v16;
  v18 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v21 = [qword_1EDB9F690 bundleURL];
  v22 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v20, v24);
  *(inited + 304) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 280) = v26;
  v27 = sub_1CA94C368();
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 312) = v27;
  *(inited + 320) = 0xD000000000000018;
  *(inited + 328) = 0x80000001CA9933D0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA5D2B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"AppSearchType";
  *(inited + 40) = 0x7070416E65704FLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 64) = v4;
  *(inited + 72) = @"Class";
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000001CA99B070;
  *(inited + 104) = v4;
  *(inited + 112) = @"Label";
  v5 = @"AppSearchType";
  v6 = @"Class";
  v7 = @"Label";
  v8 = sub_1CA94C438("App (RowTemplateAppValueType)", 29);
  v52 = v9;
  v10 = sub_1CA94C438("App", 3);
  v12 = v11;
  v13 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDB9F690;
  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v8, v52, v10, v12, 0, 0, v15, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Key";
  *(inited + 160) = 0x65756C6176;
  *(inited + 168) = 0xE500000000000000;
  v24 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"Placeholder";
  v25 = @"Key";
  v26 = @"Placeholder";
  sub_1CA94C438("Choose", 6);
  v27 = sub_1CA94C368();
  v28 = sub_1CA94C368();

  v29 = [v16 localizedStringForKey:v27 value:v28 table:0];

  v30 = sub_1CA94C3A8();
  v32 = v31;

  *(inited + 200) = v30;
  *(inited + 208) = v32;
  *(inited + 224) = v24;
  *(inited + 232) = @"DisallowedVariableTypes";
  v33 = @"DisallowedVariableTypes";
  if (RowTemplateParameterOptions.variablesDisabled.getter())
  {
    sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
    v34 = [swift_getObjCClassFromMetadata() allInsertableVariableTypes];
    type metadata accessor for WFVariableType(0);
    sub_1CA514750(&qword_1EC441A60, type metadata accessor for WFVariableType, &unk_1CA9804C8);
    v35 = sub_1CA94C8F8();

    sub_1CA3E4650(v35, v36, v37, v38, v39, v40, v41);
    v43 = v42;
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 240) = v43;
  _s3__C3KeyVMa_0(0);
  sub_1CA514750(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v44 = sub_1CA94C1E8();
  v45 = sub_1CA2F864C(v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_1CA981310;
  v47 = v55;
  *(v46 + 32) = v54;
  *(v46 + 40) = v47;
  v48 = objc_allocWithZone(WFAppPickerParameter);
  sub_1CA94C218();
  *(v46 + 48) = [v48 initWithDefinition_];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v49 = sub_1CA94C1E8();

  return v49;
}

uint64_t sub_1CA5D30E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a1;
  v4[21] = a3;
  v5 = *a2;
  v4[22] = a4;
  v4[23] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1CA5D3110, 0, 0);
}

uint64_t sub_1CA5D3110()
{
  if ([*(v0 + 160) numberOfItems])
  {
    v1 = sub_1CA323E28();
    *(v0 + 192) = v1;
    if (v1)
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2)
      {
        v3 = [v2 value];
        *(v0 + 200) = v3;
        if (v3)
        {
          v4 = v3;
          *(v0 + 208) = sub_1CA61D300(v3);
          *(v0 + 216) = v5;
          if (v5)
          {
            v6 = *(v0 + 160);
            sub_1CA25B3D0(0, &qword_1EC445FC8, 0x1E6996C80);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            *(v0 + 16) = v0;
            *(v0 + 56) = v0 + 144;
            *(v0 + 24) = sub_1CA5D3310;
            v8 = swift_continuation_init();
            *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD8, &qword_1CA988C48);
            *(v0 + 80) = MEMORY[0x1E69E9820];
            *(v0 + 88) = 1107296256;
            *(v0 + 96) = sub_1CA470E00;
            *(v0 + 104) = &block_descriptor_28;
            *(v0 + 112) = v8;
            [v6 getObjectRepresentations:v0 + 80 forClass:ObjCClassFromMetadata];

            return MEMORY[0x1EEE6DEC8](v0 + 16);
          }
        }
      }

      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_2_4();

  return v9(0);
}

uint64_t sub_1CA5D3310()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {

    v2 = sub_1CA5D365C;
  }

  else
  {
    v2 = sub_1CA5D3428;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1CA5D3428()
{
  v1 = *(v0 + 144);

  v2 = sub_1CA4F878C(v1);

  if (v2)
  {
    v3 = sub_1CA25B410(v2);
    if (v3)
    {
      v8 = v3;
      v30 = MEMORY[0x1E69E7CC0];
      sub_1CA271524(0, v3 & ~(v3 >> 63), 0, v4, v5, v6, v7);
      if (v8 < 0)
      {
        __break(1u);
        return;
      }

      v29 = v0;
      v9 = 0;
      v10 = v30;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1CCAA22D0](v9, v2);
        }

        else
        {
          v11 = *(v2 + 8 * v9 + 32);
        }

        v12 = v11;
        v13 = [v11 bundleIdentifier];
        v14 = sub_1CA94C3A8();
        v16 = v15;

        v22 = *(v30 + 16);
        v21 = *(v30 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1CA271524(v21 > 1, v22 + 1, 1, v17, v18, v19, v20);
        }

        ++v9;
        *(v30 + 16) = v22 + 1;
        v23 = v30 + 16 * v22;
        *(v23 + 32) = v14;
        *(v23 + 40) = v16;
      }

      while (v8 != v9);

      v0 = v29;
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    v25 = *(v0 + 216);
    v26 = *(v0 + 200);
    *(v0 + 80) = *(v0 + 208);
    *(v0 + 88) = v25;
    v27 = swift_task_alloc();
    *(v27 + 16) = v0 + 80;
    v24 = sub_1CA2BFD14(sub_1CA2E9370, v27, v10);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    v24 = 0;
  }

  OUTLINED_FUNCTION_2_4();

  v28(v24);
}

uint64_t sub_1CA5D365C(uint64_t a1)
{
  v2 = *(v1 + 200);
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_4();

  return v3(0);
}

uint64_t sub_1CA5D36D8(uint64_t a1, uint64_t *a2)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1CA5D378C;

  return sub_1CA5D30E8(a1, a2, v7, v6);
}

uint64_t sub_1CA5D378C(char a1)
{

  OUTLINED_FUNCTION_2_4();
  if (v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1 & 1;
  }

  return v3(v4);
}

id sub_1CA5D38F8()
{
  v34 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Input";
  v6 = @"Input";
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v7 = sub_1CA94C1E8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 120) = v7;
  *(inited + 144) = v8;
  *(inited + 152) = @"LocallyProcessesData";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v9;
  *(inited + 192) = @"Name";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438("Find Music (Action Name)", 24);
  v32 = v13;
  v14 = sub_1CA94C438("Find Music", 10);
  v16 = v15;
  v17 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v20 = [qword_1EDB9F690 bundleURL];
  v21 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v12, v32, v14, v16, 0, 0, v19, v23);
  v26 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v25;
  *(inited + 224) = v26;
  *(inited + 232) = @"RequiredResources";
  *(inited + 264) = v33;
  *(inited + 240) = &unk_1F4A08CA0;
  v27 = @"RequiredResources";
  v28 = sub_1CA94C368();
  v29 = MEMORY[0x1E69E6158];
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v28;
  *(inited + 280) = 0xD000000000000014;
  *(inited + 288) = 0x80000001CA997EB0;
  v30 = sub_1CA94C368();
  *(inited + 344) = v29;
  *(inited + 312) = v30;
  *(inited + 320) = 0x747369747241;
  *(inited + 328) = 0xE600000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5D3D64()
{
  v32 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981380;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v31 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438("Get Details of Podcast Episode (Action Name)", 44);
  v11 = v10;
  v12 = sub_1CA94C438("Get Details of Podcast Episode", 30);
  v14 = v13;
  v15 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v17, v21);
  v24 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v23;
  *(inited + 184) = v24;
  *(inited + 192) = @"Output";
  v25 = @"Output";
  v26 = MEMORY[0x1E69E6158];
  v27 = sub_1CA94C1E8();
  *(inited + 224) = v31;
  *(inited + 200) = v27;
  v28 = sub_1CA94C368();
  *(inited + 264) = v26;
  *(inited + 232) = v28;
  *(inited + 240) = 0xD00000000000001BLL;
  *(inited + 248) = 0x80000001CA9944C0;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5D4150()
{
  v44 = sub_1CA94B4D8();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v41 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v2 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9D38B0;
  *(inited + 64) = v2;
  *(inited + 72) = @"ActionKeywords";
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438("service|phone|airplane|turn", 27);
  v7 = v6;
  v8 = sub_1CA94C438("service|phone|airplane|turn", 27);
  v10 = v9;
  v11 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = MEMORY[0x1E69E6158];
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v23;
  *(inited + 144) = v24;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x6E65657247;
  *(inited + 168) = 0xE500000000000000;
  *(inited + 184) = v22;
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000021;
  *(inited + 208) = 0x80000001CA9D38F0;
  *(inited + 224) = v22;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v25 = @"IconColor";
  v26 = @"IconSymbol";
  v27 = @"InputPassthrough";
  v28 = sub_1CA94C368();
  *(inited + 304) = v22;
  *(inited + 272) = v28;
  *(inited + 280) = 0xD000000000000057;
  *(inited + 288) = 0x80000001CA9D3920;
  *(inited + 312) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v29 = swift_initStackObject();
  v41 = xmmword_1CA981310;
  *(v29 + 16) = xmmword_1CA981310;
  *(v29 + 32) = 0x6574617473;
  *(v29 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v30 = swift_initStackObject();
  *(v30 + 16) = v41;
  *(v30 + 64) = v22;
  *(v30 + 32) = @"Key";
  *(v30 + 40) = 0x65756C61566E4FLL;
  *(v30 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v31 = @"Key";
  v32 = sub_1CA94C1E8();
  *(v29 + 48) = sub_1CA2F864C(v32);
  v33 = sub_1CA94C1E8();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 320) = v33;
  *(inited + 344) = v34;
  *(inited + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1CA9813B0;
  v36 = v43;
  (*(v42 + 104))(v43, *MEMORY[0x1E69DB3C0], v44);
  v37 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource(0));
  v38 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v36);
  *(v35 + 32) = v39;
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444680, &qword_1CA9839D8);
  *(inited + 360) = v35;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5D4808()
{
  v235 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000023;
  *(inited + 48) = 0x80000001CA9D3990;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  v246 = inited;
  v245 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1CA981310;
  *(v2 + 32) = @"DescriptionSummary";
  v3 = @"ActionClass";
  v4 = @"Description";
  v5 = @"DescriptionSummary";
  v6 = sub_1CA94C438("Creates a Quick Response (QR) code for the specified text.", 58);
  v8 = v7;
  v9 = sub_1CA94C438("Creates a Quick Response (QR) code for the specified text.", 58);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v251 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v252 = v13;
  v14 = &v229 - v251;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v249 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v248 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v250 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v229 - v250;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v14, v18);
  v247 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v2 + 64) = v247;
  *(v2 + 40) = v20;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v21 = sub_1CA94C1E8();
  v22 = v245;
  v23 = sub_1CA6B3784(v21);
  v24 = v246;
  v246[10] = v23;
  v24[13] = v22;
  v24[14] = @"IconName";
  v24[15] = 0x65646F43205251;
  v24[16] = 0xE700000000000000;
  v25 = MEMORY[0x1E69E6158];
  v24[18] = MEMORY[0x1E69E6158];
  v24[19] = @"Input";
  v26 = v24;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v27 = swift_initStackObject();
  v244 = xmmword_1CA981350;
  *(v27 + 16) = xmmword_1CA981350;
  *(v27 + 32) = 0x656C7069746C754DLL;
  *(v27 + 40) = 0xE800000000000000;
  v28 = MEMORY[0x1E69E6370];
  *(v27 + 48) = 1;
  *(v27 + 72) = v28;
  strcpy((v27 + 80), "ParameterKey");
  *(v27 + 93) = 0;
  *(v27 + 94) = -5120;
  *(v27 + 96) = 0x747865544657;
  *(v27 + 104) = 0xE600000000000000;
  *(v27 + 120) = v25;
  *(v27 + 128) = 0x6465726975716552;
  *(v27 + 136) = 0xE800000000000000;
  *(v27 + 144) = 1;
  *(v27 + 168) = v28;
  *(v27 + 176) = 0x7365707954;
  v29 = v28;
  *(v27 + 184) = 0xE500000000000000;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v27 + 216) = v245;
  *(v27 + 192) = &unk_1F4A08DC8;
  v30 = @"IconName";
  v31 = @"Input";
  v32 = sub_1CA94C1E8();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v243 = v33;
  v26[20] = v32;
  v26[23] = v33;
  v26[24] = @"LocallyProcessesData";
  *(v26 + 200) = 1;
  v26[28] = v29;
  v26[29] = @"Name";
  v34 = @"LocallyProcessesData";
  v35 = @"Name";
  v36 = sub_1CA94C438("Create QR Code (Action Name)", 28);
  v239 = v37;
  v240 = v36;
  v38 = sub_1CA94C438("Create QR Code", 14);
  v40 = v39;
  v241 = &v229;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v229 - v251;
  sub_1CA948D98();
  v42 = v249;
  v43 = [v249 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = v250;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v240, v239, v38, v40, 0, 0, v41, &v229 - v44);
  v47 = v246;
  v48 = v247;
  v246[30] = v46;
  v47[33] = v48;
  v47[34] = @"Output";
  v49 = swift_initStackObject();
  *(v49 + 16) = v244;
  *(v49 + 32) = 0x75736F6C63736944;
  *(v49 + 40) = 0xEF6C6576654C6572;
  *(v49 + 48) = 0x63696C627550;
  *(v49 + 56) = 0xE600000000000000;
  *(v49 + 72) = MEMORY[0x1E69E6158];
  *(v49 + 80) = 0x656C7069746C754DLL;
  *(v49 + 88) = 0xE800000000000000;
  *(v49 + 96) = 1;
  *(v49 + 120) = MEMORY[0x1E69E6370];
  *(v49 + 128) = 0x614E74757074754FLL;
  *(v49 + 136) = 0xEA0000000000656DLL;
  v50 = @"Output";
  v51 = sub_1CA94C438("QR Code (Default Output Name)", 29);
  v240 = v52;
  v241 = v51;
  v239 = sub_1CA94C438("QR Code", 7);
  v54 = v53;
  v242 = &v229;
  MEMORY[0x1EEE9AC00](v239);
  v55 = &v229 - v251;
  sub_1CA948D98();
  v56 = [v42 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 144) = sub_1CA2F9F14(v241, v240, v239, v54, 0, 0, v55, &v229 - v44);
  *(v49 + 168) = v48;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 216) = v245;
  *(v49 + 184) = 0xE500000000000000;
  *(v49 + 192) = &unk_1F4A08DF8;
  v58 = MEMORY[0x1E69E6158];
  v59 = sub_1CA94C1E8();
  v60 = v246;
  v246[35] = v59;
  v60[38] = v243;
  v60[39] = @"Parameters";
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v240 = swift_allocObject();
  *(v240 + 16) = xmmword_1CA981560;
  v245 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v61 = swift_allocObject();
  v233 = xmmword_1CA981370;
  *(v61 + 16) = xmmword_1CA981370;
  *(v61 + 32) = @"Class";
  *(v61 + 40) = 0xD000000000000014;
  *(v61 + 48) = 0x80000001CA99B500;
  *(v61 + 64) = v58;
  *(v61 + 72) = @"Key";
  *(v61 + 80) = 0x747865544657;
  *(v61 + 88) = 0xE600000000000000;
  *(v61 + 104) = v58;
  *(v61 + 112) = @"Label";
  v62 = @"Class";
  v63 = @"Key";
  v64 = @"Label";
  v65 = v62;
  v66 = v63;
  v67 = v64;
  v237 = v65;
  v238 = v66;
  v239 = v67;
  v68 = @"Parameters";
  v242 = sub_1CA94C438("Text (WFText)", 13);
  v236 = v69;
  v70 = sub_1CA94C438("Text", 4);
  v232 = v71;
  v243 = &v229;
  MEMORY[0x1EEE9AC00](v70);
  v72 = v251;
  sub_1CA948D98();
  v73 = v249;
  v74 = [v249 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v229 - v250;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 120) = sub_1CA2F9F14(v242, v236, v70, v232, 0, 0, &v229 - v72, v75);
  v77 = v247;
  *(v61 + 144) = v247;
  *(v61 + 152) = @"Multiline";
  *(v61 + 160) = 1;
  *(v61 + 184) = MEMORY[0x1E69E6370];
  *(v61 + 192) = @"Placeholder";
  v78 = @"Multiline";
  v79 = @"Placeholder";
  v242 = sub_1CA94C438("Text (WFText)", 13);
  v236 = v80;
  v81 = sub_1CA94C438("Text", 4);
  v83 = v82;
  v243 = &v229;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v229 - v72;
  sub_1CA948D98();
  v85 = [v73 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v229 - v250;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v242, v236, v81, v83, 0, 0, v84, v86);
  *(v61 + 224) = v77;
  *(v61 + 200) = v88;
  _s3__C3KeyVMa_0(0);
  v243 = v89;
  v242 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v90 = sub_1CA94C1E8();
  v91 = sub_1CA2F864C(v90);
  *(v240 + 32) = v91;
  v92 = swift_allocObject();
  *(v92 + 16) = v244;
  v236 = 0x80000001CA9A7720;
  v93 = v237;
  *(v92 + 32) = v237;
  *(v92 + 40) = 0xD000000000000016;
  *(v92 + 48) = 0x80000001CA9A7720;
  v94 = MEMORY[0x1E69E6158];
  *(v92 + 64) = MEMORY[0x1E69E6158];
  *(v92 + 72) = @"DefaultValue";
  v95 = objc_allocWithZone(MEMORY[0x1E69E09E0]);
  v96 = @"DefaultValue";
  v237 = v93;
  v230 = v96;
  v97 = [v95 initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v98 = [v97 serializedRepresentation];

  v99 = sub_1CA94C1C8();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444060, &qword_1CA981AE0);
  *(v92 + 80) = v99;
  v101 = v238;
  v102 = v239;
  *(v92 + 104) = v100;
  *(v92 + 112) = v101;
  v231 = 0xD000000000000013;
  v232 = v100;
  *(v92 + 120) = 0xD000000000000013;
  *(v92 + 128) = 0x80000001CA9D3A60;
  *(v92 + 144) = v94;
  *(v92 + 152) = v102;
  v238 = v101;
  v239 = v102;
  v103 = sub_1CA94C438("Foreground Color (WFQRForegroundColor)", 38);
  v105 = v104;
  v106 = sub_1CA94C438("Foreground Color", 16);
  v108 = v107;
  v229 = &v229;
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v229 - v251;
  sub_1CA948D98();
  v110 = [v249 bundleURL];
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v229 - v250;
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v103, v105, v106, v108, 0, 0, v109, v111);
  *(v92 + 184) = v247;
  *(v92 + 160) = v113;
  v114 = sub_1CA94C1E8();
  v115 = sub_1CA2F864C(v114);
  *(v240 + 40) = v115;
  v116 = swift_allocObject();
  *(v116 + 16) = v244;
  v117 = v237;
  *(v116 + 32) = v237;
  *(v116 + 40) = 0xD000000000000016;
  *(v116 + 48) = v236;
  v118 = MEMORY[0x1E69E6158];
  v119 = v230;
  *(v116 + 64) = MEMORY[0x1E69E6158];
  *(v116 + 72) = v119;
  v120 = objc_allocWithZone(MEMORY[0x1E69E09E0]);
  v237 = v117;
  v236 = v119;
  v121 = [v120 initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v122 = [v121 serializedRepresentation];

  v123 = sub_1CA94C1C8();
  *(v116 + 80) = v123;
  v124 = v231;
  v125 = v238;
  v126 = v239;
  *(v116 + 104) = v232;
  *(v116 + 112) = v125;
  *(v116 + 120) = v124;
  *(v116 + 128) = 0x80000001CA9D3AD0;
  *(v116 + 144) = v118;
  *(v116 + 152) = v126;
  v238 = v125;
  v239 = v126;
  v127 = sub_1CA94C438("Background Color (WFQRBackgroundColor)", 38);
  v129 = v128;
  v130 = sub_1CA94C438("Background Color", 16);
  v132 = v131;
  v232 = &v229;
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v229 - v251;
  sub_1CA948D98();
  v134 = [v249 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v229 - v250;
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v127, v129, v130, v132, 0, 0, v133, v135);
  *(v116 + 184) = v247;
  *(v116 + 160) = v137;
  v138 = sub_1CA94C1E8();
  v139 = sub_1CA2F864C(v138);
  v140 = v240;
  *(v240 + 48) = v139;
  v141 = swift_allocObject();
  *(v141 + 16) = v244;
  *(v141 + 32) = v237;
  *(v141 + 40) = 0xD000000000000011;
  *(v141 + 48) = 0x80000001CA99E620;
  v142 = MEMORY[0x1E69E6158];
  v143 = v236;
  *(v141 + 64) = MEMORY[0x1E69E6158];
  *(v141 + 72) = v143;
  *(v141 + 80) = 0;
  v144 = v238;
  *(v141 + 104) = MEMORY[0x1E69E6370];
  *(v141 + 112) = v144;
  *(v141 + 120) = 0x6E756F5252514657;
  *(v141 + 128) = 0xEB00000000646564;
  v145 = v239;
  *(v141 + 144) = v142;
  *(v141 + 152) = v145;
  v146 = sub_1CA94C438("Rounded (WFQRRounded)", 21);
  v232 = v147;
  v148 = sub_1CA94C438("Rounded", 7);
  v150 = v149;
  *&v244 = &v229;
  MEMORY[0x1EEE9AC00](v148);
  v151 = &v229 - v251;
  sub_1CA948D98();
  v152 = [v249 bundleURL];
  MEMORY[0x1EEE9AC00](v152);
  v153 = &v229 - v250;
  sub_1CA948B68();

  v154 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v155 = sub_1CA2F9F14(v146, v232, v148, v150, 0, 0, v151, v153);
  *(v141 + 184) = v247;
  *(v141 + 160) = v155;
  v156 = sub_1CA94C1E8();
  *(v140 + 56) = sub_1CA2F864C(v156);
  v157 = swift_allocObject();
  *(v157 + 16) = v233;
  *(v157 + 32) = v237;
  *(v157 + 40) = 0xD000000000000016;
  *(v157 + 48) = 0x80000001CA99C4A0;
  v158 = MEMORY[0x1E69E6158];
  v159 = v236;
  *(v157 + 64) = MEMORY[0x1E69E6158];
  *(v157 + 72) = v159;
  *(v157 + 80) = 0x6D756964654DLL;
  *(v157 + 88) = 0xE600000000000000;
  *(v157 + 104) = v158;
  *(v157 + 112) = @"Items";
  *&v244 = swift_allocObject();
  *(v244 + 16) = xmmword_1CA981570;
  v160 = @"Items";
  v161 = sub_1CA94C438("Low (WFQRErrorCorrectionLevel)", 30);
  v236 = v162;
  v237 = v161;
  v163 = sub_1CA94C438("Low", 3);
  v234 = v164;
  v241 = &v229;
  MEMORY[0x1EEE9AC00](v163);
  v165 = v251;
  sub_1CA948D98();
  v166 = v249;
  v167 = [v249 bundleURL];
  *&v233 = &v229;
  MEMORY[0x1EEE9AC00](v167);
  v168 = &v229 - v250;
  sub_1CA948B68();

  v169 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v170 = sub_1CA2F9F14(v237, v236, v163, v234, 0, 0, &v229 - v165, v168);
  v171 = v244;
  *(v244 + 32) = v170;
  v172 = sub_1CA94C438("Medium (WFQRErrorCorrectionLevel)", 33);
  v236 = v173;
  v237 = v172;
  v234 = sub_1CA94C438("Medium", 6);
  v175 = v174;
  v241 = &v229;
  MEMORY[0x1EEE9AC00](v234);
  sub_1CA948D98();
  v176 = [v166 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  v177 = v250;
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v171 + 40) = sub_1CA2F9F14(v237, v236, v234, v175, 0, 0, &v229 - v165, &v229 - v177);
  v179 = sub_1CA94C438("Quartile (WFQRErrorCorrectionLevel)", 35);
  v236 = v180;
  v237 = v179;
  v181 = sub_1CA94C438("Quartile", 8);
  v234 = v182;
  v241 = &v229;
  MEMORY[0x1EEE9AC00](v181);
  v183 = &v229 - v251;
  sub_1CA948D98();
  v184 = [v249 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  sub_1CA948B68();

  v185 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v186 = sub_1CA2F9F14(v237, v236, v181, v234, 0, 0, v183, &v229 - v177);
  *(v244 + 48) = v186;
  v187 = sub_1CA94C438("High (WFQRErrorCorrectionLevel)", 31);
  v236 = v188;
  v237 = v187;
  v189 = sub_1CA94C438("High", 4);
  v234 = v190;
  v241 = &v229;
  MEMORY[0x1EEE9AC00](v189);
  v191 = v251;
  sub_1CA948D98();
  v192 = v249;
  v193 = [v249 bundleURL];
  MEMORY[0x1EEE9AC00](v193);
  v194 = v250;
  sub_1CA948B68();

  v195 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v196 = sub_1CA2F9F14(v237, v236, v189, v234, 0, 0, &v229 - v191, &v229 - v194);
  v197 = v244;
  *(v244 + 56) = v196;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v157 + 120) = v197;
  v199 = v238;
  *(v157 + 144) = v198;
  *(v157 + 152) = v199;
  *(v157 + 160) = 0xD000000000000018;
  *(v157 + 168) = 0x80000001CA9D3C10;
  v200 = v239;
  *(v157 + 184) = MEMORY[0x1E69E6158];
  *(v157 + 192) = v200;
  v241 = sub_1CA94C438("Error Correction (WFQRErrorCorrectionLevel)", 43);
  v239 = v201;
  v238 = sub_1CA94C438("Error Correction", 16);
  v203 = v202;
  *&v244 = &v229;
  MEMORY[0x1EEE9AC00](v238);
  sub_1CA948D98();
  v204 = [v192 bundleURL];
  MEMORY[0x1EEE9AC00](v204);
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v206 = sub_1CA2F9F14(v241, v239, v238, v203, 0, 0, &v229 - v191, &v229 - v194);
  *(v157 + 224) = v247;
  *(v157 + 200) = v206;
  v207 = sub_1CA94C1E8();
  v208 = sub_1CA2F864C(v207);
  v209 = v240;
  *(v240 + 64) = v208;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v211 = v246;
  v246[40] = v209;
  v211[43] = v210;
  v211[44] = @"ParameterSummary";
  v212 = @"ParameterSummary";
  v213 = sub_1CA94C438("Create QR code for ${WFText} (Parameter Summary)", 48);
  v215 = v214;
  v216 = sub_1CA94C438("Create QR code for ${WFText}", 28);
  v218 = v217;
  MEMORY[0x1EEE9AC00](v216);
  v219 = &v229 - v251;
  sub_1CA948D98();
  v220 = [v249 bundleURL];
  MEMORY[0x1EEE9AC00](v220);
  v221 = &v229 - v250;
  sub_1CA948B68();

  v222 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v223 = sub_1CA2F9F14(v213, v215, v216, v218, 0, 0, v219, v221);
  v224 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v225 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v226 = v246;
  v246[45] = v224;
  v226[48] = v225;
  v226[49] = @"ResidentCompatible";
  v226[53] = MEMORY[0x1E69E6370];
  *(v226 + 400) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v227 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5D62D0()
{
  v72 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ELL;
  *(inited + 48) = 0x80000001CA9D3CF0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("file|document", 13);
  v6 = v5;
  v7 = sub_1CA94C438("file|document", 13);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = v11;
  v12 = &v68 - v77;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v76 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v74 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v75 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v68 - v75;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v73 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v71 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets the files that are currently selected in Finder.", 53);
  v69 = v27;
  v28 = sub_1CA94C438("Gets the files that are currently selected in Finder.", 53);
  v30 = v29;
  v70 = &v68;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v68 - v77;
  sub_1CA948D98();
  v32 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v68 - v75;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v69, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v73;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v71;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"Name";
  v38 = @"Name";
  v39 = sub_1CA94C438("Get Selected Files in Finder (Action Name)", 42);
  v41 = v40;
  v42 = sub_1CA94C438("Get Selected Files in Finder", 28);
  v44 = v43;
  v71 = &v68;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v68 - v77;
  sub_1CA948D98();
  v46 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v68 - v75;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v39, v41, v42, v44, 0, 0, v45, v47);
  *(inited + 224) = v73;
  *(inited + 232) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x75736F6C63736944;
  *(v49 + 40) = 0xEF6C6576654C6572;
  *(v49 + 48) = 0x65746176697250;
  *(v49 + 56) = 0xE700000000000000;
  *(v49 + 72) = MEMORY[0x1E69E6158];
  *(v49 + 80) = 0x656C7069746C754DLL;
  *(v49 + 88) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 96) = 1;
  *(v49 + 120) = v50;
  *(v49 + 128) = 0x614E74757074754FLL;
  *(v49 + 136) = 0xEA0000000000656DLL;
  v51 = @"Output";
  v52 = sub_1CA94C438("Selected File (Default Output Name)", 35);
  v70 = v53;
  v54 = sub_1CA94C438("Selected File", 13);
  v56 = v55;
  v71 = &v68;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v68 - v77;
  sub_1CA948D98();
  v58 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v68 - v75;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 144) = sub_1CA2F9F14(v52, v70, v54, v56, 0, 0, v57, v59);
  *(v49 + 168) = v73;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 184) = 0xE500000000000000;
  *(v49 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 192) = &unk_1F4A08E68;
  v61 = sub_1CA94C1E8();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v61;
  *(inited + 264) = v62;
  *(inited + 272) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1CA9813B0;
  v79 = 2;
  v80 = 0;
  v64 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v65 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v79);
  *(v63 + 32) = v66;
  *(inited + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 280) = v63;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t WFAction.isLinkSystemFrameworkIntent.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = [v0 metadata];
    if (v1)
    {
      v2 = v1;
      v3 = &qword_1EC444660;
      v4 = 0x1E69AC670;
LABEL_7:
      sub_1CA25B3D0(0, v3, v4);
      v7 = sub_1CA94CF38();

      return v7 & 1;
    }
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 queryMetadata];
    if (v6)
    {
      v2 = v6;
      v3 = &qword_1EC4445B0;
      v4 = 0x1E69AC980;
      goto LABEL_7;
    }
  }

  return 0;
}

objc_class *WFAction.toolkitSystemProtocols.getter()
{
  v1 = v0;
  v282 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v274 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_1();
  v281 = v4;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_45_0();
  v278 = v6;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_45_0();
  v268 = v8;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v9);
  v271 = v255 - v10;
  v11 = sub_1CA94B488();
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_6_2();
  v280 = v12;
  v277 = sub_1CA94B568();
  OUTLINED_FUNCTION_1_0();
  v273 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6_2();
  v276 = v15;
  sub_1CA94A158();
  OUTLINED_FUNCTION_1_0();
  v283 = v16;
  v284 = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_1();
  v269 = v18;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_45_0();
  v270 = v20;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_45_0();
  v272 = v22;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_45_0();
  v275 = v24;
  OUTLINED_FUNCTION_31_2();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v255 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = v255 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = v255 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = (v255 - v36);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = v255 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = (v255 - v42);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = v255 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = v255 - v48;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_45_0();
  v279 = v50;
  OUTLINED_FUNCTION_31_2();
  MEMORY[0x1EEE9AC00](v51);
  v53 = v255 - v52;
  type metadata accessor for WFGetAppSettingAction();
  OUTLINED_FUNCTION_13_32();
  if (swift_dynamicCastClass())
  {
    v54 = *MEMORY[0x1E69DA990];
    v56 = v283;
    v55 = v284;
    v281 = *(v284 + 104);
    v281(v53, v54, v283);
    OUTLINED_FUNCTION_4_48();
    v58 = v57;
    v60 = *(v57 + 16);
    v59 = *(v57 + 24);
    if (v60 >= v59 >> 1)
    {
      OUTLINED_FUNCTION_18(v59);
      sub_1CA2E7478();
      v58 = v245;
    }

    v61 = v279;
    v282 = v60 + 1;
    *(v58 + 16) = v60 + 1;
    v64 = *(v55 + 32);
    v62 = v55 + 32;
    v63 = v64;
    v65 = *(v62 + 48);
    v66 = v62;
    v67 = v58;
    v68 = (v65 + 32) & ~v65;
    v69 = *(v66 + 40);
    v284 = v66;
    v64(v58 + v68 + v69 * v60, v53, v56);
    *v61 = MEMORY[0x1E69E7CC0];
    v281(v61, *MEMORY[0x1E69DA958], v56);
    v70 = v67;
    v71 = *(v67 + 24);
    if ((v60 + 2) > (v71 >> 1))
    {
      OUTLINED_FUNCTION_18(v71);
      sub_1CA2E7478();
      v70 = v246;
    }

    *(v70 + 16) = v60 + 2;
    v63(v70 + v68 + v69 * v282, v61, v56);
    return v70;
  }

  v263 = v37;
  v267 = v46;
  v265 = v40;
  v279 = v34;
  *&v266 = v31;
  v261 = v28;
  v72 = v283;
  objc_opt_self();
  OUTLINED_FUNCTION_13_32();
  v73 = swift_dynamicCastObjCClass();
  if (v73)
  {
    v74 = v73;
    if ([v73 isFetchingUniqueEntity])
    {
      v75 = [v74 entityMetadata];
      v76 = [v75 properties];

      sub_1CA25B3D0(0, &unk_1EC4419B0, 0x1E69AC958);
      v77 = sub_1CA94C658();

      v78 = sub_1CA25B410(v77);

      if (v78 == 1)
      {
        v79 = *(v284 + 104);
        v80 = v49;
        (v79)(v49, *MEMORY[0x1E69DA990], v72);
        OUTLINED_FUNCTION_4_48();
        v82 = *(v81 + 16);
        v83 = v81;
        if (v82 >= *(v81 + 24) >> 1)
        {
          sub_1CA2E7478();
          v83 = v249;
        }

        v282 = v82 + 1;
        *(v83 + 16) = v82 + 1;
        v84 = *(v284 + 32);
        v85 = (*(v284 + 80) + 32) & ~*(v284 + 80);
        v86 = *(v284 + 72);
        v84(v83 + v85 + v86 * v82, v80, v72);
        *v267 = MEMORY[0x1E69E7CC0];
        v87 = v72;
        v70 = v83;
        v79();
        v88 = *(v83 + 24);
        if ((v82 + 2) > (v88 >> 1))
        {
          OUTLINED_FUNCTION_18(v88);
          sub_1CA2E7478();
          v70 = v250;
        }

        *(v70 + 16) = v82 + 2;
        v84(v70 + v85 + v86 * v282, v267, v87);
        return v70;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for WFEntityUpdatingAction();
  OUTLINED_FUNCTION_13_32();
  v89 = swift_dynamicCastClass();
  v90 = v72;
  if (v89)
  {
    v91 = v89;
    v92 = [v89 backingActionIdentifiers];
    v93 = sub_1CA94C658();

    *v43 = v93;
    v94 = *MEMORY[0x1E69DA958];
    v282 = *(v284 + 104);
    (v282)(v43, v94, v72);
    OUTLINED_FUNCTION_4_48();
    v96 = v95;
    v98 = *(v95 + 16);
    v97 = *(v95 + 24);
    v99 = v72;
    if (v98 >= v97 >> 1)
    {
      OUTLINED_FUNCTION_17_1(v97);
      sub_1CA2E7478();
      v96 = v247;
    }

    *(v96 + 16) = v98 + 1;
    v100 = *(v284 + 32);
    v101 = (*(v284 + 80) + 32) & ~*(v284 + 80);
    v102 = v96;
    v103 = *(v284 + 72);
    v284 += 32;
    v104 = v100;
    v105 = (v100)(v96 + v101 + v103 * v98, v43, v99);
    v106 = (*((*MEMORY[0x1E69E7D40] & *v91) + 0xC0))(v105);
    if (v106)
    {
      v107 = v106;
      v108 = [v106 identifier];

      v109 = sub_1CA94C3A8();
      v111 = v110;
    }

    else
    {
      v111 = 0xEE00797469746E65;
      v109 = 0x2D6E776F6E6B6E75;
    }

    v157 = v265;
    *v265 = v109;
    v157[1] = v111;
    (v282)(v157, *MEMORY[0x1E69DA998], v99);
    v158 = *(v102 + 16);
    OUTLINED_FUNCTION_70_1();
    if (v160)
    {
      OUTLINED_FUNCTION_17_1(v159);
      sub_1CA2E7478();
      v102 = v248;
    }

    *(v102 + 16) = v111;
    v161 = v102 + v101;
    v70 = v102;
    v104(v161 + v158 * v103, v157, v99);
    return v70;
  }

  v112 = v1;
  objc_opt_self();
  OUTLINED_FUNCTION_13_32();
  v113 = swift_dynamicCastObjCClass();
  v114 = &unk_1CA982000;
  if (v113)
  {
    v115 = v113;
    v116 = &unk_1CA982000;
    v255[1] = v112;
    v117 = [v113 metadata];
    v118 = [v117 identifier];

    v119 = sub_1CA94C3A8();
    v121 = v120;

    v122 = v263;
    *v263 = v119;
    v122[1] = v121;
    v123 = *MEMORY[0x1E69DA9B0];
    v124 = v284;
    v125 = *(v284 + 104);
    v260 = v284 + 104;
    v259 = v125;
    v125(v122, v123, v72);
    OUTLINED_FUNCTION_4_48();
    v70 = v126;
    v128 = *(v126 + 16);
    v127 = *(v126 + 24);
    if (v128 >= v127 >> 1)
    {
      OUTLINED_FUNCTION_18(v127);
      sub_1CA2E7478();
      v70 = v251;
    }

    *(v70 + 16) = v128 + 1;
    v130 = *(v124 + 32);
    v129 = v124 + 32;
    v265 = ((*(v129 + 48) + 32) & ~*(v129 + 48));
    v264 = *(v129 + 40);
    v268 = v130;
    v269 = v129;
    v130(v265 + v70 + v264 * v128, v122, v90);
    v131 = [v115 metadata];
    v132 = [v131 systemProtocols];

    sub_1CA25B3D0(0, &qword_1EC441A30, 0x1E69ACA50);
    v133 = sub_1CA94C658();

    v271 = v133;
    v134 = sub_1CA25B410(v133);
    v267 = v115;
    if (v134)
    {
      v136 = v274;
      if (v134 < 1)
      {
        __break(1u);
        goto LABEL_92;
      }

      v137 = 0;
      v270 = (v271 & 0xC000000000000001);
      v263 = *MEMORY[0x1E69E1110];
      v262 = (v274 + 1);
      v258 = v284 + 16;
      v257 = v284 + 8;
      *&v135 = 136315394;
      v256 = v135;
      v284 = v134;
      do
      {
        if (v270)
        {
          v138 = MEMORY[0x1CCAA22D0](v137, v271);
        }

        else
        {
          v138 = *(v271 + 8 * v137 + 32);
        }

        v139 = v138;
        v140 = [v138 identifier];
        v141 = [v267 metadata];
        v142 = [v141 systemProtocolMetadata];

        type metadata accessor for LNSystemProtocolIdentifier(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447100, &unk_1CA989ED0);
        sub_1CA5D858C();
        v143 = sub_1CA94C1C8();

        v144 = [v139 identifier];
        if (*(v143 + 16) && (sub_1CA323E24(), (v145 & 1) != 0))
        {
          swift_unknownObjectRetain();
        }

        else
        {
        }

        v146 = v279;
        sub_1CA94A148();
        v114 = 0;
        OUTLINED_FUNCTION_38_1();
        v147(v266, v146, v90);
        v149 = *(v70 + 16);
        v148 = *(v70 + 24);
        if (v149 >= v148 >> 1)
        {
          OUTLINED_FUNCTION_18(v148);
          sub_1CA2E7478();
          v70 = v156;
        }

        v150 = v284;

        OUTLINED_FUNCTION_38_1();
        v151(v279, v90);
        *(v70 + 16) = v149 + 1;
        OUTLINED_FUNCTION_2_55();
        v153 = OUTLINED_FUNCTION_12_28(v152);
        v154(v153);
        v155 = 0;
        ++v137;
      }

      while (v150 != v137);
    }

    else
    {
      v155 = 0;
    }

    v116 = v267;
    v132 = [v267 metadata];
    v133 = [v132 sideEffect];

    if (!v133)
    {
      goto LABEL_51;
    }

    v114 = 0;
    v133 = v133;
    sub_1CA94AEF8();
    OUTLINED_FUNCTION_5_41();
    v173();
    v174 = *(v70 + 16);
    v136 = *(v70 + 24);
    v132 = (v174 + 1);
    if (v174 < v136 >> 1)
    {
LABEL_50:

      *(v70 + 16) = v132;
      OUTLINED_FUNCTION_2_55();
      v176 = OUTLINED_FUNCTION_12_28(v175);
      v177(v176);
      v155 = v114;
LABEL_51:
      v178 = sub_1CA5D85E4([v116 metadata]);
      if (!v178)
      {
        v178 = MEMORY[0x1E69E7CC0];
      }

      v284 = v178;
      v179 = sub_1CA25B410(v178);
      if (v179)
      {
        if (v179 >= 1)
        {
          v182 = 0;
          v278 = v284 & 0xC000000000000001;
          v183 = *MEMORY[0x1E69E1110];
          ++v274;
          v270 = (v273 + 2);
          v271 = v183;
          LODWORD(v267) = *MEMORY[0x1E69DA9A0];
          ++v273;
          *&v181 = 138412546;
          v266 = v181;
          v279 = v179;
          while (1)
          {
            v184 = v278 ? MEMORY[0x1CCAA22D0](v182, v284) : *(v284 + 8 * v182 + 32);
            v185 = v184;
            v186 = [v184 name];
            sub_1CA94C3A8();

            v187 = [v185 version];
            sub_1CA94C3A8();

            sub_1CA94B498();
            if (!v155)
            {
              break;
            }

            sub_1CA949C58();
            v133 = v185;
            v188 = v155;
            v189 = sub_1CA949F68();
            v190 = sub_1CA94CC18();

            if (os_log_type_enabled(v189, v190))
            {
              v191 = v155;
              v192 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              *v192 = v266;
              *(v192 + 4) = v133;
              *v193 = v133;
              *(v192 + 12) = 2112;
              v194 = v133;
              v195 = v191;
              v196 = _swift_stdlib_bridgeErrorToNSError();
              *(v192 + 14) = v196;
              v193[1] = v196;
              _os_log_impl(&dword_1CA256000, v189, v190, "Failed to construct assistant schema conformance protocol due to: %@ due to %@", v192, 0x16u);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444AE0, &qword_1CA985B70);
              swift_arrayDestroy();
              v197 = v282;
              OUTLINED_FUNCTION_26();
              OUTLINED_FUNCTION_26();
            }

            else
            {

              v197 = v282;
            }

            (*v274)(v281, v197);
            v155 = 0;
LABEL_74:
            if (v279 == ++v182)
            {
              goto LABEL_75;
            }
          }

          sub_1CA5B5384(v185);
          if (v198)
          {
LABEL_71:
            v206 = v276;
            sub_1CA94B558();
            v133 = v275;
            (*v270)(v275, v206, v277);
            OUTLINED_FUNCTION_5_41();
            v207();
            v208 = *(v70 + 16);
            OUTLINED_FUNCTION_70_1();
            if (v160)
            {
              OUTLINED_FUNCTION_17_1(v209);
              sub_1CA2E7478();
              v70 = v212;
            }

            v155 = 0;

            (*v273)(v276, v277);
            *(v70 + 16) = v133;
            OUTLINED_FUNCTION_2_55();
            v268(v210 + v208 * v211, v275, v283);
            goto LABEL_74;
          }

          v199 = sub_1CA949348();
          v200 = [v185 name];
          v201 = sub_1CA94C3A8();
          v203 = v202;

          if (*(v199 + 16))
          {
            sub_1CA271BF8(v201, v203);
            v205 = v204;

            if (v205)
            {
              sub_1CA94C218();

              goto LABEL_71;
            }
          }

          else
          {
          }

          sub_1CA94B548();
          goto LABEL_71;
        }

        __break(1u);
      }

      else
      {
LABEL_75:

        if ((WFAction.isLinkSystemFrameworkIntent.getter() & 1) == 0)
        {
          return v70;
        }

        v114 = v272;
        v155 = v283;
        OUTLINED_FUNCTION_5_41();
        v213();
        v132 = *(v70 + 16);
        OUTLINED_FUNCTION_70_1();
        if (!v160)
        {
LABEL_77:
          *(v70 + 16) = v133;
          OUTLINED_FUNCTION_2_55();
          v268(v214 + v132 * v215, v114, v155);
          return v70;
        }
      }

      OUTLINED_FUNCTION_17_1(v180);
      sub_1CA2E7478();
      v70 = v253;
      goto LABEL_77;
    }

LABEL_92:
    OUTLINED_FUNCTION_18(v136);
    sub_1CA2E7478();
    v70 = v252;
    goto LABEL_50;
  }

  objc_opt_self();
  v162 = swift_dynamicCastObjCClass();
  v163 = v284;
  if (!v162)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v164 = v162;
  v165 = [v162 intentDescriptor];
  if (v165)
  {
    v166 = sub_1CA5D851C(v165);
    if (v167)
    {
      v168 = v270;
      *v270 = v166;
      v168[1] = v167;
      (*(v163 + 104))(v168, *MEMORY[0x1E69DA960], v72);
      OUTLINED_FUNCTION_4_48();
      v70 = v169;
      v170 = *(v169 + 16);
      OUTLINED_FUNCTION_70_1();
      if (v160)
      {
        OUTLINED_FUNCTION_17_1(v171);
        sub_1CA2E7478();
        v70 = v172;
      }

LABEL_85:
      *(v70 + 16) = v163;
      (*(v284 + 32))(v70 + ((*(v284 + 80) + 32) & ~*(v284 + 80)) + *(v284 + 72) * v170, v168, v90);
      return v70;
    }
  }

  v216 = [v164 intentDescription];
  if (!v216)
  {
    v234 = v268;
    sub_1CA949C58();
    v235 = v1;
    v236 = sub_1CA949F68();
    v237 = sub_1CA94CC18();

    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v285 = v239;
      *v238 = 136315138;
      v240 = [v164 identifier];
      v241 = sub_1CA94C3A8();
      v243 = v242;

      v244 = sub_1CA26B54C(v241, v243, &v285);

      *(v238 + 4) = v244;
      _os_log_impl(&dword_1CA256000, v236, v237, "SiriKit action does not have valid intent descriptor, this should not happen: %s", v238, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v239);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    v274[1](v234, v282);
    return MEMORY[0x1E69E7CC0];
  }

  v217 = v216;
  result = [v216 facadeClass];
  if (result)
  {
    v219 = NSStringFromClass(result);
    v163 = sub_1CA94C3A8();
    v221 = v220;

    sub_1CA949C58();
    sub_1CA94C218();
    v222 = v1;
    v223 = sub_1CA949F68();
    v224 = sub_1CA94CC18();

    v225 = os_log_type_enabled(v223, v224);
    v281 = v217;
    if (v225)
    {
      v226 = swift_slowAlloc();
      v285 = swift_slowAlloc();
      *v226 = 136315394;
      *(v226 + 4) = sub_1CA26B54C(v163, v221, &v285);
      *(v226 + 12) = 2080;
      v227 = [v164 identifier];
      v228 = sub_1CA94C3A8();
      v230 = v229;

      v231 = sub_1CA26B54C(v228, v230, &v285);

      *(v226 + 14) = v231;
      _os_log_impl(&dword_1CA256000, v223, v224, "SiriKit action does not have valid intent descriptor, falling back to intent description class: %s for action %s)", v226, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    v274[1](v271, v282);
    v168 = v269;
    *v269 = v163;
    v168[1] = v221;
    (*(v284 + 104))(v168, *MEMORY[0x1E69DA960], v90);
    OUTLINED_FUNCTION_4_48();
    v70 = v232;
    v170 = *(v232 + 16);
    OUTLINED_FUNCTION_70_1();
    if (v160)
    {
      OUTLINED_FUNCTION_17_1(v233);
      sub_1CA2E7478();
      v70 = v254;
    }

    goto LABEL_85;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA5D851C(void *a1)
{
  v2 = [a1 intentClassName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

unint64_t sub_1CA5D858C()
{
  result = qword_1EC4417E0;
  if (!qword_1EC4417E0)
  {
    type metadata accessor for LNSystemProtocolIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4417E0);
  }

  return result;
}

uint64_t sub_1CA5D85E4(void *a1)
{
  v2 = [a1 assistantDefinedSchemas];

  if (!v2)
  {
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EC441778, 0x1E69AC6D0);
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t WFContentItem.ToolKitTypeResolutionContext.init(measurementUnitTypeProvider:requiredCoercion:displayRepresentationConfig:localizationContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v9;
  *(a5 + 32) = *(a1 + 32);
  v10 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v11 = v10[5];
  sub_1CA94B668();
  OUTLINED_FUNCTION_0_1();
  (*(v12 + 32))(a5 + v11, a2);
  v13 = v10[6];
  sub_1CA94B728();
  OUTLINED_FUNCTION_0_1();
  result = (*(v14 + 32))(a5 + v13, a3);
  *(a5 + v10[7]) = a4;
  return result;
}

void static WFContentItem.toolkitTypeIdentifier(context:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1CA94B668();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  swift_allocBox();
  v10 = v9;
  v11 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  sub_1CA25B3D0(0, &unk_1EC4448F0, 0x1E6996F60);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &unk_1EC441A10, 0x1E6996F88);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &qword_1EC446EE8, 0x1E6996CC0);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &qword_1EC4447F0, 0x1E6996EC0);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
LABEL_22:
    v31 = *(type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0) + 20);
    v32 = OUTLINED_FUNCTION_78_8();
    v33(v32);
    sub_1CA94B648();
    v34 = OUTLINED_FUNCTION_77_8();
    v35(v34);
    sub_1CA94AD98();
    v36 = swift_allocBox();
    OUTLINED_FUNCTION_56_9(v36, v37);
    OUTLINED_FUNCTION_39();
    (*(v38 + 104))();
    v19 = MEMORY[0x1E69DB0B0];
    *a2 = v31;
    (*(*(v11 - 8) + 104))(a2, *v19, v11);
    goto LABEL_7;
  }

  sub_1CA25B3D0(0, &qword_1EC446EF0, off_1E836DE28);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &qword_1EC446EF8, 0x1E6996DB8);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_22;
  }

  sub_1CA25B3D0(0, &qword_1EC446F00, 0x1E6996DA8);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &qword_1EC446F08, 0x1E6996EF0);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &qword_1EC446F10, 0x1E6996F18);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_123();
    v20 = swift_allocObject();
    sub_1CA25B3D0(0, &qword_1EC446F88, 0x1E69ACA38);
    v21 = sub_1CA94CEE8();
    v22 = [v21 bundleIdentifier];

    v23 = sub_1CA94C3A8();
    v25 = v24;

    v20[2] = v23;
    v20[3] = v25;
    v26 = sub_1CA94CEE8();
    v27 = [v26 identifier];

    v28 = sub_1CA94C3A8();
    v30 = v29;

    v20[4] = v28;
    v20[5] = v30;
    *a2 = v20;
LABEL_17:
    v18 = MEMORY[0x1E69DB098];
    goto LABEL_6;
  }

  sub_1CA25B3D0(0, &qword_1EC441838, 0x1E6996E90);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &qword_1EC446F18, 0x1E6996D08);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &qword_1EC446F20, 0x1E6996F40);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_22;
  }

  sub_1CA25B3D0(0, &qword_1EC446F28, 0x1E6996CD0);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype() || (sub_1CA25B3D0(0, &qword_1EC446F30, 0x1E6996F38), OUTLINED_FUNCTION_5_3(), swift_dynamicCastMetatype()))
  {
LABEL_25:
    sub_1CA5E556C(v2, a2);
    goto LABEL_7;
  }

  sub_1CA25B3D0(0, &qword_1EC446F38, 0x1E6996E50);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
LABEL_5:
    sub_1CA94AD98();
    v15 = swift_allocBox();
    OUTLINED_FUNCTION_53_12(v15, v16);
    OUTLINED_FUNCTION_39();
    (*(v17 + 104))();
    *a2 = a1;
    v18 = MEMORY[0x1E69DB0B0];
LABEL_6:
    (*(*(v11 - 8) + 104))(a2, *v18, v11);
LABEL_7:

    return;
  }

  sub_1CA25B3D0(0, &qword_1EC446F40, 0x1E6996EA8);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    sub_1CA5EFF54(a1, &v66, &qword_1EC446F78, &qword_1CA98E308);
    if (v67)
    {
      sub_1CA27F268(&v66, v68);
      v39 = __swift_project_boxed_opaque_existential_1(v68, v68[3]);
      OUTLINED_FUNCTION_162();
      v40 = sub_1CA94B638();
      v41 = sub_1CA94AD98();
      v42 = swift_allocBox();
      v44 = OUTLINED_FUNCTION_56_9(v42, v43);
      if (v40 == 22)
      {
        *v44 = 22;
      }

      else
      {
        *v44 = v40;
      }

      (*(*(v41 - 8) + 104))();
      v45 = MEMORY[0x1E69DB0B0];
      *a2 = v39;
      (*(*(v11 - 8) + 104))(a2, *v45, v11);
      __swift_destroy_boxed_opaque_existential_0(v68);
      goto LABEL_7;
    }

    sub_1CA5F03BC(&v66, &qword_1EC446F78);
    sub_1CA5EF364();
    OUTLINED_FUNCTION_4_0();
    swift_allocError();
    swift_willThrow();

    return;
  }

  sub_1CA25B3D0(0, &qword_1EC446F48, 0x1E6996C88);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &qword_1EC446F50, 0x1E6996F30);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &qword_1EC446F58, 0x1E6996DC8);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &qword_1EC446F60, 0x1E6996DF0);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &qword_1EC446F68, 0x1E6996EF8);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_5;
  }

  sub_1CA25B3D0(0, &unk_1EC4417A0, off_1E836E818);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_123();
    v46 = swift_allocObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v48 = [ObjCClassFromMetadata appBundleIdentifier];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_159_3();

    v46[2] = v8;
    v46[3] = v10;
    v49 = [ObjCClassFromMetadata enumMetadata];
    v50 = [v49 identifier];
LABEL_46:
    v53 = v50;

    v54 = sub_1CA94C3A8();
    v56 = v55;

    v46[4] = v54;
    v46[5] = v56;
    goto LABEL_47;
  }

  sub_1CA25B3D0(0, &unk_1EC441810, off_1E836E808);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_123();
    v46 = swift_allocObject();
    v51 = swift_getObjCClassFromMetadata();
    v52 = [v51 appBundleIdentifier];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_159_3();

    v46[2] = v8;
    v46[3] = v10;
    v49 = [v51 entityMetadata];
    v50 = [v49 identifier];
    goto LABEL_46;
  }

  sub_1CA25B3D0(0, &qword_1EC446F70, off_1E836E190);
  OUTLINED_FUNCTION_5_3();
  if (!swift_dynamicCastMetatype())
  {
    sub_1CA25B3D0(0, &qword_1EC445B58, 0x1E6996E40);
    OUTLINED_FUNCTION_5_3();
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_123();
    v46 = swift_allocObject();
    v46[2] = sub_1CA94C3A8();
    v46[3] = v64;
    v46[4] = sub_1CA94C3A8();
    v46[5] = v65;
LABEL_47:
    *a2 = v46;
    goto LABEL_17;
  }

  v57 = [swift_getObjCClassFromMetadata() codableDescription];
  OUTLINED_FUNCTION_123();
  v58 = swift_allocObject();
  v58[2] = sub_1CA5E57B8();
  v58[3] = v59;
  v60 = sub_1CA3F132C(v57, &selRef_typeName);
  if (v61)
  {
    v62 = v60;
    v63 = v61;

    v58[4] = v62;
    v58[5] = v63;
    *a2 = v58;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t WFContentItem.resolve(with:)()
{
  OUTLINED_FUNCTION_0();
  v1[61] = v2;
  v1[62] = v0;
  v1[60] = v3;
  v1[63] = swift_getObjectType();
  v4 = sub_1CA94A9A8();
  v1[64] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[65] = v5;
  v1[66] = OUTLINED_FUNCTION_45();
  v6 = type metadata accessor for LinkValueTransformContext(0);
  v1[67] = v6;
  OUTLINED_FUNCTION_18_0(v6);
  v1[68] = OUTLINED_FUNCTION_45();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A78, &qword_1CA985618);
  OUTLINED_FUNCTION_18_0(v7);
  v1[69] = OUTLINED_FUNCTION_13_5();
  v1[70] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v8);
  v1[71] = OUTLINED_FUNCTION_13_5();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v9 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v1[74] = v9;
  OUTLINED_FUNCTION_18_0(v9);
  v1[75] = OUTLINED_FUNCTION_13_5();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v10 = sub_1CA94AB58();
  v1[78] = v10;
  OUTLINED_FUNCTION_12(v10);
  v1[79] = v11;
  v1[80] = OUTLINED_FUNCTION_45();
  v12 = sub_1CA94AB68();
  v1[81] = v12;
  OUTLINED_FUNCTION_12(v12);
  v1[82] = v13;
  v1[83] = OUTLINED_FUNCTION_45();
  v14 = sub_1CA94AA48();
  v1[84] = v14;
  OUTLINED_FUNCTION_12(v14);
  v1[85] = v15;
  v1[86] = OUTLINED_FUNCTION_45();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v16);
  v1[87] = OUTLINED_FUNCTION_13_5();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v17 = sub_1CA94A8C8();
  v1[100] = v17;
  OUTLINED_FUNCTION_12(v17);
  v1[101] = v18;
  v1[102] = OUTLINED_FUNCTION_45();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  OUTLINED_FUNCTION_18_0(v19);
  v1[103] = OUTLINED_FUNCTION_13_5();
  v1[104] = swift_task_alloc();
  v20 = sub_1CA94ADC8();
  v1[105] = v20;
  OUTLINED_FUNCTION_12(v20);
  v1[106] = v21;
  v1[107] = OUTLINED_FUNCTION_13_5();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  OUTLINED_FUNCTION_18_0(v22);
  v1[119] = OUTLINED_FUNCTION_45();
  v23 = sub_1CA94AD08();
  v1[120] = v23;
  OUTLINED_FUNCTION_12(v23);
  v1[121] = v24;
  v1[122] = OUTLINED_FUNCTION_45();
  v25 = sub_1CA94AB28();
  v1[123] = v25;
  OUTLINED_FUNCTION_12(v25);
  v1[124] = v26;
  v1[125] = OUTLINED_FUNCTION_13_5();
  v1[126] = swift_task_alloc();
  v27 = sub_1CA94B668();
  v1[127] = v27;
  OUTLINED_FUNCTION_12(v27);
  v1[128] = v28;
  v1[129] = OUTLINED_FUNCTION_13_5();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v29 = sub_1CA94B728();
  v1[132] = v29;
  OUTLINED_FUNCTION_12(v29);
  v1[133] = v30;
  v1[134] = OUTLINED_FUNCTION_13_5();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1CA5D99C0()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1024);
  v6 = *(v0 + 1016);
  v7 = *(v0 + 488);
  ObjCClassMetadata = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  v9 = ObjCClassMetadata[5];
  v10 = *(v2 + 16);
  v2 += 16;
  *(v0 + 1152) = v10;
  *(v0 + 1160) = v2 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v691 = v9;
  i = v10;
  v709 = v2;
  (v10)(v1, &v9[v7], v3);
  v12 = v5 + 16;
  v11 = *(v5 + 16);
  v696 = v7;
  (v11)(v4, v7, v6);
  v15 = *(v5 + 88);
  v13 = v5 + 88;
  v14 = v15;
  v16 = OUTLINED_FUNCTION_126();
  v17 = (v15)(v16);
  v18 = *(v0 + 1048);
  v19 = *(v0 + 1024);
  v20 = *(v0 + 1016);
  if (v17 == *MEMORY[0x1E69DB480])
  {
    (*(v19 + 96))(*(v0 + 1048), v20);
    *(v0 + 1168) = *v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 1176) = v21;
    *v21 = v22;
    v21[1] = sub_1CA5DDDD0;
    OUTLINED_FUNCTION_134_5();
LABEL_3:
    OUTLINED_FUNCTION_93_0();

    return sub_1CA5E6D64(v23, v24, v25, v26);
  }

  v31 = *(v19 + 8);
  v29 = (v19 + 8);
  v30 = v31;
  (v31)(*(v0 + 1048), v20);
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = sub_1CA3F132C(v32, &selRef_string);
    if (!v34)
    {
      v59 = *(v0 + 848);
      v60 = *(v0 + 840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443AA0, &qword_1CA982780);
      v61 = OUTLINED_FUNCTION_171_2();
      *(v61 + 16) = xmmword_1CA981310;
      sub_1CA94AD98();
      v62 = swift_allocBox();
      OUTLINED_FUNCTION_53_12(v62, v63);
      OUTLINED_FUNCTION_19_23();
      (*(v64 + 104))();
      *(v61 + v12) = v30;
      (*(v59 + 104))(v61 + v12, *MEMORY[0x1E69DB0B0], v60);
      sub_1CA2E83F8();
      v66 = v65;
      sub_1CA2F0CD4();
      OUTLINED_FUNCTION_4_0();
      v67 = swift_allocError();
      v68 = MEMORY[0x1E69E7CD0];
      *v69 = v66;
      *(v69 + 8) = v68;
      *(v69 + 16) = 0;
      OUTLINED_FUNCTION_139_4(v67);
      v70 = OUTLINED_FUNCTION_3_3();
      v71(v70);
LABEL_30:
      OUTLINED_FUNCTION_12_29();
      OUTLINED_FUNCTION_0_63();

      OUTLINED_FUNCTION_5();
      goto LABEL_31;
    }

    v14 = v34;
    v709 = v33;
    v35 = *(v0 + 960);
    v36 = *(v0 + 952);
    sub_1CA5EFF54(*(v0 + 488) + ObjCClassMetadata[6], v36, &unk_1EC445A40, &unk_1CA983150);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v35);
    v38 = *(v0 + 976);
    v39 = *(v0 + 968);
    v40 = *(v0 + 960);
    v41 = *(v0 + 952);
    if (EnumTagSinglePayload == 1)
    {
      v704 = v14;
      v42 = *(v0 + 848);
      v43 = *(v0 + 840);
      v692 = swift_allocBox();
      v45 = v44;
      sub_1CA94AD98();
      v46 = swift_allocBox();
      OUTLINED_FUNCTION_10_22(v46, v47);
      OUTLINED_FUNCTION_19_23();
      (*(v48 + 104))();
      *v45 = v18;
      v49 = *MEMORY[0x1E69DB0B0];
      (*(v42 + 104))(v45, v49, v43);
      *v38 = v692;
      (*(v39 + 104))(v38, *MEMORY[0x1E69DAF30], v40);
      OUTLINED_FUNCTION_49(v41, 1, v40);
      if (!v144)
      {
        sub_1CA5F03BC(*(v0 + 952), &unk_1EC445A40);
      }

      v14 = v704;
    }

    else
    {
      v72 = OUTLINED_FUNCTION_204();
      v73(v72);
      v49 = *MEMORY[0x1E69DB0B0];
    }

    v74 = *(v0 + 944);
    v75 = *(v0 + 848);
    v76 = *(v0 + 840);
    sub_1CA94ACE8();
    OUTLINED_FUNCTION_40();
    v30 = sub_1CA94AD98();
    v77 = swift_allocBox();
    OUTLINED_FUNCTION_39();
    (*(v78 + 104))();
    *v74 = v77;
    (*(v75 + 104))(v74, v49, v76);
    OUTLINED_FUNCTION_23();
    sub_1CA2B5928();
    v80 = v79;

    v82 = *(v75 + 8);
    v81 = (v75 + 8);
    v29 = v82;
    v83 = OUTLINED_FUNCTION_107_0();
    v82(v83);
    if (v80 & 1) != 0 || (v94 = *(v0 + 936), sub_1CA94ACE8(), sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58), static WFContentItem.AnyTypeIdentifier.getter(v94), v80 = *(v0 + 840), OUTLINED_FUNCTION_23(), sub_1CA2B5928(), v123 = v122, , v124 = OUTLINED_FUNCTION_20_0(), v29(v124), (v123))
    {
      v84 = *(v0 + 1056);
      OUTLINED_FUNCTION_119_3();
      v85();
      v86 = OUTLINED_FUNCTION_3_3();
      v87(v86);
      sub_1CA94AC18();
      v88 = swift_allocBox();
      OUTLINED_FUNCTION_10_22(v88, v89);
      *v90 = v709;
      v90[1] = v14;
      OUTLINED_FUNCTION_39();
      (*(v91 + 104))();
      *v80 = v84;
LABEL_19:
      v55 = *MEMORY[0x1E69DAE70];
      sub_1CA94AC88();
      OUTLINED_FUNCTION_0_1();
      v57 = *(v92 + 104);
      v58 = v80;
      goto LABEL_20;
    }

    v687 = v81;
    v125 = *(v0 + 848);
    v126 = sub_1CA94ACE8();
    v11 = v126;
    ObjCClassMetadata = (v126 + 56);
    v127 = -1;
    v128 = -1 << *(v126 + 32);
    if (-v128 < 64)
    {
      v127 = ~(-1 << -v128);
    }

    v129 = v127 & *(v126 + 56);
    v130 = (63 - v128) >> 6;
    v691 = (v125 + 32);
    v696 = (v125 + 16);
    v679 = v125;
    v674 = *MEMORY[0x1E69DB098];
    v13 = 0;
    v682 = sub_1CA94C218();
    v685 = v29;
    v670 = v130;
    v672 = ObjCClassMetadata;
    for (i = v14; v129; ObjCClassMetadata = v672)
    {
LABEL_42:
      v132 = *(v11 + 48) + *(v679 + 72) * (__clz(__rbit64(v129)) | (v13 << 6));
      v133 = *(v679 + 16);
      v14 = v696;
      (v133)(*(v0 + 928), v132, *(v0 + 840));
      v134 = OUTLINED_FUNCTION_130();
      v669 = v135;
      v135(v134);
      v136 = OUTLINED_FUNCTION_52_11();
      v133(v136);
      v137 = OUTLINED_FUNCTION_126();
      if (v138(v137) == v674)
      {
        v139 = *(v0 + 904);
        (v133)(v139, *(v0 + 912), *(v0 + 840));
        v140 = OUTLINED_FUNCTION_107_0();
        v141(v140);
        v142 = *(*v139 + 16);
        v14 = *(*v139 + 24);
        v144 = sub_1CA94C3A8() == v142 && v143 == v14;
        if (v144)
        {

LABEL_83:

          (v685)(*(v0 + 912), *(v0 + 840));
          v260 = OUTLINED_FUNCTION_130();
          v669(v260);
          v154 = 0;
LABEL_54:
          v155 = *(v0 + 840);
          __swift_storeEnumTagSinglePayload(*(v0 + 832), v154, 1, v155);

          v156 = OUTLINED_FUNCTION_69_0();
          sub_1CA5EFF54(v156, v157, v158, v159);
          v160 = OUTLINED_FUNCTION_50_0();
          v162 = __swift_getEnumTagSinglePayload(v160, v161, v155);
          v163 = *(v0 + 1144);
          v164 = *(v0 + 1064);
          v683 = *(v0 + 1056);
          v165 = *(v0 + 968);
          v166 = *(v0 + 960);
          if (v162 == 1)
          {
            v167 = *(v0 + 824);
            v168 = *(v0 + 480);
            sub_1CA5F03BC(*(v0 + 832), &qword_1EC444368);
            v169 = OUTLINED_FUNCTION_162();
            v170(v169);
            (*(v164 + 8))(v163, v683);
            v171 = OUTLINED_FUNCTION_107_0();
            sub_1CA5F03BC(v171, v172);
            sub_1CA94AC18();
            v173 = swift_allocBox();
            OUTLINED_FUNCTION_10_22(v173, v174);
            *v175 = v709;
            v175[1] = i;
            OUTLINED_FUNCTION_39();
            (*(v176 + 104))();
            *v168 = v167;
            v55 = *MEMORY[0x1E69DAE70];
            sub_1CA94AC88();
            OUTLINED_FUNCTION_0_1();
            v57 = *(v177 + 104);
            v58 = v168;
            goto LABEL_20;
          }

          v671 = *(v0 + 832);
          v673 = *(v0 + 976);
          v198 = *(v0 + 816);
          v675 = *(v0 + 1144);
          v199 = *(v0 + 808);
          v677 = *(v0 + 800);
          v680 = *(v0 + 480);
          (*v691)(*(v0 + 896), *(v0 + 824), *(v0 + 840));
          v200 = OUTLINED_FUNCTION_107_0();
          v201(v200);
          sub_1CA94B458();
          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v202, v203, v204, v205);
          sub_1CA94A8A8();
          v206 = OUTLINED_FUNCTION_70();
          v685(v206);
          sub_1CA5F03BC(v671, &qword_1EC444368);
          (*(v165 + 8))(v673, v166);
          (*(v164 + 8))(v675, v683);
          v207 = swift_allocBox();
          v209 = OUTLINED_FUNCTION_56_9(v207, v208);
          (*(v199 + 32))(v209, v198, v677);
          v210 = v680;
          *v680 = v164 + 8;
LABEL_61:
          v211 = MEMORY[0x1E69DAE20];
LABEL_62:
          v55 = *v211;
          sub_1CA94AC88();
          OUTLINED_FUNCTION_0_1();
          v57 = *(v212 + 104);
          v58 = v210;
LABEL_20:
          v93 = v55;
LABEL_21:
          v57(v58, v93);
LABEL_22:
          OUTLINED_FUNCTION_1_45();

          OUTLINED_FUNCTION_3_6();
LABEL_31:
          OUTLINED_FUNCTION_93_0();

          __asm { BRAA            X1, X16 }
        }

        OUTLINED_FUNCTION_130_3();
        v145 = sub_1CA94D7F8();

        if (v145)
        {
          goto LABEL_83;
        }
      }

      v129 &= v129 - 1;
      v30 = v685;
      v29 = v687;
      (v685)(*(v0 + 912), *(v0 + 840));
      v146 = OUTLINED_FUNCTION_107_0();
      v685(v146);
      v11 = v682;
      v130 = v670;
    }

    while (1)
    {
      v131 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v131 >= v130)
      {

        v154 = 1;
        goto LABEL_54;
      }

      v129 = *&ObjCClassMetadata[2 * v131];
      ++v13;
      if (v129)
      {
        v13 = v131;
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_90;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v50 = swift_dynamicCastObjCClass();
  if (v50)
  {
    if ([v50 attributedString])
    {
      v51 = *(v0 + 480);
      sub_1CA94AC18();
      swift_allocBox();
      OUTLINED_FUNCTION_165();
      sub_1CA948988();
      v52 = OUTLINED_FUNCTION_3_3();
      v53(v52);
      OUTLINED_FUNCTION_19_23();
      (*(v54 + 104))(v11);
      *v51 = v30;
      v55 = *MEMORY[0x1E69DAE70];
      sub_1CA94AC88();
      OUTLINED_FUNCTION_0_1();
      v57 = *(v56 + 104);
      v58 = v51;
      goto LABEL_20;
    }

    v107 = *(v0 + 848);
    v108 = *(v0 + 840);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443AA0, &qword_1CA982780);
    v109 = OUTLINED_FUNCTION_171_2();
    *(v109 + 16) = xmmword_1CA981310;
    sub_1CA94AD98();
    v110 = swift_allocBox();
    OUTLINED_FUNCTION_53_12(v110, v111);
    OUTLINED_FUNCTION_19_23();
    (*(v112 + 104))();
    *(v109 + v12) = v30;
    (*(v107 + 104))(v109 + v12, *MEMORY[0x1E69DB0B0], v108);
    sub_1CA2E83F8();
    v114 = v113;
    sub_1CA2F0CD4();
    OUTLINED_FUNCTION_4_0();
    v115 = swift_allocError();
    v116 = MEMORY[0x1E69E7CD0];
    *v117 = v114;
    *(v117 + 8) = v116;
    *(v117 + 16) = 0;
    OUTLINED_FUNCTION_139_4(v115);
    v118 = OUTLINED_FUNCTION_3_3();
    v119(v118);
    goto LABEL_30;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v95 = swift_dynamicCastObjCClass();
  if (v95)
  {
    v96 = v95;
    v705 = *(v0 + 1144);
    v97 = *(v0 + 1064);
    v98 = *(v0 + 1056);
    OUTLINED_FUNCTION_102_4();
    sub_1CA94AC18();
    v710 = swift_allocBox();
    v100 = v99;
    v101 = [v96 URL];
    sub_1CA948BA8();
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_45();
    sub_1CA948B68();

    (*(v97 + 8))(v705, v98);
    v102 = OUTLINED_FUNCTION_121();
    v103(v102);
LABEL_27:
    OUTLINED_FUNCTION_39();
    (*(v104 + 104))(v100);
    *v13 = v710;
    sub_1CA94AC88();
    OUTLINED_FUNCTION_0_1();
    v105 = OUTLINED_FUNCTION_3_3();
    v106(v105);
LABEL_28:

    goto LABEL_22;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v147 = swift_dynamicCastObjCClass();
  if (v147)
  {
    v148 = v147;
    OUTLINED_FUNCTION_102_4();
    sub_1CA94AC18();
    swift_allocBox();
    OUTLINED_FUNCTION_165();
    v149 = [v148 number];
    v150 = [v149 BOOLValue];

    v151 = OUTLINED_FUNCTION_69_0();
    v152(v151);
    *v11 = v150;
    OUTLINED_FUNCTION_19_23();
    (*(v153 + 104))(v11);
    *v13 = v30;
    goto LABEL_78;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v178 = swift_dynamicCastObjCClass();
  if (v178)
  {
    v179 = v178;
    v180 = *(*(v0 + 1024) + 104);
    v181 = OUTLINED_FUNCTION_141();
    v180(v181);
    OUTLINED_FUNCTION_129();
    v182 = sub_1CA94B648();
    v183 = OUTLINED_FUNCTION_52_0();
    v30(v183);
    if (v182)
    {
      v184 = [v179 number];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v185 = *(v0 + 1144);
        v186 = *(v0 + 1064);
        v187 = *(v0 + 1056);
        v711 = *(v0 + 480);
        sub_1CA94AC18();
        v706 = swift_allocBox();
        v189 = v188;
        v190 = sub_1CA94D068();
        v192 = v191;
        v194 = v193;

        (*(v186 + 8))(v185, v187);
        *v189 = v190;
        *(v189 + 8) = v192;
        *(v189 + 16) = v194;
        OUTLINED_FUNCTION_39();
        (*(v195 + 104))(v189);
        v196 = v706;
        v197 = v711;
LABEL_77:
        *v197 = v196;
        goto LABEL_78;
      }
    }

    v236 = OUTLINED_FUNCTION_141();
    v180(v236);
    OUTLINED_FUNCTION_129();
    v237 = sub_1CA94B648();
    v238 = OUTLINED_FUNCTION_52_0();
    v30(v238);
    v239 = sub_1CA94AC18();
    v712 = swift_allocBox();
    v241 = v240;
    v242 = [v179 number];
    v243 = v242;
    v197 = *(v0 + 480);
    if (v237)
    {
      v244 = [v242 integerValue];

      v245 = OUTLINED_FUNCTION_122_2();
      v246(v245);
      v247 = MEMORY[0x1E69DADB0];
      *v241 = v244;
    }

    else
    {
      [v242 doubleValue];
      v249 = v248;

      v250 = OUTLINED_FUNCTION_122_2();
      v251(v250);
      v247 = MEMORY[0x1E69DADE0];
      *v241 = v249;
    }

    (*(*(v239 - 8) + 104))(v241, *v247, v239);
    v196 = v712;
    goto LABEL_77;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v213 = swift_dynamicCastObjCClass();
  if (v213)
  {
    v214 = v213;
    v215 = OUTLINED_FUNCTION_141();
    v216(v215);
    OUTLINED_FUNCTION_129();
    v217 = sub_1CA94B648();
    v218 = OUTLINED_FUNCTION_52_0();
    v30(v218);
    if (v217)
    {
      v219 = [v214 dateComponents];
      ObjCClassMetadata = sub_1CA9488E8();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_45();
      if (v219)
      {
        OUTLINED_FUNCTION_103_3();
        v220 = swift_allocBox();
        OUTLINED_FUNCTION_154_4(v220);
        sub_1CA9488C8();

        v221 = OUTLINED_FUNCTION_126();
        v222(v221);
        OUTLINED_FUNCTION_14_0();
        v223();
LABEL_81:
        OUTLINED_FUNCTION_39();
        (*(v257 + 104))(v12);
        *v709 = i;
        v258 = *MEMORY[0x1E69DAE70];
        sub_1CA94AC88();
        OUTLINED_FUNCTION_0_1();
        (*(v259 + 104))(v709, v258);
        goto LABEL_28;
      }

      __break(1u);
    }

    else
    {
      v252 = [v214 date];
      ObjCClassMetadata = sub_1CA948CB8();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_45();
      if (v252)
      {
        OUTLINED_FUNCTION_103_3();
        v253 = swift_allocBox();
        OUTLINED_FUNCTION_154_4(v253);
        sub_1CA948C78();

        v254 = OUTLINED_FUNCTION_126();
        v255(v254);
        OUTLINED_FUNCTION_14_0();
        v256();
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_146;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v224 = swift_dynamicCastObjCClass();
  if (v224)
  {
    v225 = [v224 currencyAmount];
    *(v0 + 1192) = v225;
    v226 = [v225 amount];
    if (!v226)
    {
      sub_1CA25B3D0(0, &qword_1EC4463B0, 0x1E696AB90);
      OUTLINED_FUNCTION_40();
      v226 = sub_1CA94CFB8();
    }

    v227 = sub_1CA94D068();
    v229 = v228;
    v231 = v230;

    *(v0 + 1200) = v227;
    *(v0 + 1208) = v229;
    *(v0 + 244) = v231;
    v232 = sub_1CA3F132C(v225, &selRef_currencyCode);
    if (v233)
    {
      v234 = v232;
      v235 = v233;
    }

    else
    {
      v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446FA0, &unk_1CA98E358);
      OUTLINED_FUNCTION_18_0(v272);
      v273 = OUTLINED_FUNCTION_45();
      v274 = [objc_opt_self() currentLocale];
      OUTLINED_FUNCTION_40();
      sub_1CA948E58();
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_45();
      sub_1CA948DA8();

      sub_1CA948E38();
      v275 = OUTLINED_FUNCTION_70();
      v276(v275);
      v277 = sub_1CA948E08();
      v278 = OUTLINED_FUNCTION_201_0();
      OUTLINED_FUNCTION_49(v278, v279, v277);
      if (v144)
      {

        sub_1CA5F03BC(v273, &qword_1EC446FA0);

        v234 = 0;
        v235 = 0xE000000000000000;
      }

      else
      {
        v234 = sub_1CA948D58();
        v235 = v294;
        OUTLINED_FUNCTION_39();
        (*(v295 + 8))(v273, v277);
      }
    }

    *(v0 + 1224) = v235;
    *(v0 + 1216) = v234;
    v296 = *(v0 + 496);
    *(v0 + 1232) = sub_1CA94AC18();
    v297 = swift_allocBox();
    *(v0 + 248) = v297;
    *(v0 + 256) = v298;
    *(v0 + 1240) = v297;
    v299 = OUTLINED_FUNCTION_134();
    i(v299);
    v300 = v296;
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 1248) = v301;
    *v301 = v302;
    v301[1] = sub_1CA5DE1C0;
    goto LABEL_98;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v261 = swift_dynamicCastObjCClass();
  if (v261)
  {
    v262 = *(v0 + 688);
    v263 = *(v0 + 496);
    v264 = [v261 paymentMethod];
    *(v0 + 1272) = v264;
    *(v0 + 1280) = sub_1CA94AC18();
    v265 = swift_allocBox();
    *(v0 + 264) = v265;
    *(v0 + 272) = v266;
    *(v0 + 1288) = v265;
    sub_1CA2F0A08([v264 type], v262);
    *(v0 + 280) = sub_1CA3F132C(v264, &selRef_identificationHint);
    *(v0 + 288) = v267;
    *(v0 + 1296) = v267;
    v268 = OUTLINED_FUNCTION_129();
    i(v268);
    v269 = v263;
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 1304) = v270;
    *v270 = v271;
    v270[1] = sub_1CA5DE600;
LABEL_98:
    OUTLINED_FUNCTION_134_5();
    OUTLINED_FUNCTION_93_0();

    return DisplayRepresentation.init(from:thumbnailSize:displayRepresentationConfig:)();
  }

LABEL_90:
  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v280 = swift_dynamicCastObjCClass();
  if (v280)
  {
    v281 = [v280 entity];
    *(v0 + 1336) = v281;
    if (v281)
    {
      OUTLINED_FUNCTION_87();
      [swift_getObjCClassFromObject() entityContentItemClass];
      ObjCClassMetadata = swift_getObjCClassMetadata();
      sub_1CA25B3D0(0, &unk_1EC441810, off_1E836E808);
      if (swift_dynamicCastMetatype())
      {
        sub_1CA94B458();
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v282, v283, v284, v285);
        swift_task_alloc();
        OUTLINED_FUNCTION_77();
        *(v0 + 1344) = v286;
        *v286 = v287;
        v286[1] = sub_1CA5DEA34;
        OUTLINED_FUNCTION_106_5();
LABEL_94:
        OUTLINED_FUNCTION_93_0();

        return sub_1CA5EB608(v288, v289, v290, v291, v292);
      }
    }

    goto LABEL_106;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v304 = swift_dynamicCastObjCClass();
  *(v0 + 1360) = v304;
  ObjCClassMetadata = *(v0 + 496);
  if (v304)
  {
    *(v0 + 1368) = sub_1CA25B3D0(0, &unk_1EC447E40, 0x1E695FC20);
    v305 = ObjCClassMetadata;
    v306 = swift_task_alloc();
    *(v0 + 1376) = v306;
    *v306 = v0;
    v306[1] = sub_1CA5DEDA8;
    OUTLINED_FUNCTION_93_0();

    return MEMORY[0x1EEDF8160]();
  }

  objc_opt_self();
  v314 = swift_dynamicCastObjCClass();
  if (v314)
  {
    v315 = v314;
    v697 = *(v0 + 1144);
    v316 = *(v0 + 1112);
    v317 = *(v0 + 1056);
    v318 = *(v0 + 888);
    v319 = *(v0 + 848);
    v320 = *(v0 + 840);
    v321 = *(v0 + 496);
    OUTLINED_FUNCTION_123();
    v322 = swift_allocObject();
    v322[2] = sub_1CA94C3A8();
    v322[3] = v323;
    v324 = sub_1CA3F132C(v315, &selRef_activityTypeIdentifier);
    if (v325)
    {
      v326 = v324;
    }

    else
    {
      v326 = 0;
    }

    v327 = 0xE000000000000000;
    if (v325)
    {
      v327 = v325;
    }

    v322[4] = v326;
    v322[5] = v327;
    v328 = swift_allocBox();
    *(v0 + 312) = v328;
    *(v0 + 320) = v329;
    *(v0 + 1440) = v328;
    *v318 = v322;
    (*(v319 + 104))(v318, *MEMORY[0x1E69DB098], v320);
    v330 = [v321 name];
    v331 = sub_1CA94C3A8();
    v333 = v332;
    *(v0 + 328) = v331;
    *(v0 + 336) = v332;

    *(v0 + 1448) = v333;
    *(v0 + 1456) = sub_1CA94AC88();
    *(v0 + 1464) = sub_1CA94C1E8();
    (i)(v316, v697, v317);
    v334 = v321;
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 1472) = v335;
    *v335 = v336;
    v335[1] = sub_1CA5DF79C;
    goto LABEL_98;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v337 = swift_dynamicCastObjCClass();
  if (v337)
  {
    v338 = [v337 contact];
    *(v0 + 1504) = v338;
    if (v338)
    {
      v339 = v338;
      v340 = *(v0 + 496);
      *(v0 + 1512) = sub_1CA94AC18();
      v341 = swift_allocBox();
      *(v0 + 344) = v341;
      *(v0 + 352) = v342;
      *(v0 + 1520) = v341;
      *(v0 + 1528) = [v339 INPersonRepresentation];
      v343 = OUTLINED_FUNCTION_129();
      i(v343);
      v344 = v340;
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      *(v0 + 1536) = v345;
      *v345 = v346;
      v345[1] = sub_1CA5DFBAC;
      goto LABEL_98;
    }

LABEL_177:
    sub_1CA2F0CD4();
    OUTLINED_FUNCTION_4_0();
    v573 = swift_allocError();
    OUTLINED_FUNCTION_48_6(v573, v574);
    OUTLINED_FUNCTION_139_4(v575);
    v576 = OUTLINED_FUNCTION_3_3();
    v577(v576);
    goto LABEL_30;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v347 = swift_dynamicCastObjCClass();
  if (v347)
  {
    v348 = v347;
    v686 = *(v0 + 1056);
    v688 = *(v0 + 1144);
    v349 = *(v0 + 944);
    v350 = *(v0 + 848);
    v676 = *(v0 + 840);
    v684 = *(v0 + 1096);
    v698 = *(v0 + 480);
    ObjCClassFromObject = swift_getObjCClassFromObject();
    v693 = swift_allocBox();
    OUTLINED_FUNCTION_123();
    v352 = swift_allocObject();
    v353 = [ObjCClassFromObject appBundleIdentifier];
    v354 = sub_1CA94C3A8();
    v356 = v355;

    v352[2] = v354;
    v352[3] = v356;
    v357 = [ObjCClassFromObject enumMetadata];
    v358 = [v357 identifier];

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_1_2();

    v352[4] = v357;
    v352[5] = v354;
    *v349 = v352;
    (*(v350 + 104))(v349, *MEMORY[0x1E69DB098], v676);
    v359 = [v348 enumCase];
    v360 = [v359 identifier];

    sub_1CA94C3A8();
    OUTLINED_FUNCTION_1_2();

    v361 = [v348 enumCaseMetadata];
    v362 = [v361 displayRepresentation];

    (i)(v684, v688, v686);
    DisplayRepresentation.init(from:displayRepresentationConfig:)(v362, v684);
    OUTLINED_FUNCTION_14_0();
    sub_1CA94A8A8();
    v363 = OUTLINED_FUNCTION_107_0();
    v364(v363);
    v210 = v698;
    *v698 = v693;
    goto LABEL_61;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v365 = swift_dynamicCastObjCClass();
  if (v365)
  {
    v366 = v365;
    v689 = *(v0 + 1144);
    v367 = *(v0 + 1096);
    v368 = *(v0 + 1056);
    v699 = *(v0 + 480);
    v369 = swift_getObjCClassFromObject();
    sub_1CA94A9E8();
    v694 = swift_allocBox();
    v370 = [v369 valueType];
    v371 = [v370 identifier];

    sub_1CA94C3A8();
    v372 = [v366 codableValue];
    v373 = [v372 data];

    sub_1CA948C08();
    v374 = [v366 displayRepresentation];
    (i)(v367, v689, v368);
    v375 = OUTLINED_FUNCTION_52_0();
    DisplayRepresentation.init(from:displayRepresentationConfig:)(v375, v376);
    sub_1CA94A9B8();
    v377 = OUTLINED_FUNCTION_121();
    v378(v377);
    v210 = v699;
    *v699 = v694;
    v211 = MEMORY[0x1E69DAE60];
    goto LABEL_62;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v690 = swift_dynamicCastObjCClass();
  if (v690)
  {
    swift_getObjectType();
    v379 = OUTLINED_FUNCTION_130();
    (v11)(v379);
    v380 = OUTLINED_FUNCTION_188();
    v381 = (v14)(v380);
    v382 = *MEMORY[0x1E69DB490];
    v383 = OUTLINED_FUNCTION_188();
    v30(v383);
    if (v381 != v382)
    {
      v407 = *(v0 + 1096);
      *(v0 + 1576) = [v690 entity];
      v408 = [v690 displayRepresentation];
      v409 = OUTLINED_FUNCTION_52_11();
      i(v409);
      DisplayRepresentation.init(from:displayRepresentationConfig:)(v408, v407);
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      *(v0 + 1584) = v410;
      *v410 = v411;
      v410[1] = sub_1CA5E0384;
      OUTLINED_FUNCTION_106_5();
      goto LABEL_94;
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 1560) = v384;
    *v384 = v385;
    v384[1] = sub_1CA5DFFB8;
    OUTLINED_FUNCTION_93_0();

    return sub_1CA5E8254(v386, v387, v388);
  }

  v390 = *(v0 + 496);
  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v391 = swift_dynamicCastObjCClass();
  if (v391)
  {
    v392 = v391;
    v393 = *(v0 + 1088);
    v394 = *(v0 + 1056);
    v395 = *(v0 + 880);
    v396 = *(v0 + 848);
    v397 = *(v0 + 840);
    v695 = *(v0 + 1144);
    v700 = *(v0 + 496);
    sub_1CA94AD98();
    v398 = swift_allocBox();
    OUTLINED_FUNCTION_56_9(v398, v399);
    OUTLINED_FUNCTION_39();
    (*(v400 + 104))();
    *v395 = v390;
    (*(v396 + 104))(v395, *MEMORY[0x1E69DB0B0], v397);
    *(v0 + 360) = sub_1CA5A30FC([v392 object], &selRef_identifier);
    *(v0 + 368) = v401;
    *(v0 + 1600) = v401;
    v402 = swift_allocBox();
    *(v0 + 376) = v402;
    *(v0 + 384) = v403;
    *(v0 + 1608) = v402;
    *(v0 + 1616) = sub_1CA94AC88();
    *(v0 + 1624) = sub_1CA94C1E8();
    (i)(v393, v695, v394);
    v404 = v700;
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 1632) = v405;
    *v405 = v406;
    v405[1] = sub_1CA5E0700;
    goto LABEL_98;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v412 = swift_dynamicCastObjCClass();
  if (v412)
  {
    v413 = v412;
    v414 = *(v0 + 1024);
    v415 = *(v0 + 1016);
    v416 = *(v0 + 872);
    v417 = *(v0 + 616);
    v418 = swift_allocBox();
    v420 = OUTLINED_FUNCTION_129_3(v418, v419);
    (*(v414 + 104))(v417 + v421, *MEMORY[0x1E69DB488], v415, v420);
    _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
    v422 = [objc_opt_self() defaultContext];
    OUTLINED_FUNCTION_140_5(v422);
    v423 = *(v0 + 1144);
    v424 = *(v0 + 1064);
    v425 = *(v0 + 1056);
    if (!v416)
    {
      v701 = *(v0 + 480);
      OUTLINED_FUNCTION_4_49();
      sub_1CA5EF5D8();
      v440 = [v413 reminder];
      v441 = [v440 objectID];

      v442 = [v441 description];
      sub_1CA94C3A8();

      sub_1CA94AC88();
      sub_1CA94C1E8();
      v443 = [v413 name];
      sub_1CA94C3A8();

      sub_1CA94B2E8();
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v444, v445, v446, v447);
      OUTLINED_FUNCTION_122_2();
      sub_1CA94B338();
      sub_1CA94B458();
      OUTLINED_FUNCTION_89();
      __swift_storeEnumTagSinglePayload(v448, v449, v450, v451);
      sub_1CA94A988();
      (*(v424 + 8))(v423, v425);
      *v701 = v709;
      OUTLINED_FUNCTION_39();
      (*(v452 + 104))(v453, v454);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_4_49();
    sub_1CA5EF5D8();
    (*(v424 + 8))(v423, v425);
LABEL_135:
    swift_deallocBox();
    goto LABEL_30;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v426 = swift_dynamicCastObjCClass();
  if (v426)
  {
    v427 = v426;
    v428 = *(v0 + 1024);
    v429 = *(v0 + 1016);
    v430 = *(v0 + 864);
    v431 = *(v0 + 608);
    v432 = swift_allocBox();
    v434 = OUTLINED_FUNCTION_129_3(v432, v433);
    (*(v428 + 104))(v431 + v435, *MEMORY[0x1E69DB488], v429, v434);
    _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
    v436 = [objc_opt_self() defaultContext];
    OUTLINED_FUNCTION_140_5(v436);
    v437 = *(v0 + 1144);
    v438 = *(v0 + 1064);
    v439 = *(v0 + 1056);
    if (!v430)
    {
      v702 = *(v0 + 480);
      OUTLINED_FUNCTION_4_49();
      sub_1CA5EF5D8();
      v461 = [v427 event];
      v462 = [v461 calendarItemIdentifier];

      sub_1CA94C3A8();
      sub_1CA94AC88();
      sub_1CA94C1E8();
      v463 = [v427 name];
      sub_1CA94C3A8();

      sub_1CA94B368();
      sub_1CA94B458();
      OUTLINED_FUNCTION_89();
      __swift_storeEnumTagSinglePayload(v464, v465, v466, v467);
      sub_1CA94A988();
      (*(v438 + 8))(v437, v439);
      *v702 = v709;
      OUTLINED_FUNCTION_39();
      (*(v468 + 104))(v469, v470);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_4_49();
    sub_1CA5EF5D8();
    (*(v438 + 8))(v437, v439);
    goto LABEL_135;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastObjCClass())
  {
    v455 = *(v0 + 1024);
    v456 = *(v0 + 1016);
    v457 = *(v0 + 856);
    v458 = *(v0 + 600);
    v459 = *(v0 + 592);
    *(v0 + 1664) = swift_allocBox();
    *(v0 + 1672) = v460;
    *v458 = 0u;
    *(v458 + 16) = 0u;
    *(v458 + 32) = 0;
    (*(v455 + 104))(v458 + *(v459 + 20), *MEMORY[0x1E69DB488], v456);
    _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
    *(v458 + *(v459 + 28)) = [objc_opt_self() defaultContext];
    static WFContentItem.toolkitTypeIdentifier(context:)(v458, v457);
    v480 = *(v0 + 496);
    OUTLINED_FUNCTION_4_49();
    sub_1CA5EF5D8();
    v481 = sub_1CA948D28();
    OUTLINED_FUNCTION_1_0();
    v483 = v482;
    v484 = OUTLINED_FUNCTION_45();
    *(v0 + 1680) = v484;
    sub_1CA948D18();
    *(v0 + 392) = sub_1CA948CC8();
    *(v0 + 400) = v485;
    *(v0 + 1688) = v485;
    (*(v483 + 8))(v484, v481);
    *(v0 + 1696) = sub_1CA94AC88();
    *(v0 + 1704) = sub_1CA94C1E8();
    v486 = v480;
    sub_1CA94B718();
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 1712) = v487;
    *v487 = v488;
    v487[1] = sub_1CA5E0B44;
    goto LABEL_98;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCastObjCClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446F98, &unk_1CA98E330);
    OUTLINED_FUNCTION_40();
    v471 = sub_1CA949D18();
    OUTLINED_FUNCTION_12(v471);
    v472 = swift_allocObject();
    *(v0 + 1736) = v472;
    *(v472 + 16) = xmmword_1CA981310;
    sub_1CA949CA8();
    v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
    OUTLINED_FUNCTION_18_0(v473);
    *(v0 + 1744) = OUTLINED_FUNCTION_45();
    sub_1CA948BA8();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v474, v475, v476, v477);
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 1752) = v478;
    *v478 = v479;
    v478[1] = sub_1CA5E0F78;
    goto LABEL_3;
  }

  v13 = *(v0 + 496);
  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v489 = swift_dynamicCastObjCClass();
  if (v489)
  {
    v490 = v489;
    v707 = *(v0 + 1144);
    v491 = *(v0 + 1064);
    v492 = *(v0 + 1056);
    OUTLINED_FUNCTION_102_4();
    sub_1CA94AC18();
    v710 = swift_allocBox();
    v100 = v493;
    v494 = [v490 measurement];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445AD0, &unk_1CA981530);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_45();
    sub_1CA25B3D0(0, &qword_1EC443828, 0x1E696AFD0);
    sub_1CA948808();

    (*(v491 + 8))(v707, v492);
    v495 = OUTLINED_FUNCTION_121();
    v496(v495);
    goto LABEL_27;
  }

LABEL_146:
  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v497 = swift_dynamicCastObjCClass();
  if (v497)
  {
    v498 = v497;
    v499 = [v497 app];
    if (v499)
    {
      v500 = v499;
      v501 = [v499 bundleIdentifier];

      sub_1CA94C3A8();
    }

    v516 = [v498 intentApplication];
    v517 = [v516 displayRepresentation];

    if (v517)
    {
      (i)(*(v0 + 1096), *(v0 + 1144), *(v0 + 1056));
      v518 = OUTLINED_FUNCTION_188();
      DisplayRepresentation.init(from:displayRepresentationConfig:)(v518, v519);
    }

    else
    {
      v713 = [v498 app];
      if (v713)
      {
        v520 = [v713 displayRepresentation];
        if (v520)
        {
          v521 = v520;
          v522 = *(v0 + 560);
          sub_1CA3F132C(v520, &selRef_subtitle);
          sub_1CA3F132C(v521, &selRef_altText);
          v523 = sub_1CA94B318();
          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v524, v525, v526, v523);
          sub_1CA5EF524(v521, &selRef_imageData);
          if (v527 >> 60 != 15)
          {
            OUTLINED_FUNCTION_165();
            v528 = *(v0 + 560);
            sub_1CA5F03BC(v528, &unk_1EC444A78);
            *v528 = v522;
            v528[1] = v11;
            OUTLINED_FUNCTION_19_23();
            (*(v529 + 104))(v528);
            OUTLINED_FUNCTION_89();
            __swift_storeEnumTagSinglePayload(v530, v531, v532, v523);
          }

          v533 = sub_1CA94B2E8();
          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v534, v535, v536, v533);
          sub_1CA5EF524(v521, &selRef_snippetPluginModelData);
          if (v537 >> 60 != 15)
          {
            sub_1CA3F132C(v521, &selRef_snippetPluginModelBundleIdentifier);
            if (v538)
            {
              v539 = *(v0 + 584);
              v540 = *(v0 + 576);
              v541 = OUTLINED_FUNCTION_204();
              MEMORY[0x1CCAA0150](v541);
              sub_1CA5F03BC(v540, &qword_1EC444A70);
              OUTLINED_FUNCTION_89();
              __swift_storeEnumTagSinglePayload(v542, v543, v544, v533);
              sub_1CA5F0374(v539, v540, &qword_1EC444A70, &qword_1CA985610);
            }

            else
            {
              v598 = OUTLINED_FUNCTION_204();
              sub_1CA39F318(v598, v599);
            }
          }

          v600 = *(v0 + 704);
          v678 = *(v0 + 576);
          v681 = *(v0 + 712);
          v601 = *(v0 + 568);
          v602 = *(v0 + 560);
          v603 = *(v0 + 552);
          sub_1CA5EF580(v521);
          v604 = [v521 title];
          sub_1CA94C3A8();

          sub_1CA5EFF54(v602, v603, &unk_1EC444A78, &qword_1CA985618);
          sub_1CA5EFF54(v678, v601, &qword_1EC444A70, &qword_1CA985610);
          OUTLINED_FUNCTION_3_3();
          sub_1CA94B358();

          sub_1CA5F03BC(v678, &qword_1EC444A70);
          sub_1CA5F03BC(v602, &unk_1EC444A78);
          sub_1CA94B458();
          OUTLINED_FUNCTION_89();
          __swift_storeEnumTagSinglePayload(v605, v606, v607, v608);
          sub_1CA5F0374(v600, v681, &qword_1EC4468C0, &qword_1CA988C00);
          goto LABEL_185;
        }
      }

      sub_1CA94B458();
      OUTLINED_FUNCTION_121_1();
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v548, v549, v550, v551);
    }

LABEL_185:
    v708 = *(v0 + 1144);
    v609 = *(v0 + 1064);
    v610 = *(v0 + 1056);
    v611 = *(v0 + 792);
    v612 = *(v0 + 712);
    v80 = *(v0 + 480);
    sub_1CA94AC18();
    v714 = swift_allocBox();
    v614 = v613;
    sub_1CA5EFF54(v612, v611, &qword_1EC4468C0, &qword_1CA988C00);
    sub_1CA94AAC8();
    sub_1CA5F03BC(v612, &qword_1EC4468C0);
    (*(v609 + 8))(v708, v610);
    OUTLINED_FUNCTION_39();
    (*(v615 + 104))(v614);
    *v80 = v714;
    goto LABEL_19;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_5_3();
  v502 = swift_dynamicCastObjCClass();
  if (v502)
  {
    v503 = v502;
    v504 = *(v0 + 496);
    *(v0 + 1768) = sub_1CA94AC18();
    v505 = swift_allocBox();
    *(v0 + 408) = v505;
    *(v0 + 416) = v506;
    *(v0 + 1776) = v505;
    v507 = [v503 workflowReference];
    v508 = [v507 identifier];

    v509 = sub_1CA94C3A8();
    v511 = v510;
    *(v0 + 424) = v509;
    *(v0 + 432) = v510;

    *(v0 + 1784) = v511;
    v512 = OUTLINED_FUNCTION_129();
    i(v512);
    v513 = v504;
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v0 + 1792) = v514;
    *v514 = v515;
    v514[1] = sub_1CA5E13A8;
    goto LABEL_98;
  }

  v545 = *(v0 + 496);
  type metadata accessor for WFRemoteAppValueContentItem();
  OUTLINED_FUNCTION_93();
  v546 = swift_dynamicCastClass();
  if (!v546)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_93();
    if (swift_dynamicCastObjCClass())
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_77();
      *(v0 + 1848) = v552;
      *v552 = v553;
      v552[1] = sub_1CA5E1D90;
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_93_0();

      return sub_1CA5E8AEC(v554, v555, v556);
    }

    v578 = *(v0 + 496);
    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_40();
      v579 = sub_1CA949058();
      OUTLINED_FUNCTION_1_0();
      v581 = v580;
      OUTLINED_FUNCTION_45();
      v582 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444BB0, &qword_1CA985928);
      OUTLINED_FUNCTION_18_0(v582);
      v583 = OUTLINED_FUNCTION_45();
      if ([v578 recurrenceRule])
      {
        OUTLINED_FUNCTION_162_1();
        sub_1CA94CEB8();

        v584 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_49(v584, v585, v579);
        if (!v144)
        {
          v586 = OUTLINED_FUNCTION_11_32();
          v587 = *(v0 + 480);
          (*(v588 + 8))(v586);
          v589 = *(v581 + 32);
          v590 = OUTLINED_FUNCTION_107_0();
          v589(v590);

          sub_1CA94AC18();
          v591 = swift_allocBox();
          v593 = OUTLINED_FUNCTION_47_13(v591, v592);
          v589(v593);
LABEL_182:
          OUTLINED_FUNCTION_20_27();
          v594 = OUTLINED_FUNCTION_101();
          v595(v594);
          *v587 = v29;
          v596 = *MEMORY[0x1E69DAE70];
          sub_1CA94AC88();
          OUTLINED_FUNCTION_0_1();
          (*(v597 + 104))(v587, v596);
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_46();
        __swift_storeEnumTagSinglePayload(v616, v617, v618, v579);
      }

      sub_1CA5F03BC(v583, &qword_1EC444BB0);

      sub_1CA2F0CD4();
      OUTLINED_FUNCTION_4_0();
      v619 = swift_allocError();
      OUTLINED_FUNCTION_48_6(v619, v620);
      OUTLINED_FUNCTION_139_4(v621);
      v312 = OUTLINED_FUNCTION_41_0();
      goto LABEL_24;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_30();
      sub_1CA94CC88();
      if ([v545 objectForClass_])
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_160_3();
      }

      *(v0 + 160) = v715;
      *(v0 + 176) = v716;
      if (!*(v0 + 184))
      {
        v572 = v0 + 160;
        goto LABEL_176;
      }

      if ((OUTLINED_FUNCTION_138_6() & 1) == 0)
      {
        goto LABEL_177;
      }

      v622 = *(v0 + 464);
      v623 = sub_1CA948898();
      OUTLINED_FUNCTION_1_0();
      v625 = v624;
      OUTLINED_FUNCTION_45();
      v626 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444690, &unk_1CA983A20);
      OUTLINED_FUNCTION_18_0(v626);
      v627 = OUTLINED_FUNCTION_45();
      v628 = sub_1CA5EF3D8(&qword_1EC444BE8, MEMORY[0x1EEE77BF0]);
      OUTLINED_FUNCTION_173_1(v628);

      v629 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_49(v629, v630, v623);
      if (!v144)
      {
        v638 = OUTLINED_FUNCTION_11_32();
        v587 = *(v0 + 480);
        (*(v639 + 8))(v638);
        v640 = *(v625 + 32);
        v641 = OUTLINED_FUNCTION_107_0();
        v640(v641);

        sub_1CA94AC18();
        v642 = swift_allocBox();
        v644 = OUTLINED_FUNCTION_47_13(v642, v643);
        v640(v644);
        goto LABEL_182;
      }

      v631 = &qword_1EC444690;
LABEL_200:
      sub_1CA5F03BC(v627, v631);

      goto LABEL_177;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_5_3();
    if (!swift_dynamicCastObjCClass())
    {
      v632 = *(v0 + 496);
      *(v0 + 440) = v632;
      sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
      v633 = v632;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446F90, &qword_1CA98E318);
      if (swift_dynamicCast())
      {
        sub_1CA27F268((v0 + 16), v0 + 56);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        OUTLINED_FUNCTION_148_3();
        OUTLINED_FUNCTION_35_2();
        swift_task_alloc();
        OUTLINED_FUNCTION_77();
        *(v0 + 1864) = v634;
        *v634 = v635;
        v634[1] = sub_1CA5E2134;
        OUTLINED_FUNCTION_106_5();
        OUTLINED_FUNCTION_93_0();

        __asm { BRAA            X4, X16 }
      }

      objc_opt_self();
      OUTLINED_FUNCTION_5_3();
      if (!swift_dynamicCastObjCClass())
      {
LABEL_106:
        OUTLINED_FUNCTION_88_3();
        OUTLINED_FUNCTION_116_5();
        v308 = [ObjCClassMetadata description];
        sub_1CA94C3A8();

        v309 = OUTLINED_FUNCTION_21_6();
        MEMORY[0x1CCAA1300](v309);

        MEMORY[0x1CCAA1300](0xD000000000000031, 0x80000001CA9D3DF0);
        sub_1CA2F0CD4();
        OUTLINED_FUNCTION_4_0();
        v310 = swift_allocError();
        *v311 = v715;
        *(v311 + 16) = 3;
        OUTLINED_FUNCTION_139_4(v310);
        v312 = OUTLINED_FUNCTION_107_0();
LABEL_24:
        v313(v312);
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_30();
      sub_1CA94CC88();
      if ([v632 objectForClass_])
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_160_3();
      }

      *(v0 + 96) = v715;
      *(v0 + 112) = v716;
      if (!*(v0 + 120))
      {
        v572 = v0 + 96;
        goto LABEL_176;
      }

      if ((OUTLINED_FUNCTION_138_6() & 1) == 0)
      {
        goto LABEL_177;
      }

      v654 = *(v0 + 448);
      v655 = sub_1CA948A48();
      OUTLINED_FUNCTION_1_0();
      v657 = v656;
      OUTLINED_FUNCTION_45();
      v658 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447940, &unk_1CA983D00);
      OUTLINED_FUNCTION_18_0(v658);
      v627 = OUTLINED_FUNCTION_45();
      v659 = sub_1CA5EF3D8(&qword_1EC444BE0, MEMORY[0x1EEE78218]);
      OUTLINED_FUNCTION_173_1(v659);

      v660 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_49(v660, v661, v655);
      if (!v144)
      {
        v662 = OUTLINED_FUNCTION_11_32();
        v587 = *(v0 + 480);
        (*(v663 + 8))(v662);
        v664 = *(v657 + 32);
        v665 = OUTLINED_FUNCTION_107_0();
        v664(v665);

        sub_1CA94AC18();
        v666 = swift_allocBox();
        v668 = OUTLINED_FUNCTION_47_13(v666, v667);
        v664(v668);
        goto LABEL_182;
      }

      v631 = &qword_1EC447940;
      goto LABEL_200;
    }

    OUTLINED_FUNCTION_30();
    sub_1CA94CC88();
    if ([v545 objectForClass_])
    {
      sub_1CA94D258();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_160_3();
    }

    *(v0 + 128) = v715;
    *(v0 + 144) = v716;
    if (!*(v0 + 152))
    {
      v572 = v0 + 128;
      goto LABEL_176;
    }

    if ((OUTLINED_FUNCTION_138_6() & 1) == 0)
    {
      goto LABEL_177;
    }

    v645 = *(v0 + 456);
    sub_1CA94CC68();

    if (*(v0 + 240) == 1)
    {
      goto LABEL_177;
    }

    v646 = OUTLINED_FUNCTION_11_32();
    v647 = *(v0 + 480);
    v649 = *(v0 + 224);
    v648 = *(v0 + 232);
    (*(v650 + 8))(v646);
    sub_1CA94AC18();
    v651 = swift_allocBox();
    *v652 = v649;
    v652[1] = v648;
    OUTLINED_FUNCTION_39();
    (*(v653 + 104))();
    *v647 = v651;
LABEL_78:
    sub_1CA94AC88();
    OUTLINED_FUNCTION_0_1();
    v58 = OUTLINED_FUNCTION_3_3();
    goto LABEL_21;
  }

  v547 = v546;
  type metadata accessor for WFRemoteAppValue(0);
  if ([v547 objectForClass_])
  {
    sub_1CA94D258();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_160_3();
  }

  *(v0 + 192) = v715;
  *(v0 + 208) = v716;
  if (!*(v0 + 216))
  {
    v572 = v0 + 192;
LABEL_176:
    sub_1CA5F03BC(v572, &unk_1EC444650);
    goto LABEL_177;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_177;
  }

  v558 = *(v0 + 1056);
  v559 = *(v0 + 544);
  v560 = *(v0 + 536);
  v561 = *(v0 + 472);
  *(v0 + 1824) = v561;
  v562 = *(v561 + OBJC_IVAR____TtC11WorkflowKit16WFRemoteAppValue_value);
  v563 = OBJC_IVAR____TtC11WorkflowKit16WFRemoteAppValue_sourceContainer;
  v564 = v560[5];
  sub_1CA94B1C8();
  OUTLINED_FUNCTION_0_1();
  (*(v565 + 16))(&v559[v564], v561 + v563);
  (i)(&v559[v560[6]], &v691[v696], v558);
  v566 = objc_opt_self();
  v567 = v562;
  v568 = [v566 defaultContext];
  *v559 = v567;
  *&v559[v560[7]] = v568;
  *&v559[v560[8]] = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v0 + 1832) = v569;
  *v569 = v570;
  v569[1] = sub_1CA5E17BC;
  OUTLINED_FUNCTION_134_5();
  OUTLINED_FUNCTION_93_0();

  return TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA5DDDD0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1184) = v0;

  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA5DDEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_119_3();
  v64();
  sub_1CA94AC18();
  v65 = swift_allocBox();
  v67 = OUTLINED_FUNCTION_31_11(v65, v66);
  v68(v67);
  OUTLINED_FUNCTION_20_27();
  v69 = OUTLINED_FUNCTION_101();
  v70(v69);
  *v62 = v63;
  sub_1CA94AC88();
  OUTLINED_FUNCTION_0_1();
  v71 = OUTLINED_FUNCTION_134();
  v72(v71);
  v73 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v73);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1CA5DE1C0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v3[157] = v0;

  if (v0)
  {
  }

  else
  {
    v3[158] = v3[32];
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5DE2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = v62[158];
  v84 = v62[143];
  v64 = v62[133];
  v82 = v62[149];
  v83 = v62[132];
  v85 = v62[60];
  v86 = v62[155];
  sub_1CA94B458();
  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  sub_1CA94AA98();

  (*(v64 + 8))(v84, v83);
  OUTLINED_FUNCTION_39();
  (*(v69 + 104))(v63);
  *v85 = v86;
  v70 = *MEMORY[0x1E69DAE70];
  sub_1CA94AC88();
  OUTLINED_FUNCTION_0_1();
  (*(v71 + 104))(v85, v70);
  v72 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v72);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, v82, v83, v84, v85, v86, a59, a60, a61, a62);
}

uint64_t sub_1CA5DE600()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v3[164] = v0;

  if (v0)
  {
    (*(v3[85] + 8))(v3[86], v3[84]);
  }

  else
  {
    v7 = v3[34];
    v3[165] = v3[35];
    v3[166] = v7;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA5DE72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v65 = *(v63 + 1328);
  v66 = *(v63 + 1272);
  OUTLINED_FUNCTION_126_4();
  OUTLINED_FUNCTION_102_4();
  sub_1CA94B458();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  sub_1CA94AA58();

  (*(v64 + 8))(a57, a56);
  OUTLINED_FUNCTION_19_23();
  (*(v71 + 104))(v65);
  *v62 = a58;
  sub_1CA94AC88();
  OUTLINED_FUNCTION_0_1();
  v72 = OUTLINED_FUNCTION_3_3();
  v73(v72);
  v74 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v74);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1CA5DEA34()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1352) = v0;

  OUTLINED_FUNCTION_25_2();
  sub_1CA5F03BC(*(v4 + 768), &qword_1EC4468C0);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA5DEB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_46_10();

  v63 = OUTLINED_FUNCTION_3_3();
  v64(v63);
  v65 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v65);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1CA5DEDA8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1384) = v5;
  *(v3 + 1392) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CA5DEEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = *(v62 + 1384);
  if (v63)
  {
    v64 = *(v62 + 1152);
    v65 = *(v62 + 664);
    v66 = *(v62 + 656);
    v67 = *(v62 + 648);
    *(v62 + 1400) = sub_1CA94AC18();
    v68 = swift_allocBox();
    *(v62 + 296) = v68;
    *(v62 + 304) = v69;
    *(v62 + 1408) = v68;
    v70 = v63;
    sub_1CA94AD28();
    (*(v66 + 104))(v65, *MEMORY[0x1E69DAD48], v67);
    v71 = OUTLINED_FUNCTION_116();
    v64(v71);
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    *(v62 + 1416) = v72;
    *v72 = v73;
    v72[1] = sub_1CA5DF37C;
    OUTLINED_FUNCTION_36_13();
    OUTLINED_FUNCTION_24_17();

    return DisplayRepresentation.init(from:thumbnailSize:displayRepresentationConfig:)();
  }

  else
  {

    sub_1CA2F0CD4();
    OUTLINED_FUNCTION_4_0();
    v135 = swift_allocError();
    OUTLINED_FUNCTION_48_6(v135, v76);
    swift_willThrow();
    v77 = OUTLINED_FUNCTION_3_3();
    v78(v77);
    v87 = *(v62 + 1048);
    v88 = *(v62 + 1040);
    v89 = *(v62 + 1032);
    v90 = *(v62 + 1008);
    v91 = *(v62 + 1000);
    v92 = *(v62 + 976);
    v93 = *(v62 + 952);
    v94 = *(v62 + 944);
    v95 = *(v62 + 936);
    v96 = *(v62 + 928);
    v97 = *(v62 + 920);
    v98 = *(v62 + 912);
    v99 = *(v62 + 904);
    v100 = *(v62 + 896);
    v101 = *(v62 + 888);
    v102 = *(v62 + 880);
    v103 = *(v62 + 872);
    v104 = *(v62 + 864);
    v105 = *(v62 + 856);
    v106 = *(v62 + 832);
    v107 = *(v62 + 824);
    v108 = *(v62 + 816);
    v109 = *(v62 + 792);
    v110 = *(v62 + 784);
    v111 = *(v62 + 776);
    v112 = *(v62 + 768);
    v113 = *(v62 + 760);
    v114 = *(v62 + 752);
    v115 = *(v62 + 744);
    v116 = *(v62 + 736);
    v117 = *(v62 + 728);
    v118 = *(v62 + 720);
    v119 = *(v62 + 712);
    v120 = *(v62 + 704);
    v121 = *(v62 + 696);
    v122 = *(v62 + 688);
    v123 = *(v62 + 664);
    v124 = *(v62 + 640);
    v125 = *(v62 + 616);
    v126 = *(v62 + 608);
    v127 = *(v62 + 600);
    v128 = *(v62 + 584);
    v129 = *(v62 + 576);
    v130 = *(v62 + 568);
    v131 = *(v62 + 560);
    v132 = *(v62 + 552);
    v133 = *(v62 + 544);
    v134 = *(v62 + 528);

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_24_17();

    return v80(v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, a58, a59, a60, a61, a62);
  }
}

uint64_t sub_1CA5DF37C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v3[178] = v0;

  if (v0)
  {
    (*(v3[82] + 8))(v3[83], v3[81]);
  }

  else
  {
    v3[179] = v3[38];
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5DF498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v64 = v63[179];
  v85 = v63[176];
  v65 = v63[173];
  OUTLINED_FUNCTION_102_4();
  sub_1CA94B458();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  OUTLINED_FUNCTION_204();
  sub_1CA94AB78();

  v70 = OUTLINED_FUNCTION_70();
  v71(v70);
  OUTLINED_FUNCTION_39();
  (*(v72 + 104))(v64);
  *v62 = v85;
  sub_1CA94AC88();
  OUTLINED_FUNCTION_0_1();
  v73 = OUTLINED_FUNCTION_3_3();
  v74(v73);
  v75 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v75);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v85, a59, a60, a61, a62);
}

uint64_t sub_1CA5DF79C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v3[185] = v0;

  if (v0)
  {
    (*(v3[106] + 8))(v3[111], v3[105]);
  }

  else
  {
    v7 = v3[40];
    v3[186] = v3[41];
    v3[187] = v7;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA5DF8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_126_4();
  v64 = *(v62 + 480);
  sub_1CA94B458();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  OUTLINED_FUNCTION_26_13();
  sub_1CA94A988();
  (*(v63 + 8))(a57, a56);
  *v64 = a58;
  OUTLINED_FUNCTION_20_27();
  v69 = OUTLINED_FUNCTION_101();
  v70(v69);
  v71 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v71);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1CA5DFBAC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  *(v3 + 1544) = v0;

  if (v0)
  {
  }

  else
  {
    *(v3 + 1552) = *(v3 + 352);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5DFCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v64 = v63[194];
  v85 = v63[190];
  v65 = v63[188];
  OUTLINED_FUNCTION_102_4();
  sub_1CA94B458();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  sub_1CA94AB38();

  v70 = OUTLINED_FUNCTION_126();
  v71(v70);
  OUTLINED_FUNCTION_20_27();
  (*(v72 + 104))(v64);
  *v62 = v85;
  sub_1CA94AC88();
  OUTLINED_FUNCTION_0_1();
  v73 = OUTLINED_FUNCTION_3_3();
  v74(v73);
  v75 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v75);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v85, a59, a60, a61, a62);
}

uint64_t sub_1CA5DFFB8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 1568) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5E00B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_119_3();
  v64();
  sub_1CA94AC18();
  v65 = swift_allocBox();
  v67 = OUTLINED_FUNCTION_31_11(v65, v66);
  v68(v67);
  OUTLINED_FUNCTION_20_27();
  v69 = OUTLINED_FUNCTION_101();
  v70(v69);
  *v62 = v63;
  sub_1CA94AC88();
  OUTLINED_FUNCTION_0_1();
  v71 = OUTLINED_FUNCTION_134();
  v72(v71);
  v73 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v73);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1CA5E0384()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1592) = v0;

  OUTLINED_FUNCTION_25_2();
  v6 = *(v5 + 1576);
  sub_1CA5F03BC(*(v1 + 736), &qword_1EC4468C0);

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5E04C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v62 = OUTLINED_FUNCTION_7_38();
  v63(v62);
  v64 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v64);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1CA5E0700()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v3[205] = v0;

  if (v0)
  {
    (*(v3[106] + 8))(v3[110], v3[105]);
  }

  else
  {
    v7 = v3[48];
    v3[206] = v3[45];
    v3[207] = v7;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA5E0848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v81 = v62[143];
  v82 = v62[201];
  v63 = v62[133];
  v80 = v62[132];
  v64 = v62[60];
  sub_1CA94B458();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  sub_1CA94A988();
  (*(v63 + 8))(v81, v80);
  *v64 = v82;
  OUTLINED_FUNCTION_39();
  (*(v69 + 104))(v64);
  v70 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v70);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, v80, v81, v82, a59, a60, a61, a62);
}

uint64_t sub_1CA5E0B44()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v3[215] = v0;

  if (v0)
  {
    (*(v3[106] + 8))(v3[107], v3[105]);
  }

  else
  {
    v3[216] = v3[49];
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5E0C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v82 = v62[210];
  v83 = v62[208];
  v63 = v62[133];
  v80 = v62[132];
  v81 = v62[143];
  v64 = v62[60];
  sub_1CA94B458();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  sub_1CA94A988();
  (*(v63 + 8))(v81, v80);

  *v64 = v83;
  OUTLINED_FUNCTION_39();
  (*(v69 + 104))(v64);
  v70 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v70);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, v80, v81, v82, v83, a59, a60, a61, a62);
}

uint64_t sub_1CA5E0F78()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1760) = v0;

  sub_1CA5F03BC(*(v2 + 1744), &qword_1EC444A90);

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CA5E10D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_11_32();
  OUTLINED_FUNCTION_119_3();
  v64();
  sub_1CA94AC18();
  v65 = swift_allocBox();
  v67 = OUTLINED_FUNCTION_31_11(v65, v66);
  v68(v67);
  OUTLINED_FUNCTION_20_27();
  v69 = OUTLINED_FUNCTION_101();
  v70(v69);
  *v62 = v63;
  sub_1CA94AC88();
  OUTLINED_FUNCTION_0_1();
  v71 = OUTLINED_FUNCTION_134();
  v72(v71);
  v73 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v73);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1CA5E13A8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v3[225] = v0;

  if (v0)
  {
  }

  else
  {
    v7 = v3[52];
    v3[226] = v3[53];
    v3[227] = v7;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CA5E14B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = v62[227];
  v84 = v62[222];
  v64 = v62[60];
  sub_1CA94B458();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  OUTLINED_FUNCTION_20_0();
  sub_1CA94ABD8();
  v69 = OUTLINED_FUNCTION_126();
  v70(v69);
  OUTLINED_FUNCTION_20_27();
  (*(v71 + 104))(v63);
  *v64 = v84;
  v72 = *MEMORY[0x1E69DAE70];
  sub_1CA94AC88();
  OUTLINED_FUNCTION_0_1();
  (*(v73 + 104))(v64, v72);
  v74 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v74);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v84, a59, a60, a61, a62);
}

uint64_t sub_1CA5E17BC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1840) = v0;

  OUTLINED_FUNCTION_25_2();
  sub_1CA5EF5D8();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA5E18EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_46_10();

  v63 = OUTLINED_FUNCTION_3_3();
  v64(v63);
  v65 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v65);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1CA5E1B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_46_10();

  v64 = OUTLINED_FUNCTION_3_3();
  v65(v64);
  v76 = *(v62 + 1840);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v66);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v76, a59, a60, a61, a62);
}

uint64_t sub_1CA5E1D90()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 1856) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5E1E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_11_32();
  v64 = v63[66];
  v65 = v63[65];
  v66 = v63[64];
  OUTLINED_FUNCTION_119_3();
  v67();
  v68 = swift_allocBox();
  (*(v65 + 32))(v69, v64, v66);
  *v62 = v68;
  sub_1CA94AC88();
  OUTLINED_FUNCTION_0_1();
  v70 = OUTLINED_FUNCTION_134();
  v71(v70);
  v72 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v72);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1CA5E2134()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 1872) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5E222C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_7_38();
  v64(v63);
  __swift_destroy_boxed_opaque_existential_0((v62 + 56));

  v65 = OUTLINED_FUNCTION_1_45();
  OUTLINED_FUNCTION_2_56(v65);

  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1CA5E2474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_7_38();
  v64(v63);
  v75 = *(v62 + 1184);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E26C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_101_4(*(v62 + 1192));
  v63 = OUTLINED_FUNCTION_41_1();
  v64(v63);
  swift_deallocBox();
  v75 = *(v62 + 1256);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E2920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_101_4(*(v62 + 1272));
  v63 = OUTLINED_FUNCTION_41_1();
  v64(v63);
  swift_deallocBox();
  v75 = *(v62 + 1312);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E2B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_46_10();

  v64 = OUTLINED_FUNCTION_3_3();
  v65(v64);
  v76 = *(v62 + 1352);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v66);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v76, a59, a60, a61, a62);
}

uint64_t sub_1CA5E2DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_7_38();
  v64(v63);
  v75 = *(v62 + 1392);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E3028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_101_4(*(v62 + 1384));
  v63 = OUTLINED_FUNCTION_41_1();
  v64(v63);
  swift_deallocBox();
  v75 = *(v62 + 1424);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E3288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_7_38();
  v64(v63);
  swift_deallocBox();
  v75 = *(v62 + 1480);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E34E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  OUTLINED_FUNCTION_101_4(*(v62 + 1504));
  v63 = OUTLINED_FUNCTION_41_1();
  v64(v63);
  swift_deallocBox();
  v75 = *(v62 + 1544);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E3740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_7_38();
  v64(v63);
  v75 = *(v62 + 1568);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_7_38();
  v64(v63);
  v75 = *(v62 + 1592);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E3BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_7_38();
  v64(v63);
  swift_deallocBox();
  v75 = *(v62 + 1640);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E3E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_7_38();
  v64(v63);

  swift_deallocBox();
  v75 = *(v62 + 1720);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E4094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_7_38();
  v64(v63);

  v75 = *(v62 + 1760);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E42EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_7_38();
  v64(v63);
  swift_deallocBox();
  v75 = *(v62 + 1800);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E4544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_7_38();
  v64(v63);
  v75 = *(v62 + 1856);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

uint64_t sub_1CA5E4790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_7_38();
  v64(v63);
  __swift_destroy_boxed_opaque_existential_0((v62 + 56));

  v75 = *(v62 + 1872);
  OUTLINED_FUNCTION_12_29();
  OUTLINED_FUNCTION_0_63();
  OUTLINED_FUNCTION_3_49(v65);

  OUTLINED_FUNCTION_14_28();
  OUTLINED_FUNCTION_24_17();

  return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, v75, a59, a60, a61, a62);
}

void sub_1CA5E49EC()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_125();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_18_0(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10 + 16;
  v12 = OUTLINED_FUNCTION_129();
  sub_1CA5EFF54(v12, v13, &qword_1EC443880, &qword_1CA982FB0);
  v14 = sub_1CA94C858();
  v15 = OUTLINED_FUNCTION_26_10();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_1CA5F03BC(v11, &qword_1EC443880);
  }

  else
  {
    sub_1CA94C848();
    OUTLINED_FUNCTION_19_23();
    v18 = OUTLINED_FUNCTION_41_0();
    v19(v18);
  }

  v20 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = sub_1CA94C7C8();
    v23 = v22;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v25 = v3;
      sub_1CA94C418();
      sub_1CA94AD48();

      if (v23 | v21)
      {
        v26[0] = 0;
        v26[1] = 0;
        v24 = v26;
        v26[2] = v21;
        v26[3] = v23;
      }

      else
      {
        v24 = 0;
      }

      OUTLINED_FUNCTION_89_3(v24);
      OUTLINED_FUNCTION_87();

      sub_1CA5F03BC(v25, &qword_1EC443880);

      goto LABEL_14;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_1CA5F03BC(v3, &qword_1EC443880);
  sub_1CA94AD48();
  if (v23 | v21)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v21;
    v26[7] = v23;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_36();
}

void sub_1CA5E4C34()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_125();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_18_0(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  sub_1CA5EFF54(v3, v23 - v10, &qword_1EC443880, &qword_1CA982FB0);
  v12 = sub_1CA94C858();
  v13 = OUTLINED_FUNCTION_26_10();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1CA5F03BC(v11, &qword_1EC443880);
  }

  else
  {
    sub_1CA94C848();
    OUTLINED_FUNCTION_19_23();
    v16 = OUTLINED_FUNCTION_41_0();
    v17(v16);
  }

  v18 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1CA94C7C8();
    v21 = v20;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v23[0] = v5;
      sub_1CA94C418();
      sub_1CA94B1C8();

      if (v21 | v19)
      {
        v24[0] = 0;
        v24[1] = 0;
        v22 = v24;
        v24[2] = v19;
        v24[3] = v21;
      }

      else
      {
        v22 = 0;
      }

      OUTLINED_FUNCTION_89_3(v22);

      sub_1CA5F03BC(v3, &qword_1EC443880);

      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_1CA5F03BC(v3, &qword_1EC443880);
  sub_1CA94B1C8();
  if (v21 | v19)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v19;
    v24[7] = v21;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_36();
}

uint64_t sub_1CA5E4E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1CA5EFF54(a3, v21 - v9, &qword_1EC443880, &qword_1CA982FB0);
  v11 = sub_1CA94C858();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1CA5F03BC(v10, &qword_1EC443880);
  }

  else
  {
    sub_1CA94C848();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1CA94C7C8();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1CA94C418() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1CA5F03BC(a3, &qword_1EC443880);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CA5F03BC(a3, &qword_1EC443880);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void static WFContentItem.classDescriptor.getter()
{
  OUTLINED_FUNCTION_37_0();
  v0 = sub_1CA94B5F8();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v6 = (v5 - v4);
  sub_1CA25B3D0(0, &unk_1EC441810, off_1E836E808);
  if (swift_dynamicCastMetatype())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [ObjCClassFromMetadata entityMetadata];
    v9 = [v8 identifier];

    v10 = sub_1CA94C3A8();
    v12 = v11;

    v13 = [ObjCClassFromMetadata appBundleIdentifier];
    v14 = sub_1CA94C3A8();
    v16 = v15;

    *v6 = v10;
    v6[1] = v12;
    v6[2] = v14;
    v17 = 3;
    v18 = MEMORY[0x1E69DB450];
  }

  else
  {
    sub_1CA25B3D0(0, &unk_1EC4417A0, off_1E836E818);
    if (swift_dynamicCastMetatype())
    {
      v19 = swift_getObjCClassFromMetadata();
      v20 = [v19 enumMetadata];
      v21 = [v20 identifier];

      v22 = sub_1CA94C3A8();
      v24 = v23;

      v25 = [v19 appBundleIdentifier];
      v26 = sub_1CA94C3A8();
      v16 = v27;

      *v6 = v22;
      v6[1] = v24;
      v6[2] = v26;
      v17 = 3;
      v18 = MEMORY[0x1E69DB468];
    }

    else
    {
      v28 = swift_getObjCClassFromMetadata();
      v29 = NSStringFromClass(v28);
      v30 = sub_1CA94C3A8();
      v16 = v31;

      *v6 = v30;
      v18 = MEMORY[0x1E69DB460];
      v17 = 1;
    }
  }

  v6[v17] = v16;
  (*(v2 + 104))(v6, *v18, v0);
  sub_1CA94B628();
  OUTLINED_FUNCTION_36();
}

uint64_t static WFContentItem.AnyTypeIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v6 = v5 - v4;
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v7 = *(v3 + 28);
  v8 = *MEMORY[0x1E69DB488];
  sub_1CA94B668();
  OUTLINED_FUNCTION_0_1();
  (*(v9 + 104))(v6 + v7, v8);
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  *(v6 + *(v3 + 36)) = [objc_opt_self() defaultContext];
  static WFContentItem.toolkitTypeIdentifier(context:)(v6, a1);
  OUTLINED_FUNCTION_4_49();
  return sub_1CA5EF5D8();
}

uint64_t WFContentItem.ToolKitConversionError.hashValue.getter()
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](0);
  return sub_1CA94D968();
}

uint64_t sub_1CA5E556C@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  v11 = swift_projectBox();
  sub_1CA5EFF54(v11, v10, &qword_1EC444368, &unk_1CA988BC0);
  v12 = sub_1CA94ADC8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
  {
    return (*(*(v12 - 8) + 32))(a3, v10, v12);
  }

  sub_1CA5F03BC(v10, &qword_1EC444368);
  v13 = swift_allocObject();
  v13[2] = sub_1CA94C3A8();
  v13[3] = v14;
  v19[1] = a2;
  swift_getMetatypeMetadata();
  v13[4] = sub_1CA94C408();
  v13[5] = v15;
  v16 = MEMORY[0x1E69DB098];
  *a3 = v13;
  v17 = *(v12 - 8);
  (*(v17 + 104))(a3, *v16, v12);
  (*(v17 + 16))(v8, a3, v12);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
  swift_beginAccess();
  return sub_1CA5F042C(v8, v11, &qword_1EC444368, &unk_1CA988BC0);
}

uint64_t sub_1CA5E57B8()
{
  sub_1CA5EEC04();
  if (qword_1EC442DB0 != -1)
  {
    swift_once();
  }

  sub_1CA94C218();
  sub_1CA94B758();

  if (v4)
  {
    v1 = v3;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v0);
    sub_1CA94B738();

    return v3;
  }

  return v1;
}

uint64_t WFContentItem.ToolKitTypeResolutionContext.requiredCoercion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0) + 20);
  sub_1CA94B668();
  OUTLINED_FUNCTION_52();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t WFContentItem.ToolKitTypeResolutionContext.displayRepresentationConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0) + 24);
  sub_1CA94B728();
  OUTLINED_FUNCTION_52();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id WFContentItem.ToolKitTypeResolutionContext.localizationContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0) + 28));

  return v1;
}

void WFContentItem.ToolKitTypeResolutionContext.init(measurementUnitTypeProvider:outputValueType:displayRepresentationConfig:localizationContext:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1CA94B668();
  OUTLINED_FUNCTION_1_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  sub_1CA5EFF54(v7, v24, &qword_1EC446F78, &qword_1CA98E308);
  if (v5)
  {
    sub_1CA94CB78();

    sub_1CA5F03BC(v7, &qword_1EC446F78);
    v17 = OUTLINED_FUNCTION_125();
    v18(v17);
  }

  else
  {
    sub_1CA5F03BC(v7, &qword_1EC446F78);
    (*(v12 + 104))(v16, *MEMORY[0x1E69DB488], v10);
  }

  v19 = v24[1];
  *v9 = v24[0];
  *(v9 + 16) = v19;
  *(v9 + 32) = v25;
  v20 = type metadata accessor for WFContentItem.ToolKitTypeResolutionContext(0);
  (*(v12 + 32))(v9 + v20[5], v16, v10);
  v21 = v20[6];
  sub_1CA94B728();
  OUTLINED_FUNCTION_0_1();
  (*(v22 + 32))(v9 + v21, v3);
  *(v9 + v20[7]) = v1;
  OUTLINED_FUNCTION_36();
}

uint64_t static WFContentItem.TypedValueResolutionContext.default(displayRepresentationConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E69DB488];
  sub_1CA94B668();
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 104))(a2, v4);
  v6 = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  v7 = v6[5];
  sub_1CA94B728();
  OUTLINED_FUNCTION_0_1();
  (*(v8 + 16))(a2 + v7, a1);
  sub_1CA94AD08();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  if (qword_1EC442008 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC442010;
  v14 = (a2 + v6[7]);
  v14[3] = type metadata accessor for DatabaseContainerDefinitionProvider();
  v14[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
  *v14 = v13;
  v15 = qword_1EC4420F0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC4420F8;
  v17 = (a2 + v6[8]);
  v17[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
  v17[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
  *v17 = v16;
  sub_1CA948BA8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

uint64_t WFContentItem.asEncodedTypedValue()()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v0;
  v2 = sub_1CA94B728();
  v1[3] = v2;
  OUTLINED_FUNCTION_12(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_45();
  v4 = type metadata accessor for WFContentItem.TypedValueResolutionContext(0);
  OUTLINED_FUNCTION_18_0(v4);
  v1[6] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94AC88();
  v1[7] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA5E5ECC()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[5];
  v2 = v0[6];
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  static WFContentItem.TypedValueResolutionContext.default(displayRepresentationConfiguration:)(v1, v2);
  v3 = OUTLINED_FUNCTION_41_1();
  v4(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  v0[10] = v5;
  *v5 = v6;
  v5[1] = sub_1CA5E5F94;

  return WFContentItem.resolve(with:)();
}