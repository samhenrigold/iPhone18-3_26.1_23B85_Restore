void sub_188E58A50(uint64_t a1, void *a2)
{
  v3 = sub_18A4A5FA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35[-1] - v8;
  v10 = sub_18A4A4BE8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v11 + 16))(v13, v16, v10);
  sub_188E5C34C(v16);
  v17 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v17);
  v18 = *(v4 + 8);
  v18(v6, v3);
  sub_18A4A5F78();
  (*(v11 + 8))(v13, v10);
  v19 = sub_188C449C0(v9, v44);
  (v18)(v9, v3, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  sub_188C3DF9C(v44, v43);
  sub_188C3DF9C(v44, v41);
  v21 = swift_allocObject();
  v22 = v41[3];
  *(v21 + 48) = v41[2];
  *(v21 + 64) = v22;
  *(v21 + 80) = v42[0];
  *(v21 + 89) = *(v42 + 9);
  v23 = v41[1];
  *(v21 + 16) = v41[0];
  *(v21 + 32) = v23;
  *(v21 + 112) = signpost_c2_entryLock_start;
  *(v21 + 120) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = swift_allocObject();
  v25[3] = 0;
  v25[4] = 0;
  v25[2] = v24;
  v34 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_188E5C4E8;
  *(v26 + 24) = v20;
  *&v38 = sub_188E3FE50;
  *(&v38 + 1) = v26;
  *&v36 = MEMORY[0x1E69E9820];
  *(&v36 + 1) = 1107296256;
  *&v37 = sub_188A4A968;
  *(&v37 + 1) = &block_descriptor_385;
  v27 = _Block_copy(&v36);
  v28 = a2;

  sub_188C3DFF8(v43, &v36);
  v29 = swift_allocObject();
  v30 = v39;
  *(v29 + 56) = v38;
  *(v29 + 72) = v30;
  *(v29 + 88) = v40[0];
  *(v29 + 97) = *(v40 + 9);
  v31 = v37;
  *(v29 + 24) = v36;
  *(v29 + 16) = v24;
  *(v29 + 40) = v31;
  *(v29 + 113) = 0;
  *(v29 + 120) = sub_188E5C7FC;
  *(v29 + 128) = v21;
  v35[4] = sub_188E5C800;
  v35[5] = v29;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 1107296256;
  v35[2] = sub_188A4A8F0;
  v35[3] = &block_descriptor_392;
  v32 = _Block_copy(v35);

  *&v38 = sub_188E5C82C;
  *(&v38 + 1) = v25;
  *&v36 = MEMORY[0x1E69E9820];
  *(&v36 + 1) = 1107296256;
  *&v37 = sub_188ABD010;
  *(&v37 + 1) = &block_descriptor_395;
  v33 = _Block_copy(&v36);

  [v34 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v33);
  _Block_release(v32);
  _Block_release(v27);

  sub_188C3E234(v43);

  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  else
  {
    sub_188AAFF20(v44);
  }
}

void sub_188E5902C(uint64_t a1, void *a2)
{
  v3 = sub_18A4A5FA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35[-1] - v8;
  v10 = sub_18A4A4BE8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v11 + 16))(v13, v16, v10);
  sub_188E5C34C(v16);
  v17 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v17);
  v18 = *(v4 + 8);
  v18(v6, v3);
  sub_18A4A5F78();
  (*(v11 + 8))(v13, v10);
  v19 = sub_188C449C0(v9, v44);
  (v18)(v9, v3, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  sub_188C3DF9C(v44, v43);
  sub_188C3DF9C(v44, v41);
  v21 = swift_allocObject();
  v22 = v41[3];
  *(v21 + 48) = v41[2];
  *(v21 + 64) = v22;
  *(v21 + 80) = v42[0];
  *(v21 + 89) = *(v42 + 9);
  v23 = v41[1];
  *(v21 + 16) = v41[0];
  *(v21 + 32) = v23;
  *(v21 + 112) = signpost_c2_entryLock_start;
  *(v21 + 120) = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = swift_allocObject();
  v25[3] = 0;
  v25[4] = 0;
  v25[2] = v24;
  v34 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_188E5C4B0;
  *(v26 + 24) = v20;
  *&v38 = sub_188E3FE50;
  *(&v38 + 1) = v26;
  *&v36 = MEMORY[0x1E69E9820];
  *(&v36 + 1) = 1107296256;
  *&v37 = sub_188A4A968;
  *(&v37 + 1) = &block_descriptor_356;
  v27 = _Block_copy(&v36);
  v28 = a2;

  sub_188C3DFF8(v43, &v36);
  v29 = swift_allocObject();
  v30 = v39;
  *(v29 + 56) = v38;
  *(v29 + 72) = v30;
  *(v29 + 88) = v40[0];
  *(v29 + 97) = *(v40 + 9);
  v31 = v37;
  *(v29 + 24) = v36;
  *(v29 + 16) = v24;
  *(v29 + 40) = v31;
  *(v29 + 113) = 0;
  *(v29 + 120) = sub_188E5C7FC;
  *(v29 + 128) = v21;
  v35[4] = sub_188E5C800;
  v35[5] = v29;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 1107296256;
  v35[2] = sub_188A4A8F0;
  v35[3] = &block_descriptor_363;
  v32 = _Block_copy(v35);

  *&v38 = sub_188E5C82C;
  *(&v38 + 1) = v25;
  *&v36 = MEMORY[0x1E69E9820];
  *(&v36 + 1) = 1107296256;
  *&v37 = sub_188ABD010;
  *(&v37 + 1) = &block_descriptor_366;
  v33 = _Block_copy(&v36);

  [v34 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v33);
  _Block_release(v32);
  _Block_release(v27);

  sub_188C3E234(v43);

  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  else
  {
    sub_188AAFF20(v44);
  }
}

uint64_t sub_188E596C8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 56) = a6;
  *(v8 + 48) = a1;
  *(v8 + 40) = a5;
  v9 = sub_18A4A8278();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  sub_18A4A76A8();
  *(v8 + 104) = sub_18A4A7698();
  v11 = sub_18A4A7678();
  *(v8 + 112) = v11;
  *(v8 + 120) = v10;

  return MEMORY[0x1EEE6DFA0](sub_188E597C8, v11, v10);
}

uint64_t sub_188E597C8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    UIAnimationDragCoefficient();
    v2 = sub_18A4A8A38();
    v4 = v3;
    sub_18A4A87D8();
    v5 = swift_task_alloc();
    v0[17] = v5;
    *v5 = v0;
    v5[1] = sub_188E59944;

    return sub_188E5A288(v2, v4, 0, 0, 1);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_188E59944()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_188E59B74;
  }

  else
  {
    v8 = sub_188E59ADC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_188E59ADC()
{
  v1 = *(v0 + 56);

  if (sub_188E59BEC(v1))
  {
    (*(v0 + 64))();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_188E59B74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_188E59BEC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_188B85570(a1);
  v6 = v5;
  if (v5)
  {
    v7 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 24);
    v11 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_188FA0D8C();
      v9 = v11;
    }

    sub_188F9C838(v7, v9);
    *(v2 + 24) = v9;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  return v6 & 1;
}

uint64_t sub_188E59CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728, &unk_18A64C610);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_188A3F29C(a3, v22 - v9, &qword_1EA934728, &unk_18A64C610);
  v11 = sub_18A4A76C8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_188A3F5FC(v10, &qword_1EA934728, &unk_18A64C610);
  }

  else
  {
    sub_18A4A76B8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_18A4A7678();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_18A4A7318() + 32;

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

      sub_188A3F5FC(a3, &qword_1EA934728, &unk_18A64C610);

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

  sub_188A3F5FC(a3, &qword_1EA934728, &unk_18A64C610);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_188E59F5C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_188E59FCC()
{
  result = qword_1EA930E18;
  if (!qword_1EA930E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930E18);
  }

  return result;
}

id sub_188E5A020()
{
  v0 = sub_18A4A5FA8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [result prototypeSettingsEnabled];

    sub_18A4A4BB8();
    if (v3)
    {
      type metadata accessor for NavigationBarPlatterContainer.Settings(0);
      sub_18A4A4B68();
      sub_18A4A4C68();
    }

    else
    {
      sub_18A4A5F78();
      sub_18A4A4BA8();
      sub_18A4A4B88();
      sub_18A4A4BD8();
      sub_18A4A4BC8();
      type metadata accessor for NavigationBarPlatterContainer.Settings(0);
      sub_18A4A4B68();
      sub_18A4A5F78();
      sub_18A4A4AC8();
      sub_18A4A5F78();
      sub_18A4A4B58();
      sub_18A4A4B08();
      sub_18A4A5F78();
      sub_18A4A4B28();
      sub_18A4A4AE8();
      sub_18A4A5F78();
      sub_18A4A4B38();
      sub_18A4A4C68();
      sub_18A4A5F78();
      sub_18A4A4C38();
      sub_18A4A4BF8();
      sub_18A4A5F78();
      sub_18A4A4C58();
      sub_18A4A4C18();
    }

    type metadata accessor for NavigationBarPlatterContainer.Settings(0);
    return sub_18A4A4A78();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188E5A288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_18A4A8268();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_188E5A388, 0, 0);
}

uint64_t sub_188E5A388()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_18A4A8278();
  v5 = sub_188E5C52C(&qword_1EA930D30, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_18A4A87B8();
  sub_188E5C52C(&unk_1EA930D38, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_18A4A8288();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_188E5A518;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_188E5A518()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_188E5A6D4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_188E5A6D4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_188E5A740(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_188E5B1EC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_188E5A80C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_188C48500;

  return sub_188E596C8(v7, a1, v4, v5, v6, v8, v9, v10);
}

id sub_188E5A8EC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platters] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_platterViews] = v4;
  v5 = OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_disappearingPlatterViews;
  *&v1[v5] = sub_188E8D430(v4);
  *&v1[OBJC_IVAR____TtC5UIKit29NavigationBarPlatterContainer_assistant] = a1;
  v28.receiver = v1;
  v28.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 _glassMonochromaticTreatment];
  v11 = [(UIView *)v9 _traitOverrides];
  v12 = [(_UITraitOverrides *)v11 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210, &unk_18A64BB60);
  inited = swift_initStackObject();
  *(inited + 16) = v12;
  v24[0] = inited;
  sub_188AED3F4(v10);
  v14 = [(UIView *)v9 _traitOverrides];
  v15 = *(v24[0] + 16);

  [(_UITraitOverrides *)v14 _replaceWithOverrides:v15];

  v16 = [v9 traitCollection];
  v17 = [v16 userInterfaceIdiom];

  if (v17 == 5)
  {
    v18 = [(UIView *)v9 _traitOverrides];
    v19 = [(_UITraitOverrides *)v18 _swiftImplCopy];

    v20 = swift_initStackObject();
    *(v20 + 16) = v19;
    v24[0] = v20;
    sub_18914E51C(3);
    v21 = [(UIView *)v9 _traitOverrides];
    v22 = *(v24[0] + 16);

    [(_UITraitOverrides *)v21 _replaceWithOverrides:v22];
  }

  v26 = &type metadata for _GlassGroup;
  v27 = &protocol witness table for _GlassGroup;
  LOWORD(v24[0]) = 256;
  v24[1] = 0;
  v25 = 1;
  UIView._background.setter(v24);

  return v9;
}

void sub_188E5AB60(void *a1)
{
  v2 = sub_18A4A5FA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34[-1] - v7;
  v9 = sub_18A4A4BE8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v10 + 16))(v12, v15, v9);
  sub_188E5C34C(v15);
  v16 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v16);
  v17 = *(v3 + 8);
  v17(v5, v2);
  sub_18A4A5F78();
  (*(v10 + 8))(v12, v9);
  v18 = sub_188C449C0(v8, v43);
  (v17)(v8, v2, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  sub_188C3DF9C(v43, v42);
  sub_188C3DF9C(v43, v40);
  v20 = swift_allocObject();
  v21 = v40[3];
  *(v20 + 48) = v40[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = v41[0];
  *(v20 + 89) = *(v41 + 9);
  v22 = v40[1];
  *(v20 + 16) = v40[0];
  *(v20 + 32) = v22;
  *(v20 + 112) = signpost_c2_entryLock_start;
  *(v20 + 120) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = swift_allocObject();
  v24[3] = 0;
  v24[4] = 0;
  v24[2] = v23;
  v33 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_188E5C524;
  *(v25 + 24) = v19;
  *&v37 = sub_188E3FE50;
  *(&v37 + 1) = v25;
  *&v35 = MEMORY[0x1E69E9820];
  *(&v35 + 1) = 1107296256;
  *&v36 = sub_188A4A968;
  *(&v36 + 1) = &block_descriptor_414;
  v26 = _Block_copy(&v35);
  v27 = a1;

  sub_188C3DFF8(v42, &v35);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 56) = v37;
  *(v28 + 72) = v29;
  *(v28 + 88) = v39[0];
  *(v28 + 97) = *(v39 + 9);
  v30 = v36;
  *(v28 + 24) = v35;
  *(v28 + 16) = v23;
  *(v28 + 40) = v30;
  *(v28 + 113) = 0;
  *(v28 + 120) = sub_188E5C7FC;
  *(v28 + 128) = v20;
  v34[4] = sub_188E5C800;
  v34[5] = v28;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = sub_188A4A8F0;
  v34[3] = &block_descriptor_421;
  v31 = _Block_copy(v34);

  *&v37 = sub_188E5C82C;
  *(&v37 + 1) = v24;
  *&v35 = MEMORY[0x1E69E9820];
  *(&v35 + 1) = 1107296256;
  *&v36 = sub_188ABD010;
  *(&v36 + 1) = &block_descriptor_424;
  v32 = _Block_copy(&v35);

  [v33 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v32);
  _Block_release(v31);
  _Block_release(v26);

  sub_188C3E234(v42);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  else
  {
    sub_188AAFF20(v43);
  }
}

void sub_188E5B1D4(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

void sub_188E5B1EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v23 = a4;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    sub_188C46270(*(a3 + 56) + 40 * v14, v22);
    v16 = v15;
    v17 = v23();
    sub_188C4D06C(v22);

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_18914CAF4(a1, a2, v21, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_188E5B358(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_188E5A740(v9, v6, v4, a2);
      MEMORY[0x18CFEA5B0](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_188E5B1EC(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_188E5B4D8(char a1, void *a2)
{
  v36 = a2;
  v3 = sub_18A4A5FA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = sub_18A4A4BE8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v11 + 16))(v13, v16, v10);
  sub_188E5C34C(v16);
  v17 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v17);
  v18 = *(v4 + 8);
  v18(v6, v3);
  sub_18A4A5F78();
  (*(v11 + 8))(v13, v10);
  v19 = sub_188C449C0(v9, v47);
  (v18)(v9, v3, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = v36;
  *(v20 + 24) = v36;
  sub_188C3DF9C(v47, v46);
  sub_188C3DF9C(v47, v44);
  v22 = swift_allocObject();
  v23 = v44[3];
  *(v22 + 48) = v44[2];
  *(v22 + 64) = v23;
  *(v22 + 80) = v45[0];
  *(v22 + 89) = *(v45 + 9);
  v24 = v44[1];
  *(v22 + 16) = v44[0];
  *(v22 + 32) = v24;
  *(v22 + 112) = signpost_c2_entryLock_start;
  *(v22 + 120) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = swift_allocObject();
  v26[3] = 0;
  v26[4] = 0;
  v26[2] = v25;
  v37 = objc_opt_self();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_188E5C410;
  *(v27 + 24) = v20;
  *&v41 = sub_188E3FE50;
  *(&v41 + 1) = v27;
  *&v39 = MEMORY[0x1E69E9820];
  *(&v39 + 1) = 1107296256;
  *&v40 = sub_188A4A968;
  *(&v40 + 1) = &block_descriptor_266;
  v28 = _Block_copy(&v39);
  v29 = v21;

  sub_188C3DFF8(v46, &v39);
  v30 = swift_allocObject();
  v31 = v42;
  *(v30 + 56) = v41;
  *(v30 + 72) = v31;
  *(v30 + 88) = v43[0];
  *(v30 + 97) = *(v43 + 9);
  v32 = v40;
  *(v30 + 24) = v39;
  *(v30 + 16) = v25;
  *(v30 + 40) = v32;
  *(v30 + 113) = 0;
  *(v30 + 120) = sub_188E5C7FC;
  *(v30 + 128) = v22;
  v38[4] = sub_188E5C800;
  v38[5] = v30;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 1107296256;
  v38[2] = sub_188A4A8F0;
  v38[3] = &block_descriptor_273;
  v33 = _Block_copy(v38);

  *&v41 = sub_188E5C82C;
  *(&v41 + 1) = v26;
  *&v39 = MEMORY[0x1E69E9820];
  *(&v39 + 1) = 1107296256;
  *&v40 = sub_188ABD010;
  *(&v40 + 1) = &block_descriptor_276;
  v34 = _Block_copy(&v39);

  [v37 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v34);
  _Block_release(v33);
  _Block_release(v28);

  sub_188C3E234(v46);

  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
  }

  else
  {
    sub_188AAFF20(v47);
  }
}

void sub_188E5BAC0(void *a1, void *a2, uint64_t a3)
{
  v40 = a3;
  v41 = a2;
  v39 = a1;
  v4 = sub_18A4A5FA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = sub_18A4A4BE8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188E5A020();
  (*(v12 + 16))(v14, v17, v11);
  sub_188E5C34C(v17);
  v18 = sub_18A4A4B98();
  MEMORY[0x18CFE0ED0](v18);
  v19 = *(v5 + 8);
  v19(v7, v4);
  sub_18A4A5F78();
  (*(v12 + 8))(v14, v11);
  v20 = sub_188C449C0(v10, v52);
  (v19)(v10, v4, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  v22 = v21;
  v42 = v21;
  v23 = swift_allocObject();
  v24 = v40;
  *(v23 + 16) = v41;
  *(v23 + 24) = v24;
  sub_188C3DF9C(v52, v51);
  sub_188C3DF9C(v52, v49);
  v25 = swift_allocObject();
  v26 = v49[3];
  *(v25 + 48) = v49[2];
  *(v25 + 64) = v26;
  *(v25 + 80) = v50[0];
  *(v25 + 89) = *(v50 + 9);
  v27 = v49[1];
  *(v25 + 16) = v49[0];
  *(v25 + 32) = v27;
  *(v25 + 112) = signpost_c2_entryLock_start;
  *(v25 + 120) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = sub_188E5C7F8;
  v29[4] = v23;
  v41 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_188E5C7F0;
  *(v30 + 24) = v22;
  *&v46 = sub_188E3FE50;
  *(&v46 + 1) = v30;
  *&v44 = MEMORY[0x1E69E9820];
  *(&v44 + 1) = 1107296256;
  *&v45 = sub_188A4A968;
  *(&v45 + 1) = &block_descriptor_299;
  v31 = _Block_copy(&v44);
  v32 = v39;

  sub_188C3DFF8(v51, &v44);
  v33 = swift_allocObject();
  v34 = v47;
  *(v33 + 56) = v46;
  *(v33 + 72) = v34;
  *(v33 + 88) = v48[0];
  *(v33 + 97) = *(v48 + 9);
  v35 = v45;
  *(v33 + 24) = v44;
  *(v33 + 16) = v28;
  *(v33 + 40) = v35;
  *(v33 + 113) = 0;
  *(v33 + 120) = sub_188E5C7FC;
  *(v33 + 128) = v25;
  v43[4] = sub_188E5C800;
  v43[5] = v33;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 1107296256;
  v43[2] = sub_188A4A8F0;
  v43[3] = &block_descriptor_306;
  v36 = _Block_copy(v43);

  *&v46 = sub_188E5C82C;
  *(&v46 + 1) = v29;
  *&v44 = MEMORY[0x1E69E9820];
  *(&v44 + 1) = 1107296256;
  *&v45 = sub_188ABD010;
  *(&v45 + 1) = &block_descriptor_309;
  v37 = _Block_copy(&v44);

  [v41 _setupAnimationWithDuration_delay_view_options_factory_animations_start_animationStateGenerator_completion_];
  _Block_release(v37);
  _Block_release(v36);
  _Block_release(v31);

  sub_188C3E234(v51);

  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    sub_188AAFF20(v52);
  }
}

uint64_t sub_188E5C158(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_188C482B4;

  return sub_188E596C8(v7, a1, v4, v5, v6, v8, v9, v10);
}

uint64_t type metadata accessor for NavigationBarPlatterContainer.Settings(uint64_t a1)
{
  result = qword_1ED48C620;
  if (!qword_1ED48C620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188E5C34C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationBarPlatterContainer.Settings(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_190Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

void sub_188E5C410()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v2 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase);
  *(v2 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = v3;
  sub_189186104(v4);
}

uint64_t objectdestroy_33Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_188E5C4B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase);
  *(v1 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = 0;
  sub_189186104(v2);
}

void sub_188E5C4E8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase);
  *(v1 + OBJC_IVAR____UINavigationBarPlatterView_transitionPhase) = 2;
  sub_189186104(v2);
}

uint64_t sub_188E5C52C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_188E5C574(__n128 a1)
{
  if ((*(v1 + 16) & 1) == 0)
  {
    sub_188E57F98(*(v1 + 24), v1 + 32, *(v1 + 17), a1);
  }
}

uint64_t objectdestroy_108Tm()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
  }

  if (*(v0 + 136))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
  }

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t objectdestroy_65Tm()
{

  v1 = *(v0 + 112);
  if (v1 == 2)
  {
  }

  else if (v1 == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 64));
  }

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_188E5C6C4(uint64_t a1)
{
  result = sub_18A4A4BE8();
  if (v2 <= 0x3F)
  {
    result = sub_18A4A4A88();
    if (v3 <= 0x3F)
    {
      result = sub_18A4A4B78();
      if (v4 <= 0x3F)
      {
        result = sub_18A4A4C78();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

id sub_188E5C8A8(uint64_t a1, uint64_t a2)
{
  v3 = 0uLL;
  memset(&v16[6], 0, 72);
  v4 = &v2[OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data];
  v5 = MEMORY[0x1E69E7CC8];
  *v4 = MEMORY[0x1E69E7CC8];
  *(v4 + 8) = UIEdgeInsetsZero;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 5) = 0;
  *(v4 + 6) = 0;
  *(v4 + 7) = v6;
  *(v4 + 8) = 0;
  *(v4 + 36) = 1;
  v7 = *&v16[16];
  *(v4 + 74) = *v16;
  v8 = *&v16[32];
  v9 = *&v16[48];
  *(v4 + 136) = *&v16[62];
  *(v4 + 122) = v9;
  *(v4 + 106) = v8;
  *(v4 + 90) = v7;
  *(v4 + 19) = 0;
  *(v4 + 20) = v6;
  *(v4 + 21) = 0;
  *(v4 + 22) = 0;
  v10 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  if (qword_1EA930918 != -1)
  {
    swift_once();
    v3 = 0uLL;
  }

  v11 = &v2[v10];
  v12 = qword_1EA994EC8;
  *v11 = v5;
  *(v11 + 1) = 1;
  *(v11 + 1) = v3;
  *(v11 + 2) = v3;
  *(v11 + 6) = 0;
  *(v11 + 7) = v12;
  *(v11 + 8) = v12;
  *(v11 + 9) = 1;
  *(v11 + 10) = v6;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v15.receiver = v2;
  v15.super_class = _UISplitViewControllerAdaptivePanelLayout;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [v13 prepareLayout];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v13;
}

double sub_188E5CC18(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 216 * v5 + 8);
  }

  else
  {
    v7 = MEMORY[0x1E695F050];
  }

  v8 = *v7;
  swift_endAccess();
  return v8;
}

double sub_188E5CE10(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 216 * v5 + 40);
  }

  else
  {
    v7 = &UIEdgeInsetsZero;
  }

  top = v7->top;
  swift_endAccess();
  return top;
}

double sub_188E5CEE8(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 216 * v5 + 136);
  }

  else
  {
    v7 = &UIEdgeInsetsZero;
  }

  top = v7->top;
  swift_endAccess();
  return top;
}

uint64_t sub_188E5CFC0(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 216 * v5);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

BOOL sub_188E5D188(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  if (*(v3 + 73) != 1)
  {
    return 0;
  }

  swift_beginAccess();
  v4 = *v3;
  if (!*(v4 + 16))
  {
    goto LABEL_9;
  }

  v5 = sub_188B85570(a1);
  if ((v6 & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(*(v4 + 56) + 160 * v5 + 112);
  swift_endAccess();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16) || (v10 = sub_188B85570(a1), (v11 & 1) == 0))
  {
LABEL_9:
    swift_endAccess();
    return 0;
  }

  v12 = *(*(v9 + 56) + 216 * v10 + 208);
  swift_endAccess();
  return v12 == 2;
}

double sub_188E5D2CC(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 216 * v5 + 176);
  }

  else
  {
    v7 = MEMORY[0x1E695F050];
  }

  v8 = *v7;
  swift_endAccess();
  return v8;
}

uint64_t sub_188E5D3F4(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 216 * v5 + 208);
    swift_endAccess();
    if (_UISplitViewControllerAdaptiveColumnVisibilityIsVisible(v7))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_188E5D4D0(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 216 * v5 + 208);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

void sub_188E5D610(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = v2;
    v6 = v2 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
    swift_beginAccess();
    v7 = *v6;
    if (*(*v6 + 16) && (v8 = sub_188B85570(a1), (v9 & 1) != 0) && (v10 = *(v7 + 56) + 160 * v8, v12 = *(v10 + 128), v11 = *(v10 + 136), swift_endAccess(), swift_beginAccess(), v13 = *v6, *(*v6 + 16)) && (v14 = sub_188B85570(a2), (v15 & 1) != 0))
    {
      v16 = *(*(v13 + 56) + 160 * v14 + 128);
      swift_endAccess();
      if (v12 < v16)
      {
        v17 = *(v6 + 80);
        v18 = *(v6 + 88);
        v47 = *(v6 + 96);
        if (v11 == *(v6 + 152))
        {
          v17 = a1;
        }

        else
        {
          v18 = a1;
        }

        v46[0] = v17;
        v46[1] = v18;
        v48 = v11;
        v49 = 1;
        *v50 = *(v6 + 121);
        *&v50[15] = *(v6 + 136);
        v19 = *(v6 + 16);
        v21 = *(v6 + 32);
        v20 = *(v6 + 40);
        v22 = swift_allocObject();
        *(v22 + 16) = MEMORY[0x1E69E7CC0];
        v23 = *(v6 + 160);
        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = v20 - v19 - v21;

          while (1)
          {
            v32 = *(v23 + 16);
            if (v24 > v32)
            {
              break;
            }

            sub_188E61A88(*(v23 + 8 * v24-- + 24), 0, v3, v22, v46, 1, v25);
            if (!v24)
            {

              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_35:
          if (*(*(v26 + 56) + (v28 << 8) + 248) == 1)
          {
            while (v31)
            {
              v42 = v29;
LABEL_42:
              v43 = __clz(__rbit64(v31));
              v31 &= v31 - 1;
              v44 = *(v27 + 8 * (v43 | (v42 << 6)));
              if (v44 == a1 || v44 == a2)
              {
                goto LABEL_47;
              }
            }

            while (1)
            {
              v42 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                goto LABEL_49;
              }

              if (v42 >= v30)
              {
                break;
              }

              v31 = *(v32 + 8 * v42);
              ++v29;
              if (v31)
              {
                v29 = v42;
                goto LABEL_42;
              }
            }
          }
        }

        else
        {
LABEL_15:
          swift_beginAccess();
          v33 = *(v22 + 16);

          v34 = *(v33 + 16);
          if (v34)
          {
            v35 = 0;
LABEL_20:
            if (v35 >= *(v33 + 16))
            {
              goto LABEL_50;
            }

            v29 = 0;
            v26 = *(v33 + 32 + 56 * v35++);
            v32 = v26 + 64;
            v36 = 1 << *(v26 + 32);
            if (v36 < 64)
            {
              v37 = ~(-1 << v36);
            }

            else
            {
              v37 = -1;
            }

            v31 = v37 & *(v26 + 64);
            v30 = (v36 + 63) >> 6;
            while (v31)
            {
LABEL_25:
              v38 = __clz(__rbit64(v31));
              v31 &= v31 - 1;
              v28 = v38 | (v29 << 6);
              v27 = *(v26 + 48);
              v39 = *(v27 + 8 * v28);
              if (v39 == a1 || v39 == a2)
              {
                goto LABEL_35;
              }
            }

            while (1)
            {
              v41 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                break;
              }

              if (v41 >= v30)
              {
                if (v35 == v34)
                {
                  goto LABEL_47;
                }

                goto LABEL_20;
              }

              v31 = *(v32 + 8 * v41);
              ++v29;
              if (v31)
              {
                v29 = v41;
                goto LABEL_25;
              }
            }

LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            return;
          }
        }

LABEL_47:
      }
    }

    else
    {
      swift_endAccess();
    }
  }
}

uint64_t sub_188E5DC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v5 = 64;
  if (*(v4 + 48) == a3)
  {
    v5 = 56;
  }

  return *(v4 + v5);
}

void sub_188E5DCE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v59 = *(a1 + 8);
  v60 = *a1;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = (v3 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution);
  swift_beginAccess();
  v13 = *v12;
  if (!*(*v12 + 16) || (v14 = sub_188B85570(a2), (v15 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_10;
  }

  v57 = v10;
  v58 = v11;
  v16 = (*(v13 + 56) + 216 * v14);
  v56 = v16[10];
  v52 = v16[15];
  v17 = v16[26];
  swift_endAccess();
  v55 = v12[6];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = [Strong hasAppeared];
    swift_unknownObjectRelease();
    if ((v19 & 1) == 0)
    {
      v8 = v56;
      v21 = v59;
      v20 = v60;
      if (v56 == v55)
      {
        v20 = a2;
      }

      else
      {
        v21 = a2;
      }

      v10 = v57;
      v11 = v58;
      if (v56 == v55)
      {
        v10 = 2;
      }

      else
      {
        v11 = 2;
      }

      v9 = 1;
      goto LABEL_11;
    }
  }

  if (v17 == 2)
  {
LABEL_8:
    v10 = v57;
    v11 = v58;
LABEL_10:
    v21 = v59;
    v20 = v60;
    goto LABEL_11;
  }

  if (v17 == 1)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v23 = v4 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
  swift_beginAccess();
  v24 = *(v23 + 160);
  v11 = v58;
  if (*(v24 + 16))
  {
    v51 = *(v24 + 32) == a2;
  }

  else
  {
    v51 = 0;
  }

  v25 = v52;
  v26 = *v12 + 64;
  v27 = 1 << *(*v12 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(*v12 + 64);
  v30 = (v27 + 63) >> 6;

  v32 = 0;
  v33 = &unk_1EA930000;
  v34 = &unk_1EA930000;
  v35 = v56;
  v36 = v51;
LABEL_25:
  v37 = a2;
  while (v29)
  {
LABEL_31:
    v39 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v40 = v39 | (v32 << 6);
    v41 = (*(v31 + 56) + 216 * v40);
    if (v41[10] == v35)
    {
      v42 = 1;
    }

    else
    {
      v42 = v36;
    }

    if (v42)
    {
      v43 = v41[26];
      v44 = v41[15];
      if (v43 && v44 == v25)
      {
        a2 = *(*(v31 + 48) + 8 * v40);
        if (a2)
        {
          if (a2 == 1)
          {
            v46 = 2;
          }

          else
          {
            if (v33[292] != -1)
            {
              v49 = v37;
              v53 = v31;
              v47 = v33;
              swift_once();
              v37 = v49;
              v34 = &unk_1EA930000;
              v33 = v47;
              v31 = v53;
              v36 = v51;
              v35 = v56;
            }

            if (v34[293] == a2)
            {
              v46 = 3;
            }

            else
            {
              v46 = 4 * (a2 == 2);
            }
          }
        }

        else
        {
          v46 = 1;
        }

        if (v37)
        {
          if (v37 == 1)
          {
            if (v46 <= 2)
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v33[292] != -1)
            {
              v50 = v37;
              v54 = v31;
              swift_once();
              v37 = v50;
              v34 = &unk_1EA930000;
              v33 = &unk_1EA930000;
              v31 = v54;
              v36 = v51;
              v35 = v56;
            }

            if (v34[293] == v37)
            {
              if (v46 <= 3)
              {
                goto LABEL_25;
              }
            }

            else if (v37 == 2 || !v46)
            {
              goto LABEL_25;
            }
          }
        }

        else if (v46 <= 1)
        {
          goto LABEL_25;
        }
      }
    }
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return;
    }

    if (v38 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v38);
    ++v32;
    if (v29)
    {
      v32 = v38;
      goto LABEL_31;
    }
  }

  v8 = v35;
  v48 = v37;

  v21 = v59;
  v20 = v60;
  if (v8 == v55)
  {
    v20 = v48;
  }

  else
  {
    v21 = v48;
  }

  v10 = v57;
  if (v8 == v55)
  {
    v10 = 1;
  }

  else
  {
    v11 = 1;
  }

  v9 = 1;
LABEL_11:
  v22 = *(a1 + 16);
  *&v61 = *(a1 + 41);
  *(&v61 + 7) = *(a1 + 48);
  *a3 = v20;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = *(&v61 + 7);
  *(a3 + 56) = v10;
  *(a3 + 41) = v61;
  *(a3 + 64) = v11;
}

__n128 sub_188E5E100@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = &v3[OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution];
  swift_beginAccess();
  v13 = *v12;
  if (!*(*v12 + 16) || (v14 = sub_188B85570(a2), (v15 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_12;
  }

  v16 = *(v13 + 56) + 216 * v14;
  v24 = *(v16 + 208);
  v25 = *(v16 + 80);
  swift_endAccess();
  v17 = &v4[OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data];
  swift_beginAccess();
  v18 = *(v17 + 20);
  if (!*(v18 + 16) || *(v18 + 32) != a2)
  {
    v19 = *(v12 + 6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_8;
    }

    if ([Strong hasAppeared])
    {
      swift_unknownObjectRelease();
LABEL_8:
      if (v24)
      {
        if (v25 == v19)
        {
          v8 = [v4 splitViewControllerColumnDisplayedAfterSplitViewControllerColumn_];
          v10 = 1;
        }

        else
        {
          v9 = [v4 splitViewControllerColumnDisplayedBeforeSplitViewControllerColumn_];
          v11 = 1;
        }
      }

      goto LABEL_12;
    }

    if (v25 == v19)
    {
      v8 = [v4 splitViewControllerColumnDisplayedAfterSplitViewControllerColumn_];
      v10 = 1;
    }

    else
    {
      v9 = [v4 splitViewControllerColumnDisplayedBeforeSplitViewControllerColumn_];
      v11 = 1;
    }

    swift_unknownObjectRelease();
  }

LABEL_12:
  v21 = *(a1 + 48);
  v23 = *(a1 + 16);
  result = *(a1 + 32);
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v23;
  *(a3 + 32) = result;
  *(a3 + 48) = v21;
  *(a3 + 56) = v10;
  *(a3 + 64) = v11;
  return result;
}

double sub_188E5E300@<D0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(_OWORD *__return_ptr, _OWORD *, uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 64);
  v11 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v11;
  v24 = v8;
  v25 = v9;
  v26 = *(a2 + 48);
  v27 = v10;
  v12 = a1;
  a4(v18, v23, a3);
  v13 = v19;
  LOBYTE(a3) = v20;
  v14 = v22;

  result = *v18;
  v16 = v18[1];
  v17 = v21;
  *a5 = v18[0];
  *(a5 + 16) = v16;
  *(a5 + 32) = v13;
  *(a5 + 40) = a3 & 1;
  *(a5 + 48) = v17;
  *(a5 + 64) = v14;
  return result;
}

void sub_188E5E3B8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v4 = *v3;
  if (*(*v3 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 160 * v5 + 32);
    swift_endAccess();
    if (v7 > 0)
    {
      if (v7 > *(v3[7] + 16))
      {
        __break(1u);
      }

      return;
    }
  }

  else
  {
    swift_endAccess();
  }

  if (qword_1EA930918 != -1)
  {
    swift_once();
  }
}

void sub_188E5E4E0(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v4 = *v3;
  if (*(*v3 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 160 * v5 + 32);
    swift_endAccess();
    v8 = *(v3[7] + 16);
    if (v7 < (v8 - 1))
    {
      if (v7 + 1 >= v8)
      {
        __break(1u);
      }

      return;
    }
  }

  else
  {
    swift_endAccess();
  }

  if (qword_1EA930918 != -1)
  {
    swift_once();
  }
}

uint64_t sub_188E5E610(uint64_t a1)
{
  v3 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16) && (v5 = sub_188B85570(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 216 * v5 + 80);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

uint64_t sub_188E5E6C0()
{
  v4 = v0;
  [v0 validateData];
  v5 = &v0[OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data];
  swift_beginAccess();
  v6 = *(v5 + 8);
  v85[2] = *(v5 + 7);
  v85[3] = v6;
  v86 = *(v5 + 18);
  v7 = *(v5 + 6);
  v85[0] = *(v5 + 5);
  v85[1] = v7;
  v8 = *(v5 + 2);
  v10 = *(v5 + 4);
  v9 = *(v5 + 5);
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v51 = v5;
  v12 = *(v5 + 20);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v9 - v8 - v10;

    do
    {
      if (v13 > *(v12 + 16))
      {
        __break(1u);
LABEL_28:
        v22 = v52;
        goto LABEL_30;
      }

      sub_188E61A88(*(v12 + 8 * v13-- + 24), 0, v4, v11, v85, 1, v14);
    }

    while (v13);
  }

  swift_beginAccess();
  v2 = *(v11 + 16);

  sub_188E5ECC4();
  v14 = v15;
  v9 = v16;
  v10 = v17;
  v3 = v18;
  if (qword_1EA930918 != -1)
  {
LABEL_41:
    swift_once();
  }

  v19 = qword_1EA994EC8;
  v20 = *(v2 + 16);

  v50 = v19;
  if (!v20)
  {
    v22 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    v56 = 1;
    v54 = v19;
    goto LABEL_30;
  }

  v21 = 0;
  v22 = 0;
  v23 = v2 + 80;
  v1 = MEMORY[0x1E69E7CC0];
  v55 = v2;
  v56 = 1;
  v54 = v19;
  v49 = v2 + 80;
  while (2)
  {
    v52 = v22;
    v24 = (v23 + 56 * v21);
    v22 = v21;
    while (1)
    {
      if (v22 >= v20)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v2 = *(v24 - 5);
      v26 = *(v24 - 2);
      v25 = *(v24 - 1);
      v27 = *v24;
      v29 = *(v24 - 4);
      v28 = *(v24 - 3);
      v84[0] = *(v24 - 6);
      v84[1] = v2;
      v84[2] = v29;
      v84[3] = v28;
      v84[4] = v26;
      v57 = v25;
      v84[5] = v25;
      v84[6] = v27;

      v30 = sub_188E673AC(v84);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_188E4B664(0, v1[2] + 1, 1, v1);
        v1 = result;
      }

      v33 = v1[2];
      v32 = v1[3];
      v34 = v1;
      if (v33 >= v32 >> 1)
      {
        result = sub_188E4B664((v32 > 1), v33 + 1, 1, v1);
        v34 = result;
      }

      *(v34 + 16) = v33 + 1;
      v1 = v34;
      *(v34 + 8 * v33 + 32) = v30;
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

      v35 = v57;
      if ((v57 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_22:
      ++v22;

      v2 = v55;
      v20 = *(v55 + 16);
      v24 += 7;
      if (v22 == v20)
      {
        goto LABEL_28;
      }
    }

    v35 = v57;
    if (v26 >= *(v2 + 16))
    {
      goto LABEL_40;
    }

    v52 = v22;
    v54 = *(v2 + 8 * v26 + 32);
    v36 = v56;
    if (v22)
    {
      v36 = 2;
    }

    v56 = v36;
    if ((v57 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    if (v35 >= *(v29 + 16))
    {
      __break(1u);
    }

    else
    {
      v21 = v22 + 1;
      v50 = *(v29 + 8 * v35 + 32);

      v2 = v55;
      v20 = *(v55 + 16);
      v23 = v49;
      if (v20 - 1 != v22)
      {
        continue;
      }

LABEL_30:

      v53 = sub_188E5F05C(v54, v56);
      v78 = 0;
      v79 = 0;
      v77 = v2;
      sub_1890795C4(&v66);
      v73 = v66;
      v74 = v67;
      v75 = v68;
      v76 = v69;
      v37 = *(&v66 + 1);
      if (*(&v66 + 1))
      {
        v38 = MEMORY[0x1E69E7CC8];
        do
        {
          v81 = v74;
          v82 = v75;
          v80 = v37;
          v83 = v76;
          if (v73 == v22)
          {
            v39 = 2;
          }

          else
          {
            v39 = 1;
          }

          v40 = sub_188E5F0EC(&v80, v39);
          sub_188A3F5FC(&v73, &qword_1EA9347E8, &qword_18A64C6F0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v66 = v38;
          sub_188E679A4(v40, sub_188E67058, 0, isUniquelyReferenced_nonNull_native, &v66);

          v38 = v66;
          sub_1890795C4(&v66);
          v73 = v66;
          v74 = v67;
          v75 = v68;
          v76 = v69;
          v37 = *(&v66 + 1);
        }

        while (*(&v66 + 1));
      }

      else
      {
        v38 = MEMORY[0x1E69E7CC8];
      }

      v42 = *(v51 + 19);

      *&v58 = v38;
      *(&v58 + 1) = v53;
      *&v59 = v14;
      *(&v59 + 1) = v9;
      *&v60 = v10;
      *(&v60 + 1) = v3;
      *&v61 = v42;
      *(&v61 + 1) = v54;
      *&v62 = v50;
      *(&v62 + 1) = v56;
      v63 = v1;
      v43 = v4 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
      swift_beginAccess();
      v44 = *(v43 + 32);
      v45 = *(v43 + 64);
      v64[3] = *(v43 + 48);
      v64[4] = v45;
      v46 = *(v43 + 16);
      v64[0] = *v43;
      v65 = *(v43 + 80);
      v64[1] = v46;
      v64[2] = v44;
      v47 = v61;
      *(v43 + 32) = v60;
      *(v43 + 48) = v47;
      *(v43 + 64) = v62;
      *(v43 + 80) = v63;
      v48 = v59;
      *v43 = v58;
      *(v43 + 16) = v48;
      sub_188E67EE4(&v58, &v66);
      sub_188E67F1C(v64);
      *&v66 = v38;
      *(&v66 + 1) = v53;
      *&v67 = v14;
      *(&v67 + 1) = v9;
      *&v68 = v10;
      *(&v68 + 1) = v3;
      *&v69 = v42;
      *(&v69 + 1) = v54;
      v70 = v50;
      v71 = v56;
      v72 = v1;
      return sub_188E67F1C(&v66);
    }

    return result;
  }
}

void sub_188E5ECC4()
{
  v1 = (v0 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v2 = *v1;
  v3 = 1 << *(*v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & v2[8];
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0.0;
  v9 = 0.0;
  while (v5)
  {
LABEL_9:
    v11 = __clz(__rbit64(v5)) | (v7 << 6);
    v12 = *(v2[6] + 8 * v11);
    v13 = v2[7] + 160 * v11;
    v14 = *(v13 + 88);
    v15 = *(v13 + 136);
    sub_188E62B84(v12, &v24, 1.79769313e308, 1.79769313e308);
    v16 = v1[19];
    v17 = v15 != v16 && v14 == 0;
    if (v17 || (v8 = v8 + v29 + v25 + v26 + v27 + v28 + v31, v18 = v1 + 10, v15 != v16))
    {
      v18 = v1 + 11;
    }

    v19 = *v18;
    if (qword_1EA930918 != -1)
    {
      swift_once();
    }

    v5 &= v5 - 1;
    if (v19 == qword_1EA994EC8)
    {
      v20 = v1[20];
      if (*(v20 + 16))
      {
        v21 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v22 = 2;
          if (v19)
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (qword_1EA930920 != -1)
          {
            swift_once();
          }

          if (qword_1EA930928 == v12)
          {
            v22 = 3;
            if (v19)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v22 = 4 * (v12 == 2);
            if (v19)
            {
LABEL_30:
              if (v19 == 1)
              {
                v23 = 2;
              }

              else
              {
                if (qword_1EA930920 != -1)
                {
                  swift_once();
                }

                v23 = 4 * (v19 == 2);
                if (qword_1EA930928 == v19)
                {
                  v23 = 3;
                }
              }

              goto LABEL_39;
            }
          }
        }
      }

      else
      {
        v22 = 1;
        if (v19)
        {
          goto LABEL_30;
        }
      }

      v23 = 1;
LABEL_39:
      v21 = v22 >= v23;
      v20 = v1[20];
      if (*(v20 + 16))
      {
LABEL_40:
        if (v21 || v12 == *(v20 + 32))
        {
LABEL_44:
          if (v30 > v29)
          {
            goto LABEL_48;
          }

          v9 = v9 + v30 + v29 + v25 + v26 + v27 + v28 + v31 - v29;
        }
      }

      else if (v22 >= v23)
      {
        goto LABEL_44;
      }
    }
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = v2[v10 + 8];
    ++v7;
    if (v5)
    {
      v7 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_48:
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_188E5F05C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    v5 = a2 == 2;
  }

  else
  {
    if (a1)
    {
      return 1;
    }

    v4 = v2 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
    swift_beginAccess();
    if (*(v4 + 176) == 2)
    {
      v5 = a2 == 2;
      v6 = 4;
      goto LABEL_9;
    }

    v5 = a2 == 2;
  }

  v6 = 2;
LABEL_9:
  if (v5)
  {
    return v6 + 1;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_188E5F0EC(uint64_t a1, uint64_t a2)
{
  v462 = 0.0;
  v463 = 0.0;
  v464 = 0.0;
  v465 = 0.0;
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  v8 = *a1;
  v467 = *(a1 + 8);
  v7 = v467;
  *(v4 + 48) = v6;
  v368 = v4;
  *(v4 + 64) = *(a1 + 48);
  v385 = v2;
  v9 = v2 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
  v10 = *(v7 + 16);
  v327 = a1;
  sub_188E67F9C(a1, &v523);
  v390 = v9;
  swift_beginAccess();
  swift_beginAccess();
  v325 = v10;
  v323 = v7;
  if (v10)
  {
    v11 = 0;
    v328 = v7 + 32;
    v331 = -1;
    v394 = -1;
    v407 = 0.0;
    v411 = 0.0;
    v12 = -1;
    v13 = -1;
    while (1)
    {
      v35 = *(v328 + 8 * v11);
      if (!*(*&v8 + 16))
      {
        goto LABEL_319;
      }

      v36 = sub_188B85570(*(v328 + 8 * v11));
      if ((v37 & 1) == 0)
      {
        goto LABEL_319;
      }

      v38 = *(*&v8 + 56) + (v36 << 8);
      v39 = *v38;
      v40 = *(v38 + 16);
      v41 = *(v38 + 24);
      v437 = *(v38 + 40);
      v441 = *(v38 + 32);
      v432 = *(v38 + 48);
      v423 = *(v38 + 8);
      v428 = *(v38 + 56);
      v42 = *(v38 + 64);
      v402 = *(v38 + 72);
      v43 = *(v38 + 80);
      v44 = *(v38 + 88);
      v460[0] = *(v38 + 89);
      *(v460 + 3) = *(v38 + 92);
      v45 = *(v38 + 96);
      v454 = *(v38 + 104);
      v455 = *(v38 + 120);
      v46 = *(v38 + 248);
      v47 = v394;
      if ((v46 & 1) == 0)
      {
        break;
      }

      if (v331 < 0)
      {
        if (v44)
        {
          v331 = v11;
          if (v394 < 0)
          {
LABEL_20:
            v48 = 1;
          }

          else
          {
            v48 = 1;
            v331 = v11;
          }

          goto LABEL_23;
        }

        if ((v394 & 0x8000000000000000) == 0)
        {
          v48 = 0;
LABEL_23:
          v13 = v394;
          v49 = v11;
          if (v12 < 0)
          {
            goto LABEL_26;
          }

LABEL_24:
          v13 = v47;
LABEL_25:
          v49 = v12;
          goto LABEL_26;
        }
      }

      else
      {
        if ((v394 & 0x8000000000000000) == 0)
        {
          v48 = v44;
          goto LABEL_23;
        }

        if (v44)
        {
          goto LABEL_20;
        }
      }

      v48 = 0;
      v47 = v11;
      v13 = v11;
      v49 = v11;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_26:
      v397 = *(v38 + 128);
      v342 = *(v38 + 144);
      v346 = *(v38 + 136);
      v336 = *(v38 + 160);
      v339 = *(v38 + 152);
      v355 = *(v38 + 176);
      v357 = *(v38 + 168);
      v349 = *(v38 + 192);
      v352 = *(v38 + 184);
      v369 = *(v38 + 224);
      v372 = *(v38 + 216);
      v362 = *(v38 + 240);
      v365 = *(v38 + 232);
      v445 = v41;
      v448 = v40;
      v391 = v49;
      v394 = v47;
      v382 = v43;
      v379 = v45;
      v375 = *(v38 + 208);
      v359 = *(v38 + 200);
      v329 = v48;
      if (*(v390 + 72))
      {
        if (v11 == v331)
        {
          v50 = 1;
          if (v11 != v49)
          {
            v53 = 5;
            v51 = 7;
            goto LABEL_43;
          }

          v51 = 7;
          v52 = 7;
          goto LABEL_42;
        }

        v50 = 0;
        if (v11 == v47)
        {
          v51 = 7;
        }

        else
        {
          v51 = 5;
        }

        v13 = v47;
        v52 = 7;
      }

      else
      {
        if (v11 == v331)
        {
          v50 = 1;
          if (v11 != v49)
          {
            v53 = 5;
            v51 = 13;
            goto LABEL_43;
          }

          v51 = 13;
          v52 = 13;
LABEL_42:
          v53 = v52;
          goto LABEL_43;
        }

        v50 = 0;
        if (v11 == v47)
        {
          v51 = 13;
        }

        else
        {
          v51 = 5;
        }

        v13 = v47;
        v52 = 13;
      }

      v53 = 5;
      if (v11 == v49)
      {
        goto LABEL_42;
      }

LABEL_43:
      v333 = v53;
      v54 = UIEdgeInsetsReplace(v51, 0.0, 0.0, 0.0, 0.0, *(v390 + 8));
      v56 = v55;
      v58 = v57;
      v60 = v59;
      swift_getKeyPath();
      v62 = v445;
      v61 = v448;
      v386 = v39;
      if (v39 == 0.0 && v423 == 0.0 && v448 == 0.0 && v445 == 0.0)
      {
        v63 = UIEdgeInsetsAdd(v51, v441, v437, v432, v428, v54);
        v67 = v39;
        v68 = v423;
        v416 = v448;
        v419 = 0.0;
        v69 = v411;
      }

      else
      {
        v70 = v44;
        v71 = v42;
        v72 = v51 & v402;
        if (v46)
        {
          v73 = UIEdgeInsetsMin(15, v39, v423, v448, v445, v54);
          UIEdgeInsetsReplace(v72, 0.0, 0.0, 0.0, 0.0, v73);
          v62 = v445;
          v61 = v448;
          v407 = v407 + v74 + v75;
        }

        v76 = UIEdgeInsetsMax(v72, v39, v423, v61, v62, v54);
        v80 = UIEdgeInsetsSubtract(v72 & v71, v76, v77, v78, v79, v39);
        v81 = v72 & v71;
        v42 = v71;
        v85 = UIEdgeInsetsMax(v81, v80, v82, v83, v84, v39);
        v89 = UIEdgeInsetsAdd(15, v85, v86, v87, v88, v441);
        v68 = v90;
        v91 = v56;
        v67 = v89;
        v416 = v92;
        v419 = v93;
        v94 = UIEdgeInsetsSubtract(v51, v54, v91, v58, v60, v89);
        v63 = UIEdgeInsetsMax(v51, v94, v95, v96, v97, 0.0);
        v69 = v411;
        v44 = v70;
      }

      *&v492 = v63;
      *(&v492 + 1) = v64;
      v493 = v65;
      v494 = v66;
      if ((v46 & 1) == 0)
      {
        goto LABEL_62;
      }

      if (v329)
      {
        v69 = v69 + v397 + v66 + v379 + v68 + v419 + v64;
LABEL_62:
        if (v50 && (v67 != 0.0 || v68 != 0.0 || v416 != 0.0 || v419 != 0.0))
        {
          v412 = v69;
LABEL_75:
          v98 = v382;
          v99 = v375;
LABEL_76:
          v102 = UIEdgeInsetsAdd(v51, v462, v463, v464, v465, v67);
          v104 = v103;
          v106 = v105;
          v108 = v107;
          swift_beginAccess();
          v462 = v102;
          v463 = v104;
          v464 = v106;
          v465 = v108;
          v109 = swift_modifyAtWritableKeyPath();
          *v110 = *v110 + 50.0;
          v109(&v468, 0);
          swift_endAccess();
          v100 = 0.0;
          v69 = v412;
          v101 = v359;
          goto LABEL_4;
        }

        v100 = 0.0;
LABEL_68:
        v98 = v382;
        v99 = v375;
        v101 = v359;
        if (v11 == v13)
        {
LABEL_69:
          v100 = v462;
          if (v462 == 0.0 && v463 == 0.0 && v464 == 0.0 && v465 == 0.0)
          {
            v100 = 0.0;
          }

          else
          {
            v462 = 0.0;
            v463 = 0.0;
            v464 = 0.0;
            v465 = 0.0;
          }

          goto LABEL_4;
        }

        goto LABEL_4;
      }

      if (v69 <= 0.0)
      {
        goto LABEL_62;
      }

      v468 = v441;
      v469 = *&v437;
      v470 = v432;
      v471 = v428;

      swift_getAtKeyPath();

      v468 = v69 + v461;
      swift_setAtWritableKeyPath();
      if (!v50)
      {
        v100 = 0.0;
        v69 = 0.0;
        goto LABEL_68;
      }

      if (v67 != 0.0 || v68 != 0.0)
      {
        v412 = 0.0;
        goto LABEL_75;
      }

      v412 = 0.0;
      v98 = v382;
      v99 = v375;
      if (v416 != 0.0 || v419 != 0.0)
      {
        goto LABEL_76;
      }

      v100 = 0.0;
      v69 = 0.0;
      v101 = v359;
      if (v11 == v13)
      {
        goto LABEL_69;
      }

LABEL_4:
      v14 = v407;
      v15 = v407 >= 0.0;
      v16 = --v10 == 0;
      v17 = v379 + v407;
      if (!v15 || !v16)
      {
        v17 = v379;
      }

      v378 = v17;
      if (v15 && v16)
      {
        v14 = 0.0;
      }

      v407 = v14;
      v411 = v69;
      v18 = v100;
      v19 = UIEdgeInsetsMax(15, v346, v342, v339, v336, *&v492);
      v341 = v20;
      v345 = v19;
      v335 = v22;
      v338 = v21;
      v23 = UIEdgeInsetsMax(15, v357, v355, v352, v349, v67);
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = UIEdgeInsetsMax(15, v372, v369, v365, v362, v18);
      *&v523 = v386;
      *(&v523 + 1) = v423;
      v524 = v448;
      v525 = v445;
      v526 = v441;
      v527 = v437;
      v528 = v432;
      v529 = v428;
      v530 = v42;
      v531 = v402;
      v532 = v98;
      v533 = v44;
      *v534 = v460[0];
      *&v534[3] = *(v460 + 3);
      v537 = v455;
      v536 = v454;
      v535 = v378;
      v538 = v397;
      v539 = v345;
      v540 = v341;
      v541 = v338;
      v542 = v335;
      v543 = v23;
      v544 = v25;
      v545 = v27;
      v546 = v29;
      v547 = v333 | v101;
      v548 = v99;
      v549 = v30;
      v550 = v31;
      v551 = v32;
      v552 = v33;
      v553 = v46;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v461 = *(v368 + 16);
      sub_188E9E278(&v523, v35, isUniquelyReferenced_nonNull_native);
      v8 = v461;
      *(v368 + 16) = v461;
      swift_endAccess();

      ++v11;
      v12 = v391;
      if (!v10)
      {
        goto LABEL_83;
      }
    }

    v48 = v44;
    goto LABEL_25;
  }

LABEL_83:
  v466 = *(v327 + 16);
  swift_beginAccess();
  v462 = 0.0;
  v463 = 0.0;
  v464 = 0.0;
  v465 = 0.0;
  v111 = *(v466 + 16);

  swift_beginAccess();
  v326 = v466;
  v322 = v111;
  if (v111)
  {
    v112 = 0;
    v330 = v466 + 32;
    v334 = -1;
    v337 = -1;
    v420 = 0.0;
    v424 = 0.0;
    v113 = -1;
    while (1)
    {
      v35 = *(v330 + 8 * v112);
      if (!*(*&v8 + 16) || (v135 = sub_188B85570(*(v330 + 8 * v112)), (v136 & 1) == 0))
      {
        v468 = 0.0;
        v469 = 0xE000000000000000;
        sub_18A4A80E8();
        MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
        *&v454 = v35;
        type metadata accessor for Column(0);
        sub_18A4A82D8();
        MEMORY[0x18CFE22D0](41, 0xE100000000000000);
        goto LABEL_317;
      }

      v137 = *(*&v8 + 56) + (v135 << 8);
      v139 = *v137;
      v138 = *(v137 + 8);
      v141 = *(v137 + 16);
      v140 = *(v137 + 24);
      v446 = *(v137 + 40);
      v449 = *(v137 + 32);
      v438 = *(v137 + 56);
      v442 = *(v137 + 48);
      v142 = *(v137 + 64);
      v143 = *(v137 + 72);
      v144 = *(v137 + 80);
      v145 = *(v137 + 88);
      *v452 = *(v137 + 89);
      *&v452[3] = *(v137 + 92);
      v146 = *(v137 + 96);
      v458 = *(v137 + 104);
      v459 = *(v137 + 120);
      v147 = *(v137 + 248);
      if (v147)
      {
        break;
      }

      v148 = v145;
LABEL_107:
      v149 = v113;
LABEL_108:
      v413 = *(v137 + 128);
      v408 = v149;
      v392 = v144;
      v388 = v146;
      v383 = *(v137 + 208);
      v376 = *(v137 + 224);
      v380 = *(v137 + 216);
      v370 = *(v137 + 240);
      v373 = *(v137 + 232);
      v366 = *(v137 + 200);
      v360 = *(v137 + 176);
      v363 = *(v137 + 168);
      v356 = *(v137 + 192);
      v358 = *(v137 + 184);
      v351 = *(v137 + 144);
      v354 = *(v137 + 136);
      v344 = *(v137 + 160);
      v348 = *(v137 + 152);
      v332 = v148;
      if (*(v390 + 72))
      {
        if (v112 == v334)
        {
          v150 = 1;
          if (v112 != v149)
          {
            v153 = 5;
            v151 = 13;
            goto LABEL_127;
          }

          v151 = 13;
          v152 = 13;
LABEL_124:
          v153 = v152;
          goto LABEL_127;
        }

        v150 = 0;
        if (v112 == v337)
        {
          v151 = 13;
        }

        else
        {
          v151 = 5;
        }

        v153 = 5;
        v152 = 13;
        if (v112 == v149)
        {
          goto LABEL_124;
        }
      }

      else if (v112 == v334)
      {
        v150 = 1;
        if (v112 == v149)
        {
          v151 = 7;
          v153 = 7;
        }

        else
        {
          v153 = 5;
          v151 = 7;
        }
      }

      else
      {
        v150 = 0;
        if (v112 == v337)
        {
          v151 = 7;
        }

        else
        {
          v151 = 5;
        }

        v153 = 5;
        v152 = 7;
        if (v112 == v149)
        {
          goto LABEL_124;
        }
      }

LABEL_127:
      v340 = v153;
      v154 = UIEdgeInsetsReplace(v151, 0.0, 0.0, 0.0, 0.0, *(v390 + 8));
      v156 = v155;
      v158 = v157;
      v433 = v159;
      swift_getKeyPath();
      v400 = v138;
      v403 = v139;
      v395 = v140;
      v398 = v141;
      if (v139 == 0.0 && v138 == 0.0 && v141 == 0.0 && v140 == 0.0)
      {
        v160 = UIEdgeInsetsAdd(v151, v449, v446, v442, v438, v154);
        v164 = v139;
        v165 = v138;
        v429 = v141;
        v434 = 0.0;
      }

      else
      {
        v166 = v145;
        v167 = v142;
        v168 = v151 & v143;
        if (v147)
        {
          v169 = UIEdgeInsetsMin(15, v139, v138, v141, v140, v154);
          UIEdgeInsetsReplace(v151 & v143, 0.0, 0.0, 0.0, 0.0, v169);
          v420 = v420 + v170 + v171;
        }

        v172 = v154;
        v173 = UIEdgeInsetsMax(v151 & v143, v139, v138, v141, v140, v154);
        v177 = UIEdgeInsetsSubtract(v168 & v167, v173, v174, v175, v176, v139);
        v178 = v168 & v167;
        v142 = v167;
        v182 = UIEdgeInsetsMax(v178, v177, v179, v180, v181, v139);
        v186 = UIEdgeInsetsAdd(15, v182, v183, v184, v185, v449);
        v188 = v187;
        v190 = v189;
        v191 = v156;
        v192 = v433;
        v165 = v188;
        v164 = v186;
        v429 = v193;
        v434 = v190;
        v194 = UIEdgeInsetsSubtract(v151, v172, v191, v158, v192, v186);
        v160 = UIEdgeInsetsMax(v151, v194, v195, v196, v197, 0.0);
        v145 = v166;
      }

      v468 = v160;
      v469 = *&v161;
      v470 = v162;
      v471 = v163;
      if ((v147 & 1) == 0)
      {
        v198 = v424;
LABEL_139:
        if (v150 && (v164 != 0.0 || v165 != 0.0 || v429 != 0.0 || v434 != 0.0))
        {
          goto LABEL_159;
        }

        v199 = 0.0;
        goto LABEL_145;
      }

      if (v332)
      {
        v198 = v424 + v413 + v163 + v388 + v165 + v434 + v161;
        goto LABEL_139;
      }

      v198 = v424;
      if (v424 <= 0.0)
      {
        goto LABEL_139;
      }

      *&v454 = v449;
      *(&v454 + 1) = v446;
      v455 = v442;
      v456 = v438;

      swift_getAtKeyPath();

      *&v454 = v424 + v457;
      swift_setAtWritableKeyPath();
      if (!v150)
      {
        v199 = 0.0;
        v198 = 0.0;
LABEL_145:
        v200 = v392;
        v201 = v383;
        if (v112 == v337)
        {
          goto LABEL_146;
        }

        goto LABEL_86;
      }

      if (v164 != 0.0 || v165 != 0.0)
      {
        v198 = 0.0;
LABEL_159:
        v425 = v198;
        v200 = v392;
        v201 = v383;
LABEL_160:
        v202 = UIEdgeInsetsAdd(v151, v462, v463, v464, v465, v164);
        v204 = v203;
        v206 = v205;
        v208 = v207;
        swift_beginAccess();
        v462 = v202;
        v463 = v204;
        v464 = v206;
        v465 = v208;
        v209 = swift_modifyAtWritableKeyPath();
        *v210 = *v210 + 50.0;
        v209(&v454, 0);
        swift_endAccess();
        v199 = 0.0;
        v198 = v425;
        goto LABEL_86;
      }

      v425 = 0.0;
      v200 = v392;
      v201 = v383;
      if (v429 != 0.0 || v434 != 0.0)
      {
        goto LABEL_160;
      }

      v199 = 0.0;
      v198 = 0.0;
      if (v112 == v337)
      {
LABEL_146:
        v199 = v462;
        if (v462 == 0.0 && v463 == 0.0 && v464 == 0.0 && v465 == 0.0)
        {
          v199 = 0.0;
        }

        else
        {
          v462 = 0.0;
          v463 = 0.0;
          v464 = 0.0;
          v465 = 0.0;
        }
      }

LABEL_86:
      v424 = v198;
      v114 = v420;
      v115 = v420 >= 0.0;
      v116 = --v111 == 0;
      v117 = v388 + v420;
      if (!v115 || !v116)
      {
        v117 = v388;
      }

      v387 = v117;
      if (v115 && v116)
      {
        v114 = 0.0;
      }

      v420 = v114;
      v118 = v199;
      v119 = UIEdgeInsetsMax(15, v354, v351, v348, v344, v468);
      v350 = v120;
      v353 = v119;
      v343 = v122;
      v347 = v121;
      v123 = UIEdgeInsetsMax(15, v363, v360, v358, v356, v164);
      v125 = v124;
      v127 = v126;
      v129 = v128;
      v130 = UIEdgeInsetsMax(15, v380, v376, v373, v370, v118);
      *&v492 = v403;
      *(&v492 + 1) = v400;
      v493 = v398;
      v494 = v395;
      v495 = v449;
      v496 = v446;
      v497 = v442;
      v498 = v438;
      v499 = v142;
      v500 = v143;
      v501 = v200;
      v502 = v145;
      *v503 = *v452;
      *&v503[3] = *&v452[3];
      v506 = v459;
      v505 = v458;
      v504 = v387;
      v507 = v413;
      v508 = v353;
      v509 = v350;
      v510 = v347;
      v511 = v343;
      v512 = v123;
      v513 = v125;
      v514 = v127;
      v515 = v129;
      v516 = v340 | v366;
      v517 = v201;
      v518 = v130;
      v519 = v131;
      v520 = v132;
      v521 = v133;
      v522 = v147;
      swift_beginAccess();
      v134 = swift_isUniquelyReferenced_nonNull_native();
      v457 = *(v368 + 16);
      sub_188E9E278(&v492, v35, v134);
      v8 = v457;
      *(v368 + 16) = v457;
      swift_endAccess();

      ++v112;
      v113 = v408;
      if (!v111)
      {
        goto LABEL_163;
      }
    }

    if (v334 < 0)
    {
      if (v145)
      {
        v334 = v112;
        if ((v337 & 0x8000000000000000) == 0)
        {
          v148 = 1;
          v334 = v112;
          goto LABEL_106;
        }

        goto LABEL_102;
      }

      if ((v337 & 0x8000000000000000) == 0)
      {
        v148 = 0;
        goto LABEL_106;
      }
    }

    else
    {
      if ((v337 & 0x8000000000000000) == 0)
      {
        v148 = v145;
        goto LABEL_106;
      }

      if (v145)
      {
LABEL_102:
        v148 = 1;
        goto LABEL_106;
      }
    }

    v148 = 0;
    v337 = v112;
LABEL_106:
    v149 = v112;
    if (v113 < 0)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

LABEL_163:
  sub_188A3F5FC(&v466, &qword_1EA934300, &qword_18A64BEF0);
  v211 = swift_allocObject();
  *(v211 + 16) = 0;
  v389 = (v211 + 16);
  v367 = swift_allocObject();
  *(v367 + 16) = 0;
  v371 = (v367 + 16);
  v212 = swift_allocObject();
  *(v212 + 16) = MEMORY[0x1E69E7CC8];
  v447 = (v212 + 16);
  v213 = v390;
  swift_beginAccess();
  v214 = 0.0;
  if ((*(v390 + 72) & 1) == 0)
  {
    v214 = *(v390 + 40);
  }

  v450 = v214;
  v35 = *(v327 + 32);
  swift_beginAccess();
  *v389 = v450;
  swift_beginAccess();
  *v371 = v450;
  v361 = v35;
  if (v35 >= 0)
  {
    v215 = v35;
  }

  else
  {
    v215 = v325;
  }

  if (v325 < v215)
  {
    goto LABEL_311;
  }

  v364 = v212;
  v384 = *(v327 + 48);
  v216 = v215 & 0x7FFFFFFFFFFFFFFFLL;

  v377 = v8;
  v381 = v211;
  if (v216)
  {
    v374 = v323 + 24;
    v393 = v450;
    do
    {
      v218 = *(v374 + 8 * v216);
      if (!*(*&v8 + 16))
      {
        goto LABEL_316;
      }

      v219 = *(v213 + 72);
      v220 = sub_188B85570(*(v374 + 8 * v216));
      if ((v221 & 1) == 0)
      {
        goto LABEL_316;
      }

      v222 = *(*&v8 + 56) + (v220 << 8);
      v223 = *(v222 + 96);
      v224 = *(v222 + 128);
      v225 = *(v222 + 144);
      v227 = *(v222 + 160);
      v226 = *(v222 + 168);
      v228 = *(v222 + 176);
      v229 = *(v222 + 184);
      v230 = *(v222 + 192);
      v231 = *(v222 + 208);
      v35 = *(v213 + 72);
      v232 = v226 != 0.0;
      if (v228 != 0.0)
      {
        v232 = 1;
      }

      v233 = v393;
      if (v229 != 0.0)
      {
        v232 = 1;
      }

      if (*(v222 + 88))
      {
        v233 = v450;
      }

      if (v230 != 0.0)
      {
        v232 = 1;
      }

      v234 = v223 + v225 + v227;
      v235 = v233 - v228 - v234 - v230;
      v236 = v233 - v224;
      if (*(v213 + 72))
      {
        v235 = v235 - v224;
      }

      else
      {
        v236 = v235 - v224;
      }

      v237 = v233 + v228;
      v238 = v234 + v233 + v228 + v230;
      if ((v35 & 1) == 0)
      {
        v238 = v233;
        v237 = v233 + v224 + v228;
      }

      v239 = -1.0;
      if ((v219 & 1) == 0)
      {
        v239 = 1.0;
        v236 = v238;
        v235 = v237;
      }

      if (v231 + 0x4000000000000000 < 0)
      {
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:

        goto LABEL_293;
      }

      v409 = v235;
      v417 = *(v222 + 80);
      v240 = *(v222 + 104);
      v404 = *(v222 + 136);
      v414 = *(v222 + 152);
      v241 = *(v222 + 200);
      v421 = *(v222 + 112);
      v426 = *(v222 + 216);
      v430 = *(v222 + 224);
      v435 = *(v222 + 232);
      v439 = *(v222 + 240);
      v443 = v236;
      v242 = 2 * v231;
      v243 = v450 + (v224 + v234 + v228 + v230) * v239;
      if (*(v222 + 88))
      {
        v242 |= 1uLL;
      }

      else
      {
        *v371 = v243;
        v393 = v450 + (v224 + v234 + v228 + v230) * v239;
      }

      v401 = *(v213 + 48);
      *v389 = v243;
      v450 = v450 + (v224 + v234 + v228 + v230) * v239;
      if (v218)
      {
        if (qword_1EA930920 != -1)
        {
          v263 = v241;
          swift_once();
          v241 = v263;
        }

        if (qword_1EA930928 == v218)
        {
          v244 = &qword_1EA994EC0;
          if (qword_1EA930888 != -1)
          {
            v245 = v241;
            swift_once();
            v241 = v245;
            v244 = &qword_1EA994EC0;
          }

LABEL_203:
          v246 = *v244;
          goto LABEL_205;
        }
      }

      else if (v232)
      {
        v244 = &qword_1EA994EB8;
        if (qword_1EA930880 != -1)
        {
          v264 = v241;
          swift_once();
          v241 = v264;
          v244 = &qword_1EA994EB8;
        }

        goto LABEL_203;
      }

      v246 = 0;
LABEL_205:
      sub_188E636B4(v218, v241);
      v396 = v247;
      v399 = v248;
      if (qword_1EA930880 != -1)
      {
        swift_once();
      }

      if (v246 == qword_1EA994EB8)
      {
        v249 = -1;
      }

      else
      {
        if (v246 == 1)
        {
          goto LABEL_213;
        }

        if (qword_1EA930888 != -1)
        {
          swift_once();
        }

        if (v246 == qword_1EA994EC0)
        {
LABEL_213:
          if (v35)
          {
            v249 = 5;
          }

          else
          {
            v249 = 10;
          }
        }

        else
        {
          v249 = 0;
        }
      }

      if (v384 + v223 < v240)
      {
        v240 = v384 + v223;
      }

      swift_beginAccess();
      v211 = swift_isUniquelyReferenced_nonNull_native();
      v250 = *v447;
      *&v35 = COERCE_DOUBLE(sub_188B85570(v218));
      v252 = v250[2];
      v253 = (v251 & 1) == 0;
      v254 = v252 + v253;
      if (__OFADD__(v252, v253))
      {
        goto LABEL_290;
      }

      v255 = v251;
      if (v250[3] >= v254)
      {
        if ((v211 & 1) == 0)
        {
          sub_188FA1728();
        }
      }

      else
      {
        sub_1890BB7D4(v254, v211);
        *&v256 = COERCE_DOUBLE(sub_188B85570(v218));
        if ((v255 & 1) != (v257 & 1))
        {
          goto LABEL_318;
        }

        v35 = v256;
      }

      v211 = v381;
      v258 = v401 - v226 - v229;
      if (v255)
      {
        v217 = v250[7] + 216 * v35;
        *v217 = v246;
        *(v217 + 8) = v409;
        *(v217 + 16) = v226;
        *(v217 + 24) = v234;
        *(v217 + 32) = v258;
        *(v217 + 40) = v404;
        *(v217 + 48) = v225;
        *(v217 + 56) = v414;
        *(v217 + 64) = v227;
        *(v217 + 72) = 0;
        *(v217 + 80) = v417;
        *(v217 + 88) = v242;
        *(v217 + 96) = v249;
        *(v217 + 104) = v240;
        *(v217 + 112) = v421;
        *(v217 + 120) = v231;
        *(v217 + 128) = v396;
        *(v217 + 136) = v426;
        *(v217 + 144) = v430;
        *(v217 + 152) = v435;
        *(v217 + 160) = v439;
        *(v217 + 168) = v399;
        *(v217 + 176) = v443;
        *(v217 + 184) = v226;
        *(v217 + 192) = v224;
        *(v217 + 200) = v258;
        *(v217 + 208) = 0;
      }

      else
      {
        v250[(v35 >> 6) + 8] |= 1 << v35;
        *(v250[6] + 8 * v35) = v218;
        v259 = v250[7] + 216 * v35;
        *v259 = v246;
        *(v259 + 8) = v409;
        *(v259 + 16) = v226;
        *(v259 + 24) = v234;
        *(v259 + 32) = v258;
        *(v259 + 40) = v404;
        *(v259 + 48) = v225;
        *(v259 + 56) = v414;
        *(v259 + 64) = v227;
        *(v259 + 72) = 0;
        *(v259 + 80) = v417;
        *(v259 + 88) = v242;
        *(v259 + 96) = v249;
        *(v259 + 104) = v240;
        *(v259 + 112) = v421;
        *(v259 + 120) = v231;
        *(v259 + 128) = v396;
        *(v259 + 136) = v426;
        *(v259 + 144) = v430;
        *(v259 + 152) = v435;
        *(v259 + 160) = v439;
        *(v259 + 168) = v399;
        *(v259 + 176) = v443;
        *(v259 + 184) = v226;
        *(v259 + 192) = v224;
        *(v259 + 200) = v258;
        *(v259 + 208) = 0;
        v260 = v250[2];
        v261 = __OFADD__(v260, 1);
        v262 = v260 + 1;
        if (v261)
        {
          goto LABEL_291;
        }

        v250[2] = v262;
      }

      --v216;
      *v447 = v250;
      swift_endAccess();
      v213 = v390;
      v8 = v377;
    }

    while (v216);
  }

  sub_188A3F5FC(&v467, &qword_1EA934300, &qword_18A64BEF0);
  v265 = 0.0;
  if ((*(v213 + 72) & 1) == 0)
  {
    v265 = *(v213 + 40);
  }

  *v389 = v265;
  *v371 = v265;
  v218 = v327;
  v266 = v325;
  v267 = v361;
  if (v361 < 0)
  {
    goto LABEL_292;
  }

  v451 = v265;
  if (v325 < v361)
  {
    goto LABEL_313;
  }

  if (v361 != v325)
  {
    v269 = v268 + 32;
    *&v35 = 2.0;
    if (a2 == 1)
    {
      v270 = 1.0;
    }

    else
    {
      v270 = 0.0;
    }

    v410 = v270;
    v415 = v451;
    do
    {
      if (v267 >= v266)
      {
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        v468 = 0.0;
        v469 = 0xE000000000000000;
        sub_18A4A80E8();
        MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
        type metadata accessor for Column(0);
        sub_18A4A82D8();
        MEMORY[0x18CFE22D0](41, 0xE100000000000000);
        goto LABEL_317;
      }

      v275 = *(v269 + 8 * v267);
      if (!*(*&v8 + 16) || (v276 = v267, v277 = *(v390 + 72), v278 = sub_188B85570(v275), (v279 & 1) == 0))
      {
        sub_18A4A80E8();
        MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
        type metadata accessor for Column(0);
        sub_18A4A82D8();
        MEMORY[0x18CFE22D0](41, 0xE100000000000000);
        while (1)
        {
LABEL_317:
          sub_18A4A8398();
          __break(1u);
LABEL_318:
          type metadata accessor for Column(0);
          sub_18A4A87A8();
          __break(1u);
LABEL_319:
          *&v492 = 0;
          *(&v492 + 1) = 0xE000000000000000;
          sub_18A4A80E8();
          MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
          v468 = *&v35;
          type metadata accessor for Column(0);
          sub_18A4A82D8();
          MEMORY[0x18CFE22D0](41, 0xE100000000000000);
        }
      }

      v280 = *(*&v8 + 56) + (v278 << 8);
      v281 = *(v280 + 96);
      v282 = *(v280 + 128);
      v284 = *(v280 + 160);
      v283 = *(v280 + 168);
      v285 = *(v280 + 176);
      v286 = *(v280 + 184);
      v287 = *(v280 + 192);
      v288 = *(v280 + 208);
      v289 = *(v390 + 72);
      v290 = v283 != 0.0;
      if (v285 != 0.0)
      {
        v290 = 1;
      }

      if (v286 != 0.0)
      {
        v290 = 1;
      }

      v291 = v415;
      if (*(v280 + 88))
      {
        v291 = v451;
      }

      if (v287 != 0.0)
      {
        v290 = 1;
      }

      v444 = *(v280 + 144);
      v292 = v281 + *(v280 + 144) + v284;
      v293 = v291 - v285 - v292 - v287;
      v294 = v291 - v282;
      if (*(v390 + 72))
      {
        v293 = v293 - v282;
      }

      else
      {
        v294 = v293 - v282;
      }

      v295 = v291 + v285;
      v296 = v292 + v291 + v285 + v287;
      if ((v289 & 1) == 0)
      {
        v296 = v291;
        v295 = v291 + v282 + v285;
      }

      v297 = 1.0;
      if (v277)
      {
        v298 = v296;
      }

      else
      {
        v297 = -1.0;
        v298 = v294;
      }

      if (v277)
      {
        v299 = v295;
      }

      else
      {
        v299 = v293;
      }

      if (v288 + 0x4000000000000000 < 0)
      {
        goto LABEL_310;
      }

      v300 = *(v280 + 80);
      v440 = *(v280 + 112);
      v422 = *(v280 + 104);
      v427 = *(v280 + 136);
      v301 = *(v280 + 200);
      v431 = *(v280 + 232);
      v436 = *(v280 + 216);
      v302 = 2 * v288;
      v303 = v451 + (v282 + v292 + v285 + v287) * v297;
      if (*(v280 + 88))
      {
        v302 |= 1uLL;
      }

      else
      {
        *v371 = v303;
        v415 = v451 + (v282 + v292 + v285 + v287) * v297;
      }

      v418 = *(v390 + 48);
      *v389 = v303;
      v451 = v451 + (v282 + v292 + v285 + v287) * v297;
      if (v275)
      {
        if (qword_1EA930920 != -1)
        {
          v310 = v301;
          swift_once();
          v301 = v310;
        }

        if (qword_1EA930928 != v275)
        {
LABEL_277:
          v306 = 0.0;
          goto LABEL_278;
        }

        v304 = &qword_1EA994EC0;
        if (qword_1EA930888 != -1)
        {
          v305 = v301;
          swift_once();
          v301 = v305;
          v304 = &qword_1EA994EC0;
        }
      }

      else
      {
        if (!v290)
        {
          goto LABEL_277;
        }

        v304 = &qword_1EA994EB8;
        if (qword_1EA930880 != -1)
        {
          v312 = v301;
          swift_once();
          v301 = v312;
          v304 = &qword_1EA994EB8;
        }
      }

      v306 = *v304;
LABEL_278:
      sub_188E636B4(v275, v301);
      if (qword_1EA930880 != -1)
      {
        v405 = v307;
        v309 = v308;
        swift_once();
        v307 = v405;
        v308 = v309;
      }

      if (*&v306 == qword_1EA994EB8)
      {
        v271 = -1;
      }

      else
      {
        if (*&v306 == 1)
        {
          goto LABEL_285;
        }

        if (qword_1EA930888 != -1)
        {
          v406 = v307;
          v311 = v308;
          swift_once();
          v307 = v406;
          v308 = v311;
        }

        if (*&v306 == qword_1EA994EC0)
        {
LABEL_285:
          v271 = 10;
          if (v289)
          {
            v271 = 5;
          }
        }

        else
        {
          v271 = 0;
        }
      }

      v272 = v276 + 1;
      v468 = v306;
      v267 = v272;
      v273 = v384 + v281;
      v469 = *&v299;
      v470 = v283;
      if (v384 + v281 >= v422)
      {
        v273 = v422;
      }

      v471 = v292;
      v472 = v418 - v283 - v286;
      v474 = v444;
      v473 = v427;
      v475 = v284;
      v476 = v410;
      v477 = v300;
      v478 = v302;
      v479 = v271;
      v480 = v273;
      v481 = v440;
      v482 = v288;
      v483 = v307;
      v484 = v436;
      v485 = v431;
      v486 = v308;
      v487 = v298;
      v488 = v283;
      v489 = v282;
      v490 = v472;
      v491 = a2;
      swift_beginAccess();
      v274 = swift_isUniquelyReferenced_nonNull_native();
      v453 = *v447;
      sub_188E9E3CC(&v468, v275, v274);
      *v447 = v453;
      swift_endAccess();
      v266 = v325;
      v218 = v327;
      v8 = v377;
      v211 = v381;
    }

    while (v325 != v272);
  }

LABEL_293:
  sub_188A3F5FC(&v467, &qword_1EA934300, &qword_18A64BEF0);
  v313 = *(v218 + 40);
  sub_188E62FE0(0, v211, v385, v367);
  if (v313 >= 0)
  {
    v314 = v313;
  }

  else
  {
    v314 = v322;
  }

  if (v322 < v314)
  {
    goto LABEL_312;
  }

  v315 = v314 & 0x7FFFFFFFFFFFFFFFLL;
  v316 = v326;
  if ((v314 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {

    do
    {
      sub_188E630A4(*(v326 + 24 + 8 * v315--), 0, 0, *(v390 + 72), v368, v385, v211, v367, v364);
    }

    while (v315);
    sub_188A3F5FC(&v466, &qword_1EA934300, &qword_18A64BEF0);
    v316 = v326;
  }

  sub_188E62FE0(0, v211, v385, v367);
  v35 = a2;
  if ((v313 & 0x8000000000000000) == 0)
  {
    if (v322 < v313)
    {
      goto LABEL_314;
    }

    if (v322 != v313)
    {
      v317 = v322 - v313;
      if (v322 <= v313)
      {
        goto LABEL_315;
      }

      v318 = (v316 + 8 * v313 + 32);
      do
      {
        v319 = *v318++;
        sub_188E630A4(v319, 0, a2, (*(v390 + 72) & 1) == 0, v368, v385, v211, v367, v364);
        --v317;
      }

      while (v317);
      sub_188A3F5FC(&v466, &qword_1EA934300, &qword_18A64BEF0);
    }
  }

  swift_beginAccess();
  v320 = *(v364 + 16);

  return v320;
}

uint64_t sub_188E613E4(uint64_t result, double *a2, double a3)
{
  v4 = *a2;
  if (!*(*a2 + 16))
  {
    return result;
  }

  v7 = result;
  result = sub_188B85570(result);
  if ((v8 & 1) == 0)
  {
    return result;
  }

  v9 = *(v4 + 56) + (result << 8);
  if (*(v9 + 248) != 1)
  {
    return result;
  }

  if (a3 <= 0.0)
  {
    goto LABEL_28;
  }

  v10 = *(v9 + 112);
  if (*(v9 + 96) - v10 <= a3)
  {
    a3 = *(v9 + 96) - v10;
  }

  if (a3 < 0.0)
  {
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = *a2;
  v13 = sub_188B85570(v7);
  v14 = v63[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
LABEL_26:
    sub_188FA1534();
    goto LABEL_13;
  }

  v3 = v12;
  if (v63[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

  sub_1890BB4C0(v16, isUniquelyReferenced_nonNull_native);
  v17 = sub_188B85570(v7);
  if ((v3 & 1) != (v18 & 1))
  {
LABEL_29:
    type metadata accessor for Column(0);
    result = sub_18A4A87A8();
    __break(1u);
    return result;
  }

  v13 = v17;
LABEL_13:
  if (v3)
  {
    memmove(&__dst, (v63[7] + (v13 << 8)), 0xF9uLL);
    signpost_c2_entryLock_start();
  }

  else
  {
    sub_188E67FD4(&__dst);
  }

  v59 = v66;
  v60 = v67;
  v61 = v68;
  v62 = v69;
  v57 = __dst;
  v58 = v65;
  v19 = *v70;
  v51 = *&v70[72];
  v52 = *&v70[88];
  v49 = *&v70[40];
  v50 = *&v70[56];
  v56 = v70[152];
  v54 = *&v70[120];
  v55 = *&v70[136];
  v53 = *&v70[104];
  v47 = *&v70[8];
  v48 = *&v70[24];
  v35[2] = v66;
  v35[3] = v67;
  v35[4] = v68;
  v35[5] = v69;
  v35[0] = __dst;
  v35[1] = v65;
  v36 = *v70;
  v37 = *&v70[8];
  v38 = *&v70[24];
  v42 = *&v70[88];
  v41 = *&v70[72];
  v40 = *&v70[56];
  v39 = *&v70[40];
  v46 = v70[152];
  v45 = *&v70[136];
  v44 = *&v70[120];
  v43 = *&v70[104];
  if (sub_188E036AC(v35) == 1)
  {
    __break(1u);
LABEL_28:
    sub_18A4A8398();
    __break(1u);
    goto LABEL_29;
  }

  v23[2] = v59;
  v23[3] = v60;
  v23[4] = v61;
  v23[5] = v62;
  v23[0] = v57;
  v23[1] = v58;
  v33 = v55;
  v32 = v54;
  v31 = v53;
  v30 = v52;
  v29 = v51;
  v28 = v50;
  v27 = v49;
  v25 = v47;
  v20 = v19 - a3;
  v34 = v56;
  v26 = v48;
  v24 = v20;
  result = sub_188E036AC(v23);
  if (result == 1)
  {
    v21 = v63;
    if (v3)
    {
      result = sub_188F9CD1C(v13, v63);
    }
  }

  else
  {
    v66 = v59;
    v67 = v60;
    v68 = v61;
    v69 = v62;
    __dst = v57;
    v65 = v58;
    *&v70[104] = v53;
    *&v70[120] = v54;
    *&v70[136] = v55;
    *&v70[40] = v49;
    *&v70[56] = v50;
    *&v70[72] = v51;
    *&v70[88] = v52;
    *&v70[8] = v47;
    v70[152] = v56;
    *&v70[24] = v48;
    *v70 = v20;
    v21 = v63;
    if (v3)
    {
      v22 = (v63[7] + (v13 << 8));
      v22[12] = *&v70[96];
      v22[13] = *&v70[112];
      v22[14] = *&v70[128];
      *(v22 + 233) = *&v70[137];
      v22[8] = *&v70[32];
      v22[9] = *&v70[48];
      v22[10] = *&v70[64];
      v22[11] = *&v70[80];
      v22[4] = v68;
      v22[5] = v69;
      v22[6] = *v70;
      v22[7] = *&v70[16];
      *v22 = __dst;
      v22[1] = v65;
      v22[2] = v66;
      v22[3] = v67;
    }

    else
    {
      result = sub_188F157B4(v13, v7, &__dst, v63);
    }
  }

  *a2 = v21;
  a2[6] = a3 + a2[6];
  return result;
}

uint64_t sub_188E6184C(uint64_t result, double *a2)
{
  v3 = *a2;
  if (!*(*a2 + 16))
  {
    return result;
  }

  v5 = result;
  result = sub_188B85570(result);
  if ((v6 & 1) == 0)
  {
    return result;
  }

  v7 = *(v3 + 56) + (result << 8);
  if (*(v7 + 248) == 1)
  {
    v8 = *(a2 + 3);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
      __break(1u);
LABEL_23:
      sub_188FA1534();
      v20 = v28;
      goto LABEL_8;
    }

    v11 = *(v7 + 8);
    v12 = *(v7 + 24);
    v13 = *(v7 + 40);
    v14 = *(v7 + 56);
    v15 = *(v7 + 96);
    v16 = *(v7 + 128);
    *(a2 + 3) = v10;
    a2[6] = v16 + v14 + v13 + v12 + v11 + v15 + a2[6];
  }

  v17 = sub_188B85570(v5);
  if ((v18 & 1) == 0)
  {
    goto LABEL_9;
  }

  v2 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *a2;
  v28 = *a2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_23;
  }

LABEL_8:
  sub_188F9CD1C(v2, v20);
  *a2 = v20;
LABEL_9:
  v21 = *(a2 + 1);
  if (!*(v21 + 16) || *(v21 + 32) != v5)
  {
    v25 = *(a2 + 2);
    if (!*(v25 + 16) || *(v25 + 32) != v5)
    {
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000067, 0x800000018A68C5A0);
      type metadata accessor for Column(0);
      sub_18A4A82D8();
      MEMORY[0x18CFE22D0](41, 0xE100000000000000);
      result = sub_18A4A8398();
      __break(1u);
      return result;
    }

    result = sub_189013C9C(0, 1);
    v26 = *(a2 + 5);
    v23 = v26 < 1;
    v27 = v26 - 1;
    if (v23)
    {
      if (*(*(a2 + 2) + 16))
      {
        return result;
      }

      v27 = -1;
    }

    *(a2 + 5) = v27;
    return result;
  }

  result = sub_189013C9C(0, 1);
  v22 = *(a2 + 4);
  v23 = v22 < 1;
  v24 = v22 - 1;
  if (!v23)
  {
LABEL_12:
    *(a2 + 4) = v24;
    return result;
  }

  if (!*(*(a2 + 1) + 16))
  {
    v24 = -1;
    goto LABEL_12;
  }

  return result;
}

void sub_188E61A88(uint64_t a1, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v17 = (a3 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v18 = *v17;
  if (!*(*v17 + 16))
  {
    goto LABEL_192;
  }

  v19 = sub_188B85570(a1);
  if ((v20 & 1) == 0)
  {
    goto LABEL_192;
  }

  v21 = *(v18 + 56) + 160 * v19;
  v22 = *(v21 + 88);
  v132 = *(v21 + 136);
  swift_endAccess();
  v23 = a4;
  swift_beginAccess();
  v24 = *(a4 + 16);
  LODWORD(v125) = v22;
  if (*(v24 + 16) <= a2)
  {
    v25 = v17;
    v8 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v29 = -1;
    v27 = MEMORY[0x1E69E7CC8];
    v11 = MEMORY[0x1E69E7CC0];
    v9 = -1;
    v12 = a7;
  }

  else
  {
    if (a2 < 0)
    {
      __break(1u);
      goto LABEL_182;
    }

    v25 = v17;
    v26 = v24 + 56 * a2;
    v27 = *(v26 + 32);
    v28 = *(v26 + 40);
    v11 = *(v26 + 48);
    v8 = *(v26 + 56);
    v29 = *(v26 + 64);
    v9 = *(v26 + 72);
    v12 = *(v26 + 80);
  }

  *&v177 = v27;
  v126 = v28;
  *(&v177 + 1) = v28;
  *&v178 = v11;
  *(&v178 + 1) = v8;
  *&v179 = v29;
  *(&v179 + 1) = v9;
  v180 = v12;
  sub_188E62B84(a1, &v181, a7, 1.79769313e308);
  v173 = v183;
  v174 = v184;
  v175 = v185;
  v176 = v186;
  v171 = v181;
  v172 = v182;
  v13 = v187;
  v164 = v188;
  v165 = v189;
  v170 = v194;
  v168 = v192;
  v169 = v193;
  v166 = v190;
  v167 = v191;
  v162 = v195;
  v163 = v196;
  v30 = v25[20];
  if (*(v30 + 16))
  {
    v128 = *(v30 + 32) == a1;
  }

  else
  {
    v128 = 0;
  }

  LOBYTE(v10) = v197;
  v124 = v25;
  v127 = v25[19];
  v31 = 64;
  if (v132 == v127)
  {
    v31 = 56;
  }

  v17 = *(a5 + 8 * (v132 != v127));
  if (v132 == v127)
  {
    v9 = v29;
  }

  v32 = *(a5 + v31);
  if (qword_1EA930918 != -1)
  {
LABEL_180:
    v119 = v32;
    swift_once();
    v32 = v119;
  }

  v23 = qword_1EA994EC8;
  v7 = a1;
  if (v17 != qword_1EA994EC8)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (qword_1EA930920 != -1)
        {
          goto LABEL_186;
        }

        goto LABEL_25;
      }

      v34 = a2;
      v35 = 1;
      v36 = 2;
      if (v17)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v34 = a2;
      v35 = 0;
      v36 = 1;
      if (v17)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_23;
  }

  v33 = 0;
  while (1)
  {
    v38 = *(&v189 + 1) + *(&v184 + 1) + *(&v183 + 1) + v13 + *(&v181 + 1) + *(&v182 + 1);
    if (v38 > a7)
    {
      if (a2)
      {
LABEL_47:
        v39 = v10;
        v40 = v128;
        if (v128)
        {
          v45 = v126;
          v46 = 0;
          v10 = a4;
          v41 = v127;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_49;
          }

LABEL_61:
          v45 = sub_188B9DE3C(0, *(v45 + 2) + 1, 1, v45);
          goto LABEL_49;
        }

        v42 = v132;
        v41 = v127;
      }

      else
      {
LABEL_36:
        v39 = v10;
        v40 = v128;
        v41 = v127;
        if (v128)
        {
          goto LABEL_76;
        }

        v42 = v132;
      }

      v10 = a4;
      if (v42 != v41)
      {
        goto LABEL_161;
      }

      v45 = v126;
      v46 = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_49;
    }

    if (v125)
    {
      if (a2)
      {
        v43 = *(a5 + 40);
        v17 = v124;
LABEL_44:
        if ((v33 & v43) != 1)
        {
          goto LABEL_47;
        }

        v125 = v7;
        if (v132 != *(a5 + 32))
        {
          goto LABEL_72;
        }

LABEL_46:
        v44 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_91;
      }

      v125 = v7;
      v51 = v17 == v23 || v32 == 2;
      v52 = v51 || v33;
      if (*(a5 + 48) == 2)
      {
        v44 = 1;
      }

      else
      {
        v44 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v17 = v124;
      if (!v52)
      {
LABEL_72:
        v39 = v10;
        v41 = v127;
        v40 = v128;
        v53 = v132 == v127 || v128;
        v7 = v125;
        if ((v53 & 1) == 0)
        {
          v10 = a4;
          goto LABEL_161;
        }

LABEL_76:
        v45 = v126;
        v46 = 0;
        v10 = a4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }
    }

    else
    {
      if (a2)
      {
        v17 = v124;
        if (v9 < 0)
        {
          goto LABEL_47;
        }

        v43 = *(a5 + 40);
        goto LABEL_44;
      }

      if (*(a5 + 48) != 2)
      {
        if (v17 == v23)
        {
          v17 = v124;
          if (v9 < 0)
          {
            goto LABEL_36;
          }

          v125 = v7;
        }

        else
        {
          v17 = v124;
          if (v9 < 0)
          {
            goto LABEL_36;
          }

          v125 = v7;
          if (v32 != 2 && !v33)
          {
            goto LABEL_72;
          }
        }

        goto LABEL_46;
      }

      if (v17 == v23)
      {
        v17 = v124;
        if (v9 < 0)
        {
          goto LABEL_36;
        }

        v125 = v7;
      }

      else
      {
        v17 = v124;
        if (v9 < 0)
        {
          goto LABEL_36;
        }

        v125 = v7;
        if (v32 != 2 && !v33)
        {
          goto LABEL_72;
        }
      }

      v44 = 1;
    }

LABEL_91:
    v54 = v8 < v44;
    if (v12 < v38 || v8 >= v44)
    {
      v56 = 0;
      v57 = 0;
      v58 = __OFADD__(a2, 1);
      LODWORD(v124) = v58;
LABEL_99:
      while (2)
      {
        if (!v54)
        {
          goto LABEL_109;
        }

        v59 = v17[20];
        if (*(v59 + 16) > v56)
        {
          sub_188E613E4(*(v59 + 8 * v56++ + 32), &v177, v38 - v12);
          v12 = v180;
          v8 = *(&v178 + 1);
          v54 = *(&v178 + 1) < v44;
          goto LABEL_102;
        }

        if (v57 & 1 | (v8 > 1))
        {
LABEL_109:
          if (a2 == a6)
          {
            break;
          }

          v231 = v177;
          v232 = v178;
          v233 = v179;
          v234 = v180;
          v61 = sub_188E62E4C();
          sub_188E6184C(v61, &v177);
          if (v124)
          {
            goto LABEL_188;
          }

          sub_188E61A88(v61, a2 + 1, a3, a4, a5, a6, a7);
          v62 = v177;
          v8 = v177 + 64;
          v63 = 1 << *(v177 + 32);
          if (v63 < 64)
          {
            v64 = ~(-1 << v63);
          }

          else
          {
            v64 = -1;
          }

          v65 = v64 & *(v177 + 64);
          v9 = (v63 + 63) >> 6;
          v12 = v180;

          a1 = 0;
          v11 = v62;
          while (1)
          {
            while (1)
            {
LABEL_115:
              if (!v65)
              {
                while (2)
                {
                  v67 = a1 + 1;
                  if (__OFADD__(a1, 1))
                  {
                    __break(1u);
                    goto LABEL_180;
                  }

                  if (v67 < v9)
                  {
                    v66 = *(v8 + 8 * v67);
                    ++a1;
                    if (v66)
                    {
                      a1 = v67;
                      goto LABEL_121;
                    }

                    continue;
                  }

                  break;
                }

                *&v177 = v11;
                v180 = v12;

                v57 = 0;
                v56 = 0;
                v8 = *(&v178 + 1);
                v54 = *(&v178 + 1) < v44;
                if (v12 >= v38 && *(&v178 + 1) < v44)
                {
                  goto LABEL_148;
                }

                goto LABEL_99;
              }

              v66 = v65;
LABEL_121:
              v65 = (v66 - 1) & v66;
              if (*(v11 + 2))
              {
                v126 = *(*(v62 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v66)))));
                LOBYTE(v10) = (v66 - 1) & v66;
                v68 = sub_188B85570(v126);
                if (v69)
                {
                  v70 = *(v11 + 7) + (v68 << 8);
                  if (*(v70 + 248) == 1)
                  {
                    break;
                  }
                }
              }
            }

            v71 = *(v70 + 120) - *(v70 + 96);
            if (v71 < 0.0)
            {
              goto LABEL_193;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v161 = v11;
            v73 = sub_188B85570(v126);
            v74 = *(v11 + 2);
            v75 = (v72 & 1) == 0;
            v76 = v74 + v75;
            if (__OFADD__(v74, v75))
            {
              goto LABEL_189;
            }

            v122 = v72;
            if (*(v11 + 3) >= v76)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                if ((v72 & 1) == 0)
                {
                  goto LABEL_129;
                }
              }

              else
              {
                v11 = v73;
                sub_188FA1534();
                v73 = v11;
                if ((v122 & 1) == 0)
                {
                  goto LABEL_129;
                }
              }
            }

            else
            {
              sub_1890BB4C0(v76, isUniquelyReferenced_nonNull_native);
              v77 = sub_188B85570(v126);
              if ((v122 & 1) != (v78 & 1))
              {
                goto LABEL_194;
              }

              v73 = v77;
              if ((v122 & 1) == 0)
              {
LABEL_129:
                v10 = v73;
                sub_188E67FD4(&__dst);
                goto LABEL_133;
              }
            }

            v10 = v73;
            memmove(&__dst, (*(v161 + 7) + (v73 << 8)), 0xF9uLL);
            signpost_c2_entryLock_start();
LABEL_133:
            v157 = v216;
            v158 = v217;
            v159 = v218;
            v160 = v219;
            v155 = __dst;
            v156 = v215;
            v79 = v220;
            v149 = v225;
            v150 = v226;
            v147 = v223;
            v148 = v224;
            v154 = v230;
            v152 = v228;
            v153 = v229;
            v151 = v227;
            v145 = v221;
            v146 = v222;
            if (sub_188E036AC(&__dst) == 1)
            {
              goto LABEL_191;
            }

            v80 = v71 + v79;
            v133[2] = v157;
            v133[3] = v158;
            v133[4] = v159;
            v133[5] = v160;
            v133[0] = v155;
            v133[1] = v156;
            v134 = v80;
            v135 = v145;
            v136 = v146;
            v140 = v150;
            v139 = v149;
            v138 = v148;
            v137 = v147;
            v144 = v154;
            v143 = v153;
            v142 = v152;
            v141 = v151;
            v81 = sub_188E036AC(v133);
            v11 = v161;
            if (v81 == 1)
            {
              if (v122)
              {
                sub_188F9CD1C(v10, v161);
                v12 = v12 - v71;
                goto LABEL_115;
              }
            }

            else
            {
              if (v122)
              {
                v82 = *(v161 + 7) + (v10 << 8);
                v83 = v158;
                *(v82 + 32) = v157;
                *(v82 + 48) = v83;
                v84 = v160;
                *(v82 + 64) = v159;
                *(v82 + 80) = v84;
                v85 = v156;
                *v82 = v155;
                *(v82 + 16) = v85;
                *(v82 + 96) = v80;
                v86 = v146;
                *(v82 + 104) = v145;
                *(v82 + 120) = v86;
                v87 = v147;
                v88 = v148;
                v89 = v149;
                *(v82 + 184) = v150;
                *(v82 + 168) = v89;
                *(v82 + 152) = v88;
                *(v82 + 136) = v87;
                v90 = v151;
                v91 = v152;
                v92 = v153;
                *(v82 + 248) = v154;
                *(v82 + 232) = v92;
                *(v82 + 216) = v91;
                *(v82 + 200) = v90;
                v12 = v12 - v71;
                goto LABEL_115;
              }

              *&v161[8 * (v10 >> 6) + 64] |= 1 << v10;
              *(*(v11 + 6) + 8 * v10) = v126;
              v93 = v158;
              v94 = *(v11 + 7) + (v10 << 8);
              *(v94 + 32) = v157;
              *(v94 + 48) = v93;
              v95 = v160;
              *(v94 + 64) = v159;
              *(v94 + 80) = v95;
              v96 = v156;
              *v94 = v155;
              *(v94 + 16) = v96;
              *(v94 + 96) = v80;
              v97 = v146;
              *(v94 + 104) = v145;
              *(v94 + 120) = v97;
              v98 = v147;
              v99 = v148;
              v100 = v149;
              *(v94 + 184) = v150;
              *(v94 + 168) = v100;
              *(v94 + 152) = v99;
              *(v94 + 136) = v98;
              v101 = v151;
              v102 = v152;
              v103 = v153;
              *(v94 + 248) = v154;
              *(v94 + 232) = v103;
              *(v94 + 216) = v102;
              *(v94 + 200) = v101;
              v104 = *(v11 + 2);
              v105 = __OFADD__(v104, 1);
              v106 = v104 + 1;
              if (v105)
              {
                goto LABEL_190;
              }

              *(v11 + 2) = v106;
            }

            v12 = v12 - v71;
          }
        }

        sub_188E62B84(v125, &v198, a7, v12);
        v13 = v204;
        v173 = v200;
        v174 = v201;
        v175 = v202;
        v176 = v203;
        v171 = v198;
        v172 = v199;
        v168 = v209;
        v169 = v210;
        v170 = v211;
        v164 = v205;
        v165 = v206;
        v166 = v207;
        v167 = v208;
        v162 = v212;
        v163 = v213;
        v38 = *(&v206 + 1) + *(&v201 + 1) + *(&v200 + 1) + *(&v199 + 1) + v204 + *(&v198 + 1);
        v54 = v8 < v44;
        v57 = 1;
LABEL_102:
        if (v12 < v38 || v8 >= v44)
        {
          continue;
        }

        break;
      }
    }

LABEL_148:
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      swift_endAccess();
      *&__dst = 0;
      *(&__dst + 1) = 0xE000000000000000;
      sub_18A4A80E8();
      MEMORY[0x18CFE22D0](0xD000000000000057, 0x800000018A68C410);
      *&v198 = a1;
      type metadata accessor for Column(0);
      sub_18A4A82D8();
      MEMORY[0x18CFE22D0](41, 0xE100000000000000);
      while (1)
      {
LABEL_193:
        sub_18A4A8398();
        __break(1u);
LABEL_194:
        *&v177 = v11;
        v180 = v12;
        type metadata accessor for Column(0);
        sub_18A4A87A8();
        __break(1u);
      }
    }

    *(&v178 + 1) = v8 + 1;
    if (v38 >= v12)
    {
      v107 = v12;
    }

    else
    {
      v107 = v38;
    }

    v108 = v12 - v107;
    v180 = v108;
    v10 = a4;
    v7 = v125;
    v40 = v128;
    v41 = v127;
    if (v128)
    {
      if (v108 > 0.0)
      {
        v13 = v13 + v108;
      }
    }

    else if (v132 != v127)
    {
      v39 = 1;
      v11 = v178;
      if ((*(&v179 + 1) & 0x8000000000000000) == 0)
      {
        goto LABEL_161;
      }

      goto LABEL_57;
    }

    v45 = *(&v177 + 1);
    if ((v179 & 0x8000000000000000) != 0)
    {
      *&v179 = *(*(&v177 + 1) + 16);
    }

    v39 = 1;
    v46 = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_49:
    v48 = *(v45 + 2);
    v47 = *(v45 + 3);
    if (v48 >= v47 >> 1)
    {
      v45 = sub_188B9DE3C((v47 > 1), v48 + 1, 1, v45);
    }

    *(v45 + 2) = v48 + 1;
    *&v45[8 * v48 + 32] = v7;
    *(&v177 + 1) = v45;
    v49 = v132 != v41 || v40;
    if (v49 == 1)
    {
      v11 = v178;
      if (!v46 || (*(&v179 + 1) & 0x8000000000000000) == 0)
      {
        goto LABEL_161;
      }

LABEL_57:
      *(&v179 + 1) = *(v11 + 2);
LABEL_161:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_188B9DE3C(0, *(v11 + 2) + 1, 1, v11);
      }

      v110 = *(v11 + 2);
      v109 = *(v11 + 3);
      if (v110 >= v109 >> 1)
      {
        v11 = sub_188B9DE3C((v109 > 1), v110 + 1, 1, v11);
      }

      *(v11 + 2) = v110 + 1;
      *&v11[8 * v110 + 32] = v7;
      *&v178 = v11;
    }

    v216 = v173;
    v217 = v174;
    v218 = v175;
    v219 = v176;
    __dst = v171;
    v215 = v172;
    v220 = v13;
    v221 = v164;
    v222 = v165;
    v223 = v166;
    v226 = v169;
    v225 = v168;
    v224 = v167;
    *&v227 = v170;
    *(&v227 + 1) = a2;
    v229 = v163;
    v228 = v162;
    v230 = v39;
    v111 = v177;
    v112 = swift_isUniquelyReferenced_nonNull_native();
    *&v133[0] = v111;
    sub_188E9E278(&__dst, v7, v112);
    v22 = *&v133[0];
    *&v177 = *&v133[0];
    swift_beginAccess();
    v8 = *(v10 + 16);
    v9 = *(v8 + 16);
    v17 = *(&v177 + 1);
    v23 = *(&v178 + 1);
    v7 = v178;
    a1 = *(&v179 + 1);
    v11 = v179;
    a7 = v180;
    if (v9 <= a2)
    {
      break;
    }

    swift_beginAccess();

    v113 = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 16) = v8;
    if ((v113 & 1) == 0)
    {
LABEL_182:
      v8 = sub_189212AFC(v8);
      *(v10 + 16) = v8;
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_169;
      }

LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    if (a2 < 0)
    {
      goto LABEL_183;
    }

LABEL_169:
    if (*(v8 + 16) > a2)
    {
      v114 = v8 + 56 * a2;
      *(v114 + 32) = v22;
      *(v114 + 40) = v17;
      *(v114 + 48) = v7;
      *(v114 + 56) = v23;
      *(v114 + 64) = v11;
      *(v114 + 72) = a1;
      *(v114 + 80) = a7;
      *(v10 + 16) = v8;
      swift_endAccess();

      goto LABEL_175;
    }

    __break(1u);
LABEL_186:
    v120 = v32;
    swift_once();
    v32 = v120;
LABEL_25:
    v34 = a2;
    if (qword_1EA930928 == v7)
    {
      v35 = v7;
      v36 = 3;
      if (!v17)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v35 = v7;
      v36 = 4 * (v7 == 2);
      if (!v17)
      {
LABEL_23:
        v37 = 1;
        goto LABEL_33;
      }
    }

LABEL_20:
    if (v17 == 1)
    {
      v37 = 2;
    }

    else
    {
      if (qword_1EA930920 != -1)
      {
        a1 = v32;
        swift_once();
        v32 = a1;
      }

      if (qword_1EA930928 == v17)
      {
        v37 = 3;
      }

      else
      {
        v37 = 4 * (v17 == 2);
      }
    }

LABEL_33:
    v33 = v36 >= v37;
    v7 = v35;
    a2 = v34;
  }

  swift_beginAccess();

  v115 = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 16) = v8;
  if ((v115 & 1) == 0)
  {
LABEL_184:
    v8 = sub_188E4B53C(0, v9 + 1, 1, v8);
    *(v10 + 16) = v8;
  }

  v117 = *(v8 + 16);
  v116 = *(v8 + 24);
  if (v117 >= v116 >> 1)
  {
    v8 = sub_188E4B53C((v116 > 1), v117 + 1, 1, v8);
  }

  *(v8 + 16) = v117 + 1;
  v118 = v8 + 56 * v117;
  *(v118 + 32) = v22;
  *(v118 + 40) = v17;
  *(v118 + 48) = v7;
  *(v118 + 56) = v23;
  *(v118 + 64) = v11;
  *(v118 + 72) = a1;
  *(v118 + 80) = a7;
  *(v10 + 16) = v8;
  swift_endAccess();
LABEL_175:
}

void sub_188E62B84(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = (v4 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v9 = *v8;
  if (*(*v8 + 16) && (v10 = sub_188B85570(a1), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 160 * v10;
    v13 = *(v12 + 8);
    v39 = *v12;
    v40 = a4;
    v14 = *(v12 + 24);
    v38 = *(v12 + 16);
    v15 = *(v12 + 40);
    v16 = *(v12 + 48);
    v34 = *(v12 + 64);
    v35 = *(v12 + 56);
    v17 = *(v12 + 80);
    v36 = *(v12 + 72);
    v18 = *(v12 + 104);
    v33 = *(v12 + 96);
    v19 = *(v12 + 112);
    v20 = *(v12 + 120);
    v21 = *(v12 + 136);
    v22 = *(v12 + 144);
    v23 = *(v12 + 152);
    swift_endAccess();
    v24 = 0.0;
    if (v19 == 1 && (v22 & 1) == 0)
    {
      v24 = v8[21];
    }

    if (v23 == -3.40282347e38)
    {
      v23 = v20;
    }

    v32 = v13;
    v25 = v14 + v13 + v34 + v17 + v24;
    if (v18 > 0.0)
    {
      v26 = v18;
    }

    else
    {
      v26 = 0.0;
    }

    v27 = _UIClamp(v26, a3 - v25);
    v28 = v33;
    if (v33 <= 0.0)
    {
      v28 = 0.0;
    }

    v29 = _UIClamp(v28, a3 - v25);
    if (v23 > v27)
    {
      v30 = v23;
    }

    else
    {
      v30 = v27;
    }

    if (v29 < v30)
    {
      v30 = v29;
    }

    v31 = v40 - v25;
    if (v40 - v25 >= v30)
    {
      v31 = v30;
    }

    *a2 = v35;
    *(a2 + 8) = v34;
    if (v31 <= v27)
    {
      v31 = v27;
    }

    *(a2 + 16) = v36;
    *(a2 + 24) = v17;
    *(a2 + 32) = v39;
    *(a2 + 40) = v32;
    *(a2 + 48) = v38;
    *(a2 + 56) = v14;
    *(a2 + 64) = v15;
    *(a2 + 72) = v16;
    *(a2 + 80) = v21;
    *(a2 + 88) = v22;
    *(a2 + 96) = v31;
    *(a2 + 104) = v29;
    *(a2 + 112) = v27;
    *(a2 + 120) = v30;
    *(a2 + 128) = v24;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
  }

  else
  {
    swift_endAccess();
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000057, 0x800000018A68C410);
    type metadata accessor for Column(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    sub_18A4A8398();
    __break(1u);
  }
}

uint64_t sub_188E62E4C()
{
  v1 = *(v0 + 8);
  if (*(v1 + 16))
  {
    result = *(v1 + 32);
    v3 = *(v0 + 16);
    if (!*(v3 + 16))
    {
      return result;
    }

    v4 = *(v3 + 32);
    if (result)
    {
      if (result == 1)
      {
        v5 = 2;
        if (!v4)
        {
LABEL_23:
          if (v5)
          {
            return 0;
          }

          return result;
        }
      }

      else
      {
        if (qword_1EA930920 != -1)
        {
          v10 = result;
          swift_once();
          result = v10;
        }

        if (qword_1EA930928 == result)
        {
          v5 = 3;
        }

        else
        {
          v5 = 4 * (result == 2);
        }

        if (!v4)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v5 = 1;
      if (!v4)
      {
        goto LABEL_23;
      }
    }

    if (v4 == 1)
    {
      if (v5 > 1)
      {
        return 1;
      }
    }

    else
    {
      if (qword_1EA930920 != -1)
      {
        v11 = result;
        swift_once();
        result = v11;
      }

      if (v5 < 4 && v4 == 2)
      {
        v8 = result;
      }

      else
      {
        v8 = v4;
      }

      if (v5 >= 3)
      {
        v9 = v4;
      }

      else
      {
        v9 = result;
      }

      if (qword_1EA930928 == v4)
      {
        return v9;
      }

      else
      {
        return v8;
      }
    }
  }

  else
  {
    v6 = *(v0 + 16);
    if (*(v6 + 16))
    {
      return *(v6 + 32);
    }

    else
    {
      if (qword_1EA930918 != -1)
      {
        swift_once();
      }

      return qword_1EA994EC8;
    }
  }

  return result;
}

void sub_188E62FE0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
  if (a1)
  {
    swift_beginAccess();
    v7 = 0;
    if (*(v6 + 72))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  swift_beginAccess();
  v7 = 0;
  if (*(v6 + 72) == 1)
  {
LABEL_5:
    v7 = *(v6 + 40);
  }

LABEL_6:
  swift_beginAccess();
  *(a2 + 16) = v7;
  swift_beginAccess();
  *(a4 + 16) = v7;
}

void sub_188E630A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  v16 = *(a5 + 16);
  if (!*(v16 + 16) || (v17 = sub_188B85570(a1), (v18 & 1) == 0))
  {
    swift_endAccess();
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000041, 0x800000018A68C2C0);
    type metadata accessor for Column(0);
    sub_18A4A82D8();
    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    sub_18A4A8398();
    __break(1u);
    return;
  }

  v19 = *(v16 + 56) + (v17 << 8);
  v20 = *(v19 + 80);
  v21 = a7 + 16;
  v22 = (a8 + 16);
  v23 = *(v19 + 88);
  v24 = *(v19 + 96);
  v25 = *(v19 + 112);
  v26 = *(v19 + 128);
  v67 = *(v19 + 136);
  v27 = *(v19 + 144);
  v64 = *(v19 + 104);
  v65 = *(v19 + 152);
  v28 = *(v19 + 168);
  v71 = *(v19 + 160);
  v30 = *(v19 + 176);
  v29 = *(v19 + 184);
  v31 = *(v19 + 192);
  v63 = *(v19 + 200);
  v72 = *(v19 + 208);
  v68 = *(v19 + 232);
  v69 = *(v19 + 216);
  swift_endAccess();
  v32 = a6 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
  swift_beginAccess();
  v33 = *(v32 + 72) ^ a2;
  if (v28 == 0.0 && v30 == 0.0 && v29 == 0.0)
  {
    v59 = v31 != 0.0;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v59 = 1;
    if (v23)
    {
LABEL_11:
      swift_beginAccess();
      v36 = v21;
      goto LABEL_14;
    }
  }

  swift_beginAccess();
  v36 = v22;
LABEL_14:
  v37 = *v36;
  v66 = v27;
  v38 = v24 + v27 + v71;
  v39 = *v36 - v30 - v38 - v31;
  v40 = *v36 - v26;
  if (v33)
  {
    v40 = v39 - v26;
  }

  else
  {
    v39 = v39 - v26;
  }

  v41 = v30 + v26 + v37;
  v42 = v31 + v38 + v30 + v37;
  if (v33)
  {
    v42 = *v36;
  }

  else
  {
    v41 = v30 + v37;
  }

  if (a4)
  {
    v43 = 1.0;
  }

  else
  {
    v43 = -1.0;
  }

  if (a4)
  {
    v44 = v42;
  }

  else
  {
    v44 = v40;
  }

  if (a4)
  {
    v39 = v41;
  }

  if (v72 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v60 = v39;
  v61 = v44;
  v62 = v25;
  v25 = *(v32 + 48);
  v45 = (v26 + v38 + v30 + v31) * v43;
  a4 = 2 * v72;
  if (v23)
  {
    swift_beginAccess();
    *v21 = v45 + *v21;
    a4 |= 1uLL;
    if (a1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    swift_beginAccess();
    v47 = v45 + *v21;
    *v21 = v47;
    swift_beginAccess();
    *v22 = v47;
    if (a1)
    {
LABEL_31:
      if (qword_1EA930920 != -1)
      {
        swift_once();
      }

      if (qword_1EA930928 == a1)
      {
        if (qword_1EA930888 != -1)
        {
          swift_once();
        }

        v46 = &qword_1EA994EC0;
LABEL_42:
        v22 = *v46;
        goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  if (v59)
  {
    if (qword_1EA930880 != -1)
    {
      swift_once();
    }

    v46 = &qword_1EA994EB8;
    goto LABEL_42;
  }

LABEL_43:
  v22 = 0;
LABEL_44:
  v21 = a9;
  sub_188E636B4(a1, v63);
  a6 = v48;
  v23 = v49;
  if (qword_1EA930880 != -1)
  {
LABEL_63:
    swift_once();
  }

  if (v22 == qword_1EA994EB8)
  {
    v50 = a5;
    v51 = a1;
    v52 = a4;
    v53 = v20;
    v54 = -1;
  }

  else
  {
    if (v22 == 1)
    {
      goto LABEL_51;
    }

    if (qword_1EA930888 != -1)
    {
      swift_once();
    }

    if (v22 == qword_1EA994EC0)
    {
LABEL_51:
      v50 = a5;
      v51 = a1;
      v52 = a4;
      v53 = v20;
      if (v33)
      {
        v54 = 10;
      }

      else
      {
        v54 = 5;
      }
    }

    else
    {
      v50 = a5;
      v51 = a1;
      v52 = a4;
      v53 = v20;
      v54 = 0;
    }
  }

  if (a3 == 1)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = 0.0;
  }

  v56 = v25 - v28 - v29;
  swift_beginAccess();
  if (v24 + *(v50 + 64) >= v64)
  {
    v57 = v64;
  }

  else
  {
    v57 = v24 + *(v50 + 64);
  }

  v74[0] = v22;
  *&v74[1] = v60;
  *&v74[2] = v28;
  *&v74[3] = v38;
  *&v74[4] = v56;
  v74[5] = v67;
  *&v74[6] = v66;
  v74[7] = v65;
  *&v74[8] = v71;
  *&v74[9] = v55;
  v74[10] = v53;
  v74[11] = v52;
  v74[12] = v54;
  *&v74[13] = v57;
  *&v74[14] = v62;
  v74[15] = v72;
  v74[16] = a6;
  v76 = v68;
  v75 = v69;
  v77 = v23;
  v78 = v61;
  v79 = v28;
  v80 = v26;
  v81 = v56;
  v82 = a3;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(v21 + 16);
  *(v21 + 16) = 0x8000000000000000;
  sub_188E9E3CC(v74, v51, isUniquelyReferenced_nonNull_native);
  *(v21 + 16) = v73;
  swift_endAccess();
}

void sub_188E636B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v6 = *v5;
  if (!*(*v5 + 16) || (v7 = sub_188B85570(a1), (v8 & 1) == 0))
  {
    swift_endAccess();
    return;
  }

  v9 = *(*(v6 + 56) + 160 * v7 + 32);
  swift_endAccess();
  if (v5[9])
  {
    if (v9 < 1)
    {
      if ((a2 & 2) == 0)
      {
        if ((a2 & 8) == 0)
        {
          return;
        }

        goto LABEL_39;
      }

      v11 = 8;
      goto LABEL_30;
    }

    v10 = 2;
    v11 = 8;
  }

  else
  {
    if (v9 <= 0)
    {
      if ((a2 & 8) == 0)
      {
        if ((a2 & 2) == 0)
        {
          return;
        }

        goto LABEL_39;
      }

      v11 = 2;
      goto LABEL_30;
    }

    v10 = 8;
    v11 = 2;
  }

  swift_beginAccess();
  v12 = v5[7];
  if ((v9 - 1) >= *(v12 + 16))
  {
    __break(1u);
    goto LABEL_48;
  }

  v13 = *v5;
  if (!*(*v5 + 16))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v14 = sub_188B85570(*(v12 + 8 * (v9 - 1) + 32));
  if ((v15 & 1) == 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = *(*(v13 + 56) + 160 * v14 + 88);
  swift_endAccess();
  if ((v16 & 1) == 0)
  {
    if ((v10 & a2) == 0)
    {
      goto LABEL_38;
    }

LABEL_30:
    v18 = v5[20];
    if (*(v18 + 16) && *(v18 + 32) == a1)
    {
      if (!v9)
      {
        goto LABEL_38;
      }
    }

    else if (!v9)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (a1 == 2)
  {
    v17 = v10 & a2;
    if (v5[22] == 2)
    {
      if (!v17)
      {
        if ((v11 & a2) == 0)
        {
          return;
        }

        goto LABEL_39;
      }

      goto LABEL_35;
    }

    if (!v17)
    {
LABEL_38:
      if ((v11 & a2) == 0)
      {
        return;
      }

      goto LABEL_39;
    }
  }

  else if ((v10 & a2) == 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  if ((v11 & a2) == 0)
  {
    return;
  }

LABEL_39:
  v19 = v5[7];
  v20 = *(v19 + 16);
  if (v9 < (v20 - 1))
  {
    if (v9 + 1 < v20)
    {
      v21 = *(v19 + 8 * (v9 + 1) + 32);
      swift_beginAccess();
      if (*(*v5 + 16))
      {
        sub_188B85570(v21);
        if (v22)
        {
          swift_endAccess();
          return;
        }

        goto LABEL_52;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }
}

void sub_188E639CC()
{
  v2 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_121:
    *&__dst = 0;
    *(&__dst + 1) = 0xE000000000000000;
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD00000000000005BLL, 0x800000018A68C260);
    *&v184 = v2;
    sub_18A4A82D8();
    sub_18A4A8398();
    __break(1u);

    __break(1u);
    return;
  }

  p_dst = Strong;
  v5 = [Strong traitCollection];
  [v5 displayScale];
  v7 = v6;

  [p_dst containerInsets];
  v151 = v9;
  v152 = v8;
  v149 = v11;
  v150 = v10;
  [p_dst containerSize];
  v174 = v7;
  v154 = UISizeRoundToScale(v12, v13, v7);
  v148 = v14;
  v15 = [p_dst primaryEdge];
  v16 = [p_dst isRTL];
  v17 = v15 == 0;
  v160 = v15;
  v156 = v17;
  if (!v16)
  {
    v17 = v15;
  }

  v157 = v17;
  v18 = [p_dst visualStyle];
  v147 = [v18 allowsColumnResize];

  v19 = [p_dst visualStyle];
  v20 = [v19 showsSeparators];

  v153 = 0;
  if (v20)
  {
    v21 = [p_dst visualStyle];
    [v21 separatorWidth];
    v153 = v22;
  }

  v173 = [p_dst style];
  v212 = MEMORY[0x1E69E7CC8];
  [p_dst preferredColumns];
  v210 = v189;
  v211 = *v190;
  v208 = v191;
  v209 = __dst;
  v23 = [p_dst visualStyle];
  v146 = [v23 splitBehaviorForPreferredSplitBehavior_];

  if (qword_1EA9308F8 != -1)
  {
    goto LABEL_117;
  }

LABEL_7:
  v24 = off_1EA930908;
  v25 = *(off_1EA930908 + 2);
  v158 = v2;
  v159 = p_dst;
  if (!v25)
  {
    v105 = MEMORY[0x1E69E7CC8];
    v26 = MEMORY[0x1E69E7CC0];
    v106 = *(MEMORY[0x1E69E7CC8] + 16);
    if (v106)
    {
      goto LABEL_85;
    }

LABEL_88:

    v1 = MEMORY[0x1E69E7CC0];
    goto LABEL_89;
  }

  v170 = MEMORY[0x1E69E7CC8];
  v26 = MEMORY[0x1E69E7CC0];
  v27 = 32;
  v28 = &_OBJC_LABEL_PROTOCOL____UIRemoteViewController_ViewControllerOperatorInterface;
  v155 = v24;
  do
  {
    v29 = *&v24[v27];
    if ([v2 v28[186]])
    {
      v30 = [p_dst columnForSplitViewControllerColumn_];
      if ([(_UISplitViewControllerAdaptiveColumn *)v30 preferredWidth]== -3.40282347e38)
      {
        v31 = &selRef_verticalMenuCornerRadius;
        if ([(_UISplitViewControllerAdaptiveColumn *)v30 preferredWidthFraction]== -3.40282347e38)
        {
          v32 = [p_dst visualStyle];
          [v32 preferredWidthForColumn_];
          v34 = v33;
        }

        else
        {
          v34 = v154 * [(_UISplitViewControllerAdaptiveColumn *)v30 preferredWidthFraction];
        }
      }

      else
      {
        v34 = [(_UISplitViewControllerAdaptiveColumn *)v30 preferredWidth];
        v31 = &selRef_verticalMenuCornerRadius;
      }

      if ([(_UISplitViewControllerAdaptiveColumn *)v30 maximumWidth]== -3.40282347e38)
      {
        v35 = [p_dst v31[253]];
        [v35 maximumWidthForColumn_];
        v37 = v36;

        if (v34 > v37)
        {
          v38 = v34;
        }

        else
        {
          v38 = v37;
        }
      }

      else
      {
        v38 = [(_UISplitViewControllerAdaptiveColumn *)v30 maximumWidth];
      }

      v166 = v34;
      if ([(_UISplitViewControllerAdaptiveColumn *)v30 minimumWidth]== -3.40282347e38)
      {
        v39 = [p_dst v31[253]];
        [v39 minimumWidthForColumn_];
        v41 = v40;

        if (v41 >= v34)
        {
          v42 = v34;
        }

        else
        {
          v42 = v41;
        }
      }

      else
      {
        v42 = [(_UISplitViewControllerAdaptiveColumn *)v30 minimumWidth];
      }

      v168 = v26;
      if (v42 >= v38)
      {
        v43 = v38;
      }

      else
      {
        v43 = v42;
      }

      if (qword_1EA930920 != -1)
      {
        swift_once();
      }

      v161 = qword_1EA930928;
      if (v29 == qword_1EA930928)
      {
        v44 = v156;
      }

      else
      {
        v44 = v160;
      }

      v45 = !v157 ^ (v44 == v160);
      v46 = [p_dst v31[253]];
      [v46 frameInsetsForColumn_];

      _UIEdgeInsetsFromDirectionalEdgeInsets();
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v55 = [p_dst v31[253]];
      v56 = p_dst;
      v57 = [v55 edgesExtendingIntoUnsafeAreaForColumn_];

      v58 = _UIRectEdgeFromDirectionalRectEdge(v57, v45);
      v59 = [(_UISplitViewControllerAdaptiveColumn *)v30 absoluteInsets];
      if (v45)
      {
        v63 = v60;
      }

      else
      {
        v63 = v62;
      }

      if (v45)
      {
        v60 = v62;
      }

      v64 = (*&v59 & 0xFFFFFFFFFFFFFLL) == 0 || (~*&v59 & 0x7FF0000000000000) != 0;
      v65 = !v64;
      if (v64)
      {
        v66 = v59;
      }

      else
      {
        v66 = v48;
      }

      v67 = 14;
      if (v65)
      {
        v67 = 15;
      }

      v68 = (v60 & 0xFFFFFFFFFFFFFLL) == 0 || (~v60 & 0x7FF0000000000000) != 0;
      if (v68)
      {
        v69 = v60;
      }

      else
      {
        v69 = v50;
      }

      v164 = v69;
      v165 = v66;
      if (v68)
      {
        v67 &= 0xDu;
      }

      v70 = (v61 & 0xFFFFFFFFFFFFFLL) == 0 || (~v61 & 0x7FF0000000000000) != 0;
      if (v70)
      {
        v71 = v61;
      }

      else
      {
        v71 = v52;
      }

      if (v70)
      {
        v67 &= 0xBu;
      }

      v72 = (v63 & 0xFFFFFFFFFFFFFLL) == 0 || (~v63 & 0x7FF0000000000000) != 0;
      if (v72)
      {
        v73 = v63;
      }

      else
      {
        v73 = v54;
      }

      v162 = v73;
      v163 = v71;
      v74 = v31;
      if (v72)
      {
        v75 = v67 & 7;
      }

      else
      {
        v75 = v67;
      }

      [v56 additionalContainerContentInsetsForSplitViewControllerColumn_];
      v77 = v76;
      v78 = [_UISplitViewControllerAdaptiveColumn additionalSafeAreaInsets];
      v82 = UIEdgeInsetsAdd(15, v78, v79, v80, v81, v77);
      v84 = v83;
      v86 = v85;
      v88 = v87;
      v89 = [(_UISplitViewControllerAdaptiveColumn *)v30 hasContentViewController];
      v171 = *(v170 + 16) != 0;
      v90 = [v56 v74 + 2936];
      v91 = [v90 canDisplayAdjacentColumnBeneathColumn_];

      v92 = [(_UISplitViewControllerAdaptiveColumn *)v30 specifiedWidth];
      UIRoundToScale(v43, v174);
      v94 = v93;
      UIRoundToScale(v38, v174);
      v96 = v95;
      UIRoundToScale(v166, v174);
      v98 = v97;
      if (v29)
      {
        if (v29 == 1)
        {
          v99 = 2;
        }

        else if (v29 == v161)
        {
          v99 = 3;
        }

        else
        {
          v99 = 4 * (v29 == 2);
        }
      }

      else
      {
        v99 = 1;
      }

      UIRoundToScale(v92, v174);
      *&v213 = v82;
      *(&v213 + 1) = v84;
      v214 = v86;
      v215 = v88;
      v216 = 0;
      v217 = v75 & v58;
      v218 = v75;
      v219 = v165;
      v220 = v164;
      v221 = v163;
      v222 = v162;
      v223 = v89;
      v224 = v96;
      v225 = v94;
      v226 = v171;
      v227 = v98;
      v228 = v99;
      v229 = v44;
      v230 = v91;
      v231 = v100;
      v101 = v212;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&__dst = v101;
      sub_188E9E51C(&v213, v29, isUniquelyReferenced_nonNull_native);
      v170 = __dst;
      v212 = __dst;
      v26 = v168;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_188B9DE3C(0, *(v168 + 2) + 1, 1, v168);
      }

      v2 = v158;
      v24 = v155;
      v104 = *(v26 + 2);
      v103 = *(v26 + 3);
      if (v104 >= v103 >> 1)
      {
        v26 = sub_188B9DE3C((v103 > 1), v104 + 1, 1, v26);
      }

      *(v26 + 2) = v104 + 1;
      *&v26[8 * v104 + 32] = v29;
      p_dst = v159;
      v28 = &_OBJC_LABEL_PROTOCOL____UIRemoteViewController_ViewControllerOperatorInterface;
    }

    v27 += 8;
    --v25;
  }

  while (v25);

  v105 = v170;
  v106 = *(v170 + 16);
  if (!v106)
  {
    goto LABEL_88;
  }

LABEL_85:
  v1 = sub_1890BA2BC(v106, 0);
  v2 = sub_1890B9DC0(&__dst, v1 + 4, v106, v105);
  v107 = __dst;
  swift_bridgeObjectRetain_n();
  sub_188E036A4(v107);
  if (v2 != v106)
  {
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    v212 = v1;
    type metadata accessor for Column(0);
    sub_18A4A87A8();
    __break(1u);
    goto LABEL_121;
  }

LABEL_89:
  *&__dst = v1;
  sub_188E6529C(&__dst, &v212, v160);

  v108 = __dst;
  v109 = *(__dst + 16);
  if (v109)
  {
    v110 = 0;
    v169 = v26;
    v172 = __dst + 32;
    v1 = v212;
    p_dst = &__dst;
    v2 = &v184;
    v167 = v109 - 1;
    while (1)
    {
      v111 = *(v172 + 8 * v110);
      v112 = swift_isUniquelyReferenced_nonNull_native();
      *&v176 = v1;
      v114 = sub_188B85570(v111);
      v115 = v1[2];
      v116 = (v113 & 1) == 0;
      v117 = v115 + v116;
      if (__OFADD__(v115, v116))
      {
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        swift_once();
        goto LABEL_7;
      }

      v118 = v113;
      if (v1[3] >= v117)
      {
        if (v112)
        {
          if ((v113 & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          sub_188FA190C();
          if ((v118 & 1) == 0)
          {
            goto LABEL_100;
          }
        }
      }

      else
      {
        sub_1890BBAE0(v117, v112);
        v119 = sub_188B85570(v111);
        if ((v118 & 1) != (v120 & 1))
        {
          goto LABEL_120;
        }

        v114 = v119;
        if ((v118 & 1) == 0)
        {
LABEL_100:
          sub_188E67E20(&__dst);
          goto LABEL_101;
        }
      }

      memmove(&__dst, (*(v176 + 56) + 160 * v114), 0xA0uLL);
      signpost_c2_entryLock_start();
LABEL_101:
      v206 = __dst;
      v207 = v189;
      v202 = *&v192[32];
      v203 = *&v192[48];
      v204 = v193;
      v205 = v194;
      v198 = *&v190[8];
      v199 = v191;
      v200 = *v192;
      v201 = *&v192[16];
      if (sub_188E036AC(&__dst) == 1)
      {
        goto LABEL_119;
      }

      v184 = v206;
      v185 = v207;
      *(&v186[4] + 8) = v202;
      *(&v186[5] + 8) = v203;
      *(&v186[6] + 8) = v204;
      *(v186 + 8) = v198;
      *(&v186[1] + 8) = v199;
      *(&v186[2] + 8) = v200;
      *(&v186[7] + 1) = v205;
      *(&v186[3] + 8) = v201;
      *&v186[0] = v110;
      v1 = v176;
      if (sub_188E036AC(&v184) == 1)
      {
        if (v118)
        {
          sub_188F9CEBC(v114, v176);
        }
      }

      else if (v118)
      {
        v121 = *(v176 + 56) + 160 * v114;
        v122 = v207;
        *v121 = v206;
        *(v121 + 16) = v122;
        v123 = v203;
        *(v121 + 104) = v202;
        *(v121 + 120) = v123;
        *(v121 + 136) = v204;
        v124 = v199;
        *(v121 + 40) = v198;
        *(v121 + 56) = v124;
        v125 = v201;
        *(v121 + 72) = v200;
        *(v121 + 32) = v110;
        *(v121 + 152) = v205;
        *(v121 + 88) = v125;
      }

      else
      {
        *(v176 + 8 * (v114 >> 6) + 64) |= 1 << v114;
        *(v1[6] + 8 * v114) = v111;
        v126 = v1[7] + 160 * v114;
        v127 = v207;
        *v126 = v206;
        *(v126 + 16) = v127;
        v128 = v199;
        *(v126 + 40) = v198;
        *(v126 + 56) = v128;
        v129 = v201;
        *(v126 + 72) = v200;
        *(v126 + 88) = v129;
        v130 = v203;
        *(v126 + 136) = v204;
        v131 = v202;
        *(v126 + 120) = v130;
        *(v126 + 32) = v110;
        *(v126 + 152) = v205;
        *(v126 + 104) = v131;
        v132 = v1[2];
        v133 = __OFADD__(v132, 1);
        v134 = v132 + 1;
        if (v133)
        {
          goto LABEL_116;
        }

        v1[2] = v134;
      }

      if (v167 == v110)
      {
        goto LABEL_112;
      }

      if (++v110 >= *(v108 + 16))
      {
        __break(1u);
LABEL_112:
        v212 = v1;
        v26 = v169;
        goto LABEL_114;
      }
    }
  }

  v1 = v212;
LABEL_114:
  swift_unknownObjectRelease();

  swift_bridgeObjectRelease_n();

  *&v175[6] = v209;
  *&v175[22] = v210;
  *&v175[38] = v211;
  *&v176 = v1;
  *(&v176 + 1) = v152;
  *&v177 = v151;
  *(&v177 + 1) = v150;
  *&v178 = v149;
  *(&v178 + 1) = v154;
  *&v179 = v148;
  *(&v179 + 1) = v108;
  *v180 = v174;
  v180[8] = !v157;
  v180[9] = v147;
  *&v180[56] = *(&v211 + 1);
  *&v180[42] = *&v175[32];
  *&v180[26] = *&v175[16];
  *&v180[10] = *v175;
  *v181 = v146;
  *&v181[8] = v208;
  *&v181[24] = v160;
  *&v182 = v26;
  *(&v182 + 1) = v153;
  v135 = v158 + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
  v183 = v173;
  swift_beginAccess();
  v136 = *(v135 + 9);
  v186[6] = *(v135 + 8);
  v186[7] = v136;
  v186[8] = *(v135 + 10);
  v187 = *(v135 + 22);
  v137 = *(v135 + 5);
  v186[2] = *(v135 + 4);
  v186[3] = v137;
  v138 = *(v135 + 7);
  v186[4] = *(v135 + 6);
  v186[5] = v138;
  v139 = *(v135 + 1);
  v184 = *v135;
  v185 = v139;
  v140 = *(v135 + 3);
  v186[0] = *(v135 + 2);
  v186[1] = v140;
  v141 = *&v181[16];
  *(v135 + 8) = *v181;
  *(v135 + 9) = v141;
  *(v135 + 10) = v182;
  *(v135 + 22) = v183;
  v142 = *&v180[16];
  *(v135 + 4) = *v180;
  *(v135 + 5) = v142;
  v143 = *&v180[48];
  *(v135 + 6) = *&v180[32];
  *(v135 + 7) = v143;
  v144 = v177;
  *v135 = v176;
  *(v135 + 1) = v144;
  v145 = v179;
  *(v135 + 2) = v178;
  *(v135 + 3) = v145;
  sub_188E67E44(&v176, &__dst);
  sub_188E67E7C(&v184);
  *&__dst = v1;
  *(&__dst + 1) = v152;
  *&v189 = v151;
  *(&v189 + 1) = v150;
  *v190 = v149;
  *&v190[8] = v154;
  *&v190[16] = v148;
  *&v191 = v108;
  *(&v191 + 1) = v174;
  v192[0] = !v157;
  v192[1] = v147;
  *&v192[2] = *v175;
  *&v192[18] = *&v175[16];
  *&v192[34] = *&v175[32];
  *&v192[48] = *&v175[46];
  *&v192[56] = v146;
  v193 = v208;
  v194 = v160;
  v195 = v26;
  v196 = v153;
  v197 = v173;
  sub_188E67E7C(&__dst);
}

uint64_t sub_188E64930(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  if (*(*a3 + 16) && (v9 = sub_188B85570(*a1), (v10 & 1) != 0))
  {
    memmove(&__dst, (*(v8 + 56) + 160 * v9), 0xA0uLL);
    signpost_c2_entryLock_start();
  }

  else
  {
    sub_188E67E20(&v40);
    v56 = v46;
    v57 = v47;
    v58 = v48;
    v59 = v49;
    v52 = v42;
    v53 = v43;
    v54 = v44;
    v55 = v45;
    __dst = v40;
    v51 = v41;
  }

  v46 = v56;
  v47 = v57;
  v48 = v58;
  v49 = v59;
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v40 = __dst;
  v41 = v51;
  if (sub_188E036AC(&v40) == 1)
  {
    goto LABEL_58;
  }

  v11 = *(&v58 + 1);
  v12 = *a3;
  if (*(*a3 + 16) && (v13 = sub_188B85570(v7), (v14 & 1) != 0))
  {
    memmove(&v30, (*(v12 + 56) + 160 * v13), 0xA0uLL);
    signpost_c2_entryLock_start();
  }

  else
  {
    sub_188E67E20(&v20);
    v36 = v26;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v30 = v20;
    v31 = v21;
  }

  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v20 = v30;
  v21 = v31;
  if (sub_188E036AC(&v20) == 1)
  {
LABEL_58:
    result = sub_18A4A8398();
    __break(1u);
  }

  else if (v11 != a4 || v11 == *(&v38 + 1))
  {
    if (*(&v38 + 1) != a4 || v11 == *(&v38 + 1))
    {
      if (v11 == a4)
      {
        if (v6)
        {
          if (v6 == 1)
          {
            v17 = 2;
          }

          else
          {
            if (qword_1EA930920 != -1)
            {
              swift_once();
            }

            if (qword_1EA930928 == v6)
            {
              v17 = 3;
            }

            else
            {
              v17 = 4 * (v6 == 2);
            }
          }
        }

        else
        {
          v17 = 1;
        }

        if (v7)
        {
          if (v7 == 1)
          {
            v19 = 2;
          }

          else
          {
            if (qword_1EA930920 != -1)
            {
              swift_once();
            }

            if (qword_1EA930928 == v7)
            {
              v19 = 3;
            }

            else
            {
              v19 = 4 * (v7 == 2);
            }
          }
        }

        else
        {
          v19 = 1;
        }

        v18 = v17 >= v19;
      }

      else
      {
        if (v6)
        {
          if (v6 == 1)
          {
            v16 = 2;
          }

          else
          {
            if (qword_1EA930920 != -1)
            {
              swift_once();
            }

            if (qword_1EA930928 == v6)
            {
              v16 = 3;
            }

            else
            {
              v16 = 4 * (v6 == 2);
            }
          }
        }

        else
        {
          v16 = 1;
        }

        if (v7)
        {
          if (v7 == 1)
          {
            v18 = v16 <= 2;
          }

          else
          {
            if (qword_1EA930920 != -1)
            {
              swift_once();
            }

            if (qword_1EA930928 == v7)
            {
              v18 = v16 <= 3;
            }

            else
            {
              v18 = 4 * (v7 == 2) >= v16;
            }
          }
        }

        else
        {
          v18 = v16 <= 1;
        }
      }

      return !v18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return result;
}

void __swiftcall _UISplitViewControllerAdaptivePanelLayout.init()(_UISplitViewControllerAdaptivePanelLayout *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for _UISplitViewControllerAdaptivePanelLayout()
{
  result = qword_1EA9347D8;
  if (!qword_1EA9347D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9347D8);
  }

  return result;
}

uint64_t sub_188E65058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9347E0, &qword_18A64BE78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64C6E0;
  *(inited + 32) = xmmword_18A64C520;
  *(inited + 48) = 2;
  if (qword_1EA930920 != -1)
  {
    swift_once();
  }

  *(inited + 56) = qword_1EA930928;
  v1 = sub_188FBFCE8(inited);
  result = swift_setDeallocating();
  off_1EA9308F0 = v1;
  return result;
}

void sub_188E65110(__n128 a1)
{
  if (qword_1EA9308E0 != -1)
  {
    swift_once();
  }

  v1 = off_1EA9308F0;
  v2 = *(off_1EA9308F0 + 2);
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = sub_1890BA2BC(*(off_1EA9308F0 + 2), 0);
  v4 = sub_1890B9CC0(&v6, v3 + 4, v2, v1);
  v5 = v6;

  sub_188E036A4(v5);
  if (v4 != v2)
  {
    __break(1u);
LABEL_6:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;
  sub_188E65230(&v6);
  off_1EA930908 = v6;
}

void sub_188E65230(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18917F074(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_188E65424(v4);
  *a1 = v2;
}

void sub_188E6529C(char **a1, uint64_t *a2, char *a3)
{
  v6 = a1;
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_18917F074(v7);
  }

  v8 = *(v7 + 2);
  v9 = (v7 + 32);
  v25[0] = (v7 + 32);
  v25[1] = v8;
  v10 = sub_18A4A85F8();
  if (v10 >= v8)
  {
    if (v8 >= 2)
    {
      v14 = -1;
      v15 = 1;
      v16 = v7 + 32;
      v23 = v6;
      while (2)
      {
        v17 = *&v16[8 * v15];
        v18 = v14;
        v19 = v9;
        do
        {
          v24[0] = v17;
          v26 = *v19;
          v20 = sub_188E64930(v24, &v26, a2, a3);
          if (v3)
          {
            v6 = v23;
            goto LABEL_18;
          }

          if ((v20 & 1) == 0)
          {
            break;
          }

          v21 = *v19;
          v17 = v19[1];
          *v19 = v17;
          v19[1] = v21;
          --v19;
        }

        while (!__CFADD__(v18++, 1));
        ++v15;
        ++v9;
        --v14;
        v16 = v7 + 32;
        v6 = v23;
        if (v15 != v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v11 = v10;
    v12 = (v8 >> 1);
    if (v8 >= 2)
    {
      type metadata accessor for Column(0);
      v13 = sub_18A4A75D8();
      *(v13 + 16) = v12;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v24[0] = (v13 + 32);
    v24[1] = v12;
    sub_188E65F74(v24, &v26, v25, v11, a2, a3);
    *(v13 + 16) = 0;
  }

LABEL_18:
  *v6 = v7;
}

void sub_188E65424(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_18A4A85F8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Column(0);
        v5 = sub_18A4A75D8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_188E656D4(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_188E65520(0, v2, 1, a1);
  }
}

uint64_t sub_188E65520(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (v7)
      {
        if (v7 == 1)
        {
          v11 = 2;
          if (v10 == 1)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (qword_1EA930920 != -1)
          {
            v16 = a2;
            v14 = a3;
            result = swift_once();
            a2 = v16;
            a3 = v14;
          }

          if (qword_1EA930928 == v7)
          {
            v11 = 3;
          }

          else
          {
            v11 = 4 * (v7 == 2);
          }

          if (v10 == 1)
          {
LABEL_20:
            if (v11 <= 2)
            {
              goto LABEL_4;
            }

            goto LABEL_29;
          }
        }
      }

      else
      {
        v11 = 1;
        if (v10 == 1)
        {
          goto LABEL_20;
        }
      }

      if (v10)
      {
        if (qword_1EA930920 != -1)
        {
          v17 = a2;
          v15 = a3;
          result = swift_once();
          a2 = v17;
          a3 = v15;
        }

        if (qword_1EA930928 == v10)
        {
          if (v11 <= 3)
          {
            goto LABEL_4;
          }
        }

        else if (v10 == 2 || !v11)
        {
LABEL_4:
          ++a3;
          v5 += 8;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v11 <= 1)
      {
        goto LABEL_4;
      }

LABEL_29:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v12 = *v9;
      v7 = v9[1];
      *v9 = v7;
      v9[1] = v12;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void sub_188E656D4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_161:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_200;
    }

    v5 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_163:
      v89 = v9 + 16;
      v90 = *(v9 + 2);
      if (v90 >= 2)
      {
        while (*a3)
        {
          v91 = &v9[16 * v90];
          v92 = *v91;
          v93 = &v89[2 * v90];
          v94 = v93[1];
          sub_188E6697C((*a3 + 8 * *v91), (*a3 + 8 * *v93), (*a3 + 8 * v94), v8);
          if (v5)
          {
            goto LABEL_170;
          }

          if (v94 < v92)
          {
            goto LABEL_186;
          }

          if (v90 - 2 >= *v89)
          {
            goto LABEL_187;
          }

          *v91 = v92;
          *(v91 + 1) = v94;
          v95 = *v89 - v90;
          if (*v89 < v90)
          {
            goto LABEL_188;
          }

          v90 = *v89 - 1;
          memmove(v93, v93 + 2, 16 * v95);
          *v89 = v90;
          if (v90 <= 1)
          {
            goto LABEL_170;
          }
        }

        goto LABEL_198;
      }

LABEL_170:

      return;
    }

LABEL_194:
    v9 = sub_18917EF5C(v9);
    goto LABEL_163;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &unk_1EA930000;
  v11 = &unk_1EA930000;
  while (2)
  {
    v12 = v8++;
    if (v8 >= v7)
    {
      goto LABEL_70;
    }

    v13 = *a3;
    v14 = *(*a3 + 8 * v8);
    v15 = *(*a3 + 8 * v12);
    if (v14)
    {
      if (v14 == 1)
      {
        v5 = 2;
        if (v15)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (v10[292] != -1)
        {
          swift_once();
          v11 = &unk_1EA930000;
          v10 = &unk_1EA930000;
        }

        if (v11[293] == v14)
        {
          v5 = 3;
        }

        else
        {
          v5 = 4 * (v14 == 2);
        }

        if (v15)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v5 = 1;
      if (v15)
      {
LABEL_8:
        if (v15 == 1)
        {
          v16 = 2;
        }

        else
        {
          if (v10[292] != -1)
          {
            swift_once();
            v11 = &unk_1EA930000;
            v10 = &unk_1EA930000;
          }

          if (v11[293] == v15)
          {
            v16 = 3;
          }

          else
          {
            v16 = 4 * (v15 == 2);
          }
        }

        goto LABEL_24;
      }
    }

    v16 = 1;
LABEL_24:
    v8 = v12 + 2;
    if (v12 + 2 >= v7)
    {
      goto LABEL_60;
    }

    v99 = v12;
    v17 = (v13 + 8 * v12 + 16);
    do
    {
      v22 = *(v17 - 1);
      v21 = *v17;
      if (*v17)
      {
        if (v21 == 1)
        {
          v23 = 2;
          if (v22 == 1)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (v10[292] != -1)
          {
            swift_once();
            v11 = &unk_1EA930000;
            v10 = &unk_1EA930000;
          }

          if (v11[293] == v21)
          {
            v23 = 3;
          }

          else
          {
            v23 = 4 * (v21 == 2);
          }

          if (v22 == 1)
          {
LABEL_26:
            v18 = v16 < v5;
            v19 = v23 >= 3;
            goto LABEL_27;
          }
        }
      }

      else
      {
        v23 = 1;
        if (v22 == 1)
        {
          goto LABEL_26;
        }
      }

      if (!v22)
      {
        v18 = v16 < v5;
        v19 = v23 >= 2;
        goto LABEL_27;
      }

      if (v10[292] != -1)
      {
        swift_once();
        v11 = &unk_1EA930000;
        v10 = &unk_1EA930000;
      }

      if (v11[293] == v22)
      {
        v18 = v16 < v5;
        v19 = v23 >= 4;
LABEL_27:
        v20 = !v19;
        if (((v18 ^ v20) & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_31;
      }

      v25 = v22 == 2 || v23 == 0;
      if ((((v16 < v5) ^ v25) & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_31:
      ++v17;
      ++v8;
    }

    while (v7 != v8);
    v8 = v7;
LABEL_59:
    v12 = v99;
LABEL_60:
    if (v16 < v5)
    {
      if (v8 < v12)
      {
        goto LABEL_191;
      }

      if (v12 < v8)
      {
        v26 = v8 - 1;
        v27 = v12;
        do
        {
          if (v27 != v26)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_197;
            }

            v28 = *(v30 + 8 * v27);
            *(v30 + 8 * v27) = *(v30 + 8 * v26);
            *(v30 + 8 * v26) = v28;
          }
        }

        while (++v27 < v26--);
      }
    }

LABEL_70:
    v31 = a3[1];
    if (v8 >= v31)
    {
      goto LABEL_110;
    }

    if (__OFSUB__(v8, v12))
    {
      goto LABEL_190;
    }

    if (v8 - v12 >= a4)
    {
      goto LABEL_110;
    }

    if (__OFADD__(v12, a4))
    {
      goto LABEL_192;
    }

    if (v12 + a4 >= v31)
    {
      v32 = a3[1];
    }

    else
    {
      v32 = v12 + a4;
    }

    if (v32 < v12)
    {
LABEL_193:
      __break(1u);
      goto LABEL_194;
    }

    if (v8 == v32)
    {
LABEL_110:
      if (v8 < v12)
      {
        goto LABEL_189;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_188E4B688(0, *(v9 + 2) + 1, 1, v9);
      }

      v43 = *(v9 + 2);
      v42 = *(v9 + 3);
      v5 = v43 + 1;
      v10 = &unk_1EA930000;
      v11 = &unk_1EA930000;
      if (v43 >= v42 >> 1)
      {
        v88 = sub_188E4B688((v42 > 1), v43 + 1, 1, v9);
        v11 = &unk_1EA930000;
        v10 = &unk_1EA930000;
        v9 = v88;
      }

      *(v9 + 2) = v5;
      v44 = &v9[16 * v43];
      *(v44 + 4) = v12;
      *(v44 + 5) = v8;
      v45 = *a1;
      if (!*a1)
      {
        goto LABEL_199;
      }

      if (!v43)
      {
LABEL_3:
        v7 = a3[1];
        if (v8 >= v7)
        {
          goto LABEL_161;
        }

        continue;
      }

      while (1)
      {
        v46 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v47 = *(v9 + 4);
          v48 = *(v9 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_130:
          if (v50)
          {
            goto LABEL_177;
          }

          v63 = &v9[16 * v5];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_180;
          }

          v69 = &v9[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_183;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_184;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v5 - 2;
            }

            goto LABEL_151;
          }

          goto LABEL_144;
        }

        v73 = &v9[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_144:
        if (v68)
        {
          goto LABEL_179;
        }

        v76 = &v9[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_182;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_151:
        v84 = v46 - 1;
        if (v46 - 1 >= v5)
        {
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        if (!*a3)
        {
          goto LABEL_196;
        }

        v85 = *&v9[16 * v84 + 32];
        v86 = *&v9[16 * v46 + 40];
        sub_188E6697C((*a3 + 8 * v85), (*a3 + 8 * *&v9[16 * v46 + 32]), (*a3 + 8 * v86), v45);
        if (v6)
        {
          goto LABEL_170;
        }

        if (v86 < v85)
        {
          goto LABEL_173;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_18917EF5C(v9);
        }

        if (v84 >= *(v9 + 2))
        {
          goto LABEL_174;
        }

        v87 = &v9[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        sub_18917EED0(v46);
        v5 = *(v9 + 2);
        v10 = &unk_1EA930000;
        v11 = &unk_1EA930000;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v9[16 * v5 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_175;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_176;
      }

      v58 = &v9[16 * v5];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_178;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_181;
      }

      if (v62 >= v54)
      {
        v80 = &v9[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_185;
        }

        if (v49 < v83)
        {
          v46 = v5 - 2;
        }

        goto LABEL_151;
      }

      goto LABEL_130;
    }

    break;
  }

  v33 = *a3;
  v34 = v12;
  v35 = *a3 + 8 * v8 - 8;
  v98 = v6;
  v100 = v34;
  v36 = v34 - v8;
  while (2)
  {
    v37 = *(v33 + 8 * v8);
    v38 = v36;
    v5 = v35;
LABEL_82:
    v39 = *v5;
    if (!v37)
    {
      v40 = 1;
      if (v39 != 1)
      {
        goto LABEL_85;
      }

      goto LABEL_89;
    }

    if (v37 != 1)
    {
      if (v10[292] != -1)
      {
        v96 = v32;
        swift_once();
        v32 = v96;
        v11 = &unk_1EA930000;
        v10 = &unk_1EA930000;
      }

      if (v11[293] == v37)
      {
        v40 = 3;
      }

      else
      {
        v40 = 4 * (v37 == 2);
      }

      if (v39 != 1)
      {
        goto LABEL_85;
      }

      goto LABEL_89;
    }

    v40 = 2;
    if (v39 == 1)
    {
LABEL_89:
      if (v40 <= 2)
      {
        goto LABEL_80;
      }

      break;
    }

LABEL_85:
    if (v39)
    {
      if (v10[292] != -1)
      {
        v97 = v32;
        swift_once();
        v32 = v97;
        v11 = &unk_1EA930000;
        v10 = &unk_1EA930000;
      }

      if (v11[293] != v39)
      {
        if (v39 != 2 && v40)
        {
          break;
        }

LABEL_80:
        ++v8;
        v35 += 8;
        --v36;
        if (v8 == v32)
        {
          v8 = v32;
          v6 = v98;
          v12 = v100;
          goto LABEL_110;
        }

        continue;
      }

      if (v40 <= 3)
      {
        goto LABEL_80;
      }
    }

    else if (v40 <= 1)
    {
      goto LABEL_80;
    }

    break;
  }

  if (v33)
  {
    v41 = *v5;
    v37 = *(v5 + 8);
    *v5 = v37;
    *(v5 + 8) = v41;
    v5 -= 8;
    v19 = __CFADD__(v38++, 1);
    if (v19)
    {
      goto LABEL_80;
    }

    goto LABEL_82;
  }

  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
}

void sub_188E65F74(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char *a6)
{
  v10 = a1;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_150:
    v20 = *v10;
    if (*v10)
    {
      v7 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_152;
    }

    goto LABEL_189;
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v14 = v12 + 1;
    v97 = v12;
    if (v12 + 1 >= v11)
    {
      v20 = v10;
    }

    else
    {
      v15 = *a3;
      *&__dst = *(*a3 + 8 * v14);
      *&v124 = *(v15 + 8 * v12);
      v16 = sub_188E64930(&__dst, &v124, a5, a6);
      if (v6)
      {
        goto LABEL_160;
      }

      v17 = v16;
      v18 = v13;
      v19 = v12 + 2;
      v7 = (v15 + 8 * v12 + 16);
      v20 = v10;
      while (v11 != v19)
      {
        *&__dst = *v7;
        *&v124 = *(v7 - 1);
        ++v19;
        v7 += 8;
        if ((v17 ^ sub_188E64930(&__dst, &v124, a5, a6)))
        {
          v11 = v19 - 1;
          break;
        }
      }

      v13 = v18;
      if (v17)
      {
        v21 = v97;
        if (v11 < v97)
        {
          goto LABEL_183;
        }

        a4 = v96;
        if (v97 < v11)
        {
          v22 = v11 - 1;
          do
          {
            if (v21 != v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_187;
              }

              v25 = *(v24 + 8 * v21);
              *(v24 + 8 * v21) = *(v24 + 8 * v22);
              *(v24 + 8 * v22) = v25;
            }
          }

          while (++v21 < v22--);
        }

        v14 = v11;
      }

      else
      {
        v14 = v11;
        a4 = v96;
      }
    }

    v26 = a3[1];
    if (v14 >= v26)
    {
      goto LABEL_97;
    }

    if (__OFSUB__(v14, v97))
    {
      goto LABEL_179;
    }

    if (v14 - v97 >= a4)
    {
LABEL_97:
      v28 = v97;
      goto LABEL_98;
    }

    v27 = v97 + a4;
    if (__OFADD__(v97, a4))
    {
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      sub_18A4A8398();
      __break(1u);
      return;
    }

    v28 = v97;
    if (v27 >= v26)
    {
      v27 = a3[1];
    }

    if (v27 < v97)
    {
      goto LABEL_182;
    }

    if (v14 != v27)
    {
      v94 = v13;
      v29 = *a3;
      v30 = (*a3 + 8 * v14 - 8);
      v31 = v97 - v14 + 1;
      v98 = v27;
      while (1)
      {
        v100 = v30;
        v101 = v14;
        v99 = v31;
        while (1)
        {
          v33 = v30->i64[0];
          v32 = v30->i64[1];
          v34 = *a5;
          if (*(*a5 + 16) && (v35 = sub_188B85570(v30->i64[1]), (v36 & 1) != 0))
          {
            memmove(&__dst, (*(v34 + 56) + 160 * v35), 0xA0uLL);
            signpost_c2_entryLock_start();
          }

          else
          {
            sub_188E67E20(&v124);
            v140 = v130;
            v141 = v131;
            v142 = v132;
            v143 = v133;
            v136 = v126;
            v137 = v127;
            v138 = v128;
            v139 = v129;
            __dst = v124;
            v135 = v125;
          }

          v130 = v140;
          v131 = v141;
          v132 = v142;
          v133 = v143;
          v126 = v136;
          v127 = v137;
          v128 = v138;
          v129 = v139;
          v124 = __dst;
          v125 = v135;
          if (sub_188E036AC(&v124) == 1)
          {
            goto LABEL_190;
          }

          v7 = *(&v142 + 1);
          v37 = *a5;
          if (*(*a5 + 16) && (v38 = sub_188B85570(v33), (v39 & 1) != 0))
          {
            memmove(&v114, (*(v37 + 56) + 160 * v38), 0xA0uLL);
            signpost_c2_entryLock_start();
          }

          else
          {
            sub_188E67E20(&v104);
            v120 = v110;
            v121 = v111;
            v122 = v112;
            v123 = v113;
            v116 = v106;
            v117 = v107;
            v118 = v108;
            v119 = v109;
            v114 = v104;
            v115 = v105;
          }

          v110 = v120;
          v111 = v121;
          v112 = v122;
          v113 = v123;
          v106 = v116;
          v107 = v117;
          v108 = v118;
          v109 = v119;
          v104 = v114;
          v105 = v115;
          if (sub_188E036AC(&v104) == 1)
          {
            goto LABEL_190;
          }

          if (v7 != a6 || v7 == *(&v122 + 1))
          {
            if (*(&v122 + 1) == a6 && v7 != *(&v122 + 1))
            {
              break;
            }

            if (v7 == a6)
            {
              if (v32)
              {
                if (v32 == 1)
                {
                  v41 = 2;
                  if (!v33)
                  {
                    goto LABEL_88;
                  }
                }

                else
                {
                  if (qword_1EA930920 != -1)
                  {
                    swift_once();
                  }

                  if (qword_1EA930928 == v32)
                  {
                    v41 = 3;
                    if (!v33)
                    {
                      goto LABEL_88;
                    }
                  }

                  else
                  {
                    v41 = 4 * (v32 == 2);
                    if (!v33)
                    {
LABEL_88:
                      if (v41)
                      {
                        break;
                      }

                      goto LABEL_93;
                    }
                  }
                }
              }

              else
              {
                v41 = 1;
                if (!v33)
                {
                  goto LABEL_88;
                }
              }

              if (v33 == 1)
              {
                if (v41 >= 2)
                {
                  break;
                }
              }

              else
              {
                if (qword_1EA930920 != -1)
                {
                  swift_once();
                }

                if (qword_1EA930928 == v33)
                {
                  if (v41 >= 3)
                  {
                    break;
                  }
                }

                else if (v41 >= 4 * (v33 == 2))
                {
                  break;
                }
              }
            }

            else
            {
              if (v32)
              {
                if (v32 == 1)
                {
                  v40 = 2;
                  if (!v33)
                  {
                    goto LABEL_85;
                  }
                }

                else
                {
                  if (qword_1EA930920 != -1)
                  {
                    swift_once();
                  }

                  if (qword_1EA930928 == v32)
                  {
                    v40 = 3;
                    if (!v33)
                    {
                      goto LABEL_85;
                    }
                  }

                  else
                  {
                    v40 = 4 * (v32 == 2);
                    if (!v33)
                    {
LABEL_85:
                      if (v40 <= 1)
                      {
                        break;
                      }

                      goto LABEL_93;
                    }
                  }
                }
              }

              else
              {
                v40 = 1;
                if (!v33)
                {
                  goto LABEL_85;
                }
              }

              if (v33 == 1)
              {
                if (v40 <= 2)
                {
                  break;
                }
              }

              else
              {
                if (qword_1EA930920 != -1)
                {
                  swift_once();
                }

                if (qword_1EA930928 == v33)
                {
                  if (v40 <= 3)
                  {
                    break;
                  }
                }

                else if (4 * (v33 == 2) >= v40)
                {
                  break;
                }
              }
            }
          }

LABEL_93:
          if (!v29)
          {
            goto LABEL_184;
          }

          *v30 = vextq_s8(*v30, *v30, 8uLL);
          if (!v31)
          {
            break;
          }

          v30 = (v30 - 8);
          ++v31;
        }

        v14 = v101 + 1;
        v30 = &v100->u64[1];
        v31 = v99 - 1;
        if (v101 + 1 == v98)
        {
          v14 = v98;
          v13 = v94;
          v20 = a1;
          goto LABEL_97;
        }
      }
    }

LABEL_98:
    if (v14 < v28)
    {
      goto LABEL_178;
    }

    v7 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_188E4B688(0, *(v13 + 16) + 1, 1, v13);
    }

    v43 = *(v7 + 2);
    v42 = *(v7 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      v13 = sub_188E4B688((v42 > 1), v43 + 1, 1, v7);
    }

    else
    {
      v13 = v7;
    }

    *(v13 + 16) = v44;
    v45 = v13 + 16 * v43;
    *(v45 + 32) = v28;
    *(v45 + 40) = v14;
    v102 = v14;
    v46 = *v20;
    if (!*v20)
    {
      goto LABEL_188;
    }

    if (v43)
    {
      break;
    }

LABEL_3:
    v12 = v102;
    v11 = a3[1];
    v10 = a1;
    a4 = v96;
    if (v102 >= v11)
    {
      goto LABEL_150;
    }
  }

  while (1)
  {
    v47 = v44 - 1;
    if (v44 >= 4)
    {
      v52 = v13 + 32 + 16 * v44;
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_165;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_166;
      }

      v59 = (v13 + 16 * v44);
      v61 = *v59;
      v60 = v59[1];
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_168;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_171;
      }

      if (v63 >= v55)
      {
        v81 = (v13 + 32 + 16 * v47);
        v83 = *v81;
        v82 = v81[1];
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_177;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_139;
      }

      goto LABEL_118;
    }

    if (v44 == 3)
    {
      v48 = *(v13 + 32);
      v49 = *(v13 + 40);
      v58 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      v51 = v58;
LABEL_118:
      if (v51)
      {
        goto LABEL_167;
      }

      v64 = (v13 + 16 * v44);
      v66 = *v64;
      v65 = v64[1];
      v67 = __OFSUB__(v65, v66);
      v68 = v65 - v66;
      v69 = v67;
      if (v67)
      {
        goto LABEL_170;
      }

      v70 = (v13 + 32 + 16 * v47);
      v72 = *v70;
      v71 = v70[1];
      v58 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v58)
      {
        goto LABEL_173;
      }

      if (__OFADD__(v68, v73))
      {
        goto LABEL_174;
      }

      if (v68 + v73 >= v50)
      {
        if (v50 < v73)
        {
          v47 = v44 - 2;
        }

        goto LABEL_139;
      }

      goto LABEL_132;
    }

    v74 = (v13 + 16 * v44);
    v76 = *v74;
    v75 = v74[1];
    v58 = __OFSUB__(v75, v76);
    v68 = v75 - v76;
    v69 = v58;
LABEL_132:
    if (v69)
    {
      goto LABEL_169;
    }

    v77 = v13 + 16 * v47;
    v79 = *(v77 + 32);
    v78 = *(v77 + 40);
    v58 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if (v58)
    {
      goto LABEL_172;
    }

    if (v80 < v68)
    {
      goto LABEL_3;
    }

LABEL_139:
    v85 = v47 - 1;
    if (v47 - 1 >= v44)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_185;
    }

    v20 = v13;
    v86 = *(v13 + 32 + 16 * v85);
    v87 = *(v13 + 32 + 16 * v47);
    v13 = *(v13 + 32 + 16 * v47 + 8);
    sub_188E66D90((*a3 + 8 * v86), (*a3 + 8 * v87), (*a3 + 8 * v13), v46, a5, a6);
    if (v6)
    {
      goto LABEL_160;
    }

    if (v13 < v86)
    {
      goto LABEL_163;
    }

    v7 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_18917EF5C(v20);
    }

    if (v85 >= *(v20 + 2))
    {
      goto LABEL_164;
    }

    v88 = &v20[16 * v85];
    *(v88 + 4) = v86;
    *(v88 + 5) = v13;
    v144 = v20;
    sub_18917EED0(v47);
    v13 = v144;
    v44 = *(v144 + 16);
    if (v44 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  v13 = sub_18917EF5C(v13);
LABEL_152:
  v144 = v13;
  v89 = *(v13 + 16);
  if (v89 >= 2)
  {
    while (*a3)
    {
      v90 = *(v13 + 16 * v89);
      v91 = v13;
      v92 = *(v13 + 16 * (v89 - 1) + 32);
      v13 = *(v13 + 16 * (v89 - 1) + 40);
      sub_188E66D90((*a3 + 8 * v90), (*a3 + 8 * v92), (*a3 + 8 * v13), v20, a5, a6);
      if (v7)
      {
        goto LABEL_160;
      }

      if (v13 < v90)
      {
        goto LABEL_175;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_18917EF5C(v91);
      }

      if (v89 - 2 >= *(v91 + 2))
      {
        goto LABEL_176;
      }

      v93 = &v91[16 * v89];
      *v93 = v90;
      *(v93 + 1) = v13;
      v144 = v91;
      sub_18917EED0(v89 - 1);
      v13 = v144;
      v89 = *(v144 + 16);
      if (v89 <= 1)
      {
        goto LABEL_160;
      }
    }

    goto LABEL_186;
  }

LABEL_160:
}

uint64_t sub_188E6697C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_83;
    }

    while (1)
    {
      v15 = *v6;
      v16 = *v4;
      if (*v6)
      {
        if (v15 == 1)
        {
          v17 = 2;
          if (v16 == 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (qword_1EA930920 != -1)
          {
            swift_once();
          }

          if (qword_1EA930928 == v15)
          {
            v17 = 3;
          }

          else
          {
            v17 = 4 * (v15 == 2);
          }

          if (v16 == 1)
          {
LABEL_18:
            if (v17 <= 2)
            {
              goto LABEL_37;
            }

            goto LABEL_34;
          }
        }
      }

      else
      {
        v17 = 1;
        if (v16 == 1)
        {
          goto LABEL_18;
        }
      }

      if (v16)
      {
        if (qword_1EA930920 != -1)
        {
          swift_once();
        }

        if (qword_1EA930928 == v16)
        {
          if (v17 <= 3)
          {
            goto LABEL_37;
          }
        }

        else if (v16 == 2 || !v17)
        {
LABEL_37:
          v18 = v4;
          v19 = v7 == v4;
          v4 += 8;
          if (v19)
          {
            goto LABEL_39;
          }

LABEL_38:
          *v7 = *v18;
          goto LABEL_39;
        }
      }

      else if (v17 <= 1)
      {
        goto LABEL_37;
      }

LABEL_34:
      v18 = v6;
      v19 = v7 == v6;
      v6 += 8;
      if (!v19)
      {
        goto LABEL_38;
      }

LABEL_39:
      v7 += 8;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_83;
      }
    }
  }

  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    v20 = &unk_1EA930000;
    v21 = &unk_1EA930000;
    while (1)
    {
      v22 = v6 - 8;
      v5 -= 8;
      v23 = v14;
      while (1)
      {
        v25 = *(v23 - 1);
        v23 -= 8;
        v24 = v25;
        v26 = *v22;
        if (v25)
        {
          if (v24 == 1)
          {
            v27 = 2;
            if (v26 == 1)
            {
              goto LABEL_57;
            }
          }

          else
          {
            if (v20[292] != -1)
            {
              swift_once();
              v21 = &unk_1EA930000;
              v20 = &unk_1EA930000;
            }

            if (v21[293] == v24)
            {
              v27 = 3;
            }

            else
            {
              v27 = 4 * (v24 == 2);
            }

            if (v26 == 1)
            {
LABEL_57:
              if (v27 > 2)
              {
                goto LABEL_75;
              }

              goto LABEL_73;
            }
          }
        }

        else
        {
          v27 = 1;
          if (v26 == 1)
          {
            goto LABEL_57;
          }
        }

        if (!v26)
        {
          if (v27 > 1)
          {
            goto LABEL_75;
          }

          goto LABEL_73;
        }

        if (v20[292] != -1)
        {
          swift_once();
          v21 = &unk_1EA930000;
          v20 = &unk_1EA930000;
        }

        if (v21[293] != v26)
        {
          break;
        }

        if (v27 > 3)
        {
          goto LABEL_75;
        }

LABEL_73:
        if (v5 + 8 != v14)
        {
          *v5 = *v23;
        }

        v5 -= 8;
        v14 = v23;
        if (v23 <= v4)
        {
          v14 = v23;
          goto LABEL_83;
        }
      }

      if (v26 == 2 || !v27)
      {
        goto LABEL_73;
      }

LABEL_75:
      if (v5 + 8 != v6)
      {
        *v5 = *v22;
      }

      if (v14 > v4)
      {
        v6 -= 8;
        if (v22 > v7)
        {
          continue;
        }
      }

      v6 = v22;
      break;
    }
  }

LABEL_83:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_188E66D90(char *__src, char *a2, char *a3, char *__dst, uint64_t *a5, uint64_t a6)
{
  v8 = __dst;
  v9 = a3;
  v10 = a2;
  v11 = __src;
  v12 = a2 - __src;
  v13 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v13 = a2 - __src;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v14 < v16 >> 3)
  {
    if (__dst != __src || &__src[8 * v14] <= __dst)
    {
      memmove(__dst, __src, 8 * v14);
    }

    v18 = &v8[8 * v14];
    if (v12 < 8)
    {
LABEL_10:
      v10 = v11;
LABEL_47:
      v29 = v18 - v8 + 7;
      if (v18 - v8 >= 0)
      {
        v29 = v18 - v8;
      }

      goto LABEL_49;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_10;
      }

      v36 = *v10;
      v35 = *v8;
      v21 = sub_188E64930(&v36, &v35, a5, a6);
      if (v6)
      {
        v30 = v18 - v8 + 7;
        if (v18 - v8 >= 0)
        {
          v30 = v18 - v8;
        }

        if (v11 < v8 || v11 >= &v8[v30 & 0xFFFFFFFFFFFFFFF8] || v11 != v8)
        {
          v31 = 8 * (v30 >> 3);
          v32 = v11;
          goto LABEL_53;
        }

        return 1;
      }

      if (v21)
      {
        break;
      }

      v19 = v8;
      v20 = v11 == v8;
      v8 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v11 += 8;
      if (v8 >= v18)
      {
        goto LABEL_10;
      }
    }

    v19 = v10;
    v20 = v11 == v10++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v11 = *v19;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[8 * v17] <= __dst)
  {
    memmove(__dst, a2, 8 * v17);
  }

  v18 = &v8[8 * v17];
  if (v15 < 8 || v10 <= v11)
  {
    goto LABEL_47;
  }

  v22 = -v8;
LABEL_26:
  v23 = v10 - 1;
  v24 = v18 + v22;
  v9 -= 8;
  v25 = v18;
  while (1)
  {
    v26 = *(v25 - 1);
    v25 -= 8;
    v36 = v26;
    v35 = *v23;
    v27 = sub_188E64930(&v36, &v35, a5, a6);
    if (v6)
    {
      break;
    }

    v28 = (v9 + 8);
    if (v27)
    {
      if (v28 != v10)
      {
        *v9 = *v23;
      }

      if (v18 <= v8 || (--v10, v22 = -v8, v23 <= v11))
      {
        v10 = v23;
        goto LABEL_47;
      }

      goto LABEL_26;
    }

    if (v28 != v18)
    {
      *v9 = *v25;
    }

    v24 -= 8;
    v9 -= 8;
    v18 = v25;
    if (v25 <= v8)
    {
      v18 = v25;
      goto LABEL_47;
    }
  }

  if (v24 >= 0)
  {
    v29 = v24;
  }

  else
  {
    v29 = v24 + 7;
  }

LABEL_49:
  if (v10 < v8 || v10 >= &v8[v29 & 0xFFFFFFFFFFFFFFF8] || v10 != v8)
  {
    v31 = 8 * (v29 >> 3);
    v32 = v10;
LABEL_53:
    memmove(v32, v8, v31);
  }

  return 1;
}