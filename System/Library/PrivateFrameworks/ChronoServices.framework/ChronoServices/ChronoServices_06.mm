void sub_195F86B38(double a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + 104) + 16));
  swift_beginAccess();
  if (*(v1 + 72) == 1 && sub_195F860F0() != a1)
  {
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    swift_dynamicCast();
    if (v10)
    {
      sub_195F2E09C(&v9, &v12);
      v3 = *(v1 + 16);
      __swift_project_boxed_opaque_existential_1(&v12, v13);
      v4 = v3;
      v5 = sub_195FA12A8();

      v6 = sub_195FA0888();

      [v4 setObject:v5 forKey:v6];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(&v12);
    }

    else
    {
      sub_195EB7914(&v9);
      v7 = *(v1 + 16);

      v8 = sub_195FA0888();

      [v7 removeObjectForKey_];
    }
  }
}

void sub_195F86CCC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_assert_owner(*(*(v2 + 120) + 16));
  swift_beginAccess();
  if (*(v2 + 80) == 1)
  {
    v5 = sub_195F86230();
    if (!a2)
    {
      if (!v6)
      {
        return;
      }

      goto LABEL_10;
    }

    if (!v6)
    {
      goto LABEL_10;
    }

    if (v5 == a1 && v6 == a2)
    {

      return;
    }

    v7 = sub_195FA12B8();

    if ((v7 & 1) == 0)
    {
LABEL_10:
      v16 = a1;
      v17 = a2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE590, &qword_195FB0428);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
      swift_dynamicCast();
      if (v15)
      {
        sub_195F2E09C(&v14, &v18);
        v8 = *(v2 + 16);
        __swift_project_boxed_opaque_existential_1(&v18, v19);
        v9 = v8;
        v10 = sub_195FA12A8();

        v11 = sub_195FA0888();

        [v9 setObject:v10 forKey:v11];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm(&v18);
      }

      else
      {
        sub_195EB7914(&v14);
        v12 = *(v2 + 16);

        v13 = sub_195FA0888();

        [v12 removeObjectForKey_];
      }
    }
  }
}

void sub_195F86ED8(float a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + 96) + 16));
  swift_beginAccess();
  if (*(v1 + 64) == 1 && sub_195F863AC() != a1)
  {
    v11 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
    swift_dynamicCast();
    if (v10)
    {
      sub_195F2E09C(&v9, &v12);
      v3 = *(v1 + 16);
      __swift_project_boxed_opaque_existential_1(&v12, v13);
      v4 = v3;
      v5 = sub_195FA12A8();

      v6 = sub_195FA0888();

      [v4 setObject:v5 forKey:v6];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(&v12);
    }

    else
    {
      sub_195EB7914(&v9);
      v7 = *(v1 + 16);

      v8 = sub_195FA0888();

      [v7 removeObjectForKey_];
    }
  }
}

void sub_195F8706C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  os_unfair_lock_assert_owner(*(*(v4 + 104) + 16));
  swift_beginAccess();
  if (!*(v4 + 64))
  {
    v9 = sub_195F864E8(a2, a3);
    v10 = a4(a1, v9);

    if ((v10 & 1) == 0)
    {
      v19 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
      swift_dynamicCast();
      if (v18)
      {
        sub_195F2E09C(&v17, &v20);
        v11 = *(v4 + 16);
        __swift_project_boxed_opaque_existential_1(&v20, v21);
        v12 = v11;
        v13 = sub_195FA12A8();

        v14 = sub_195FA0888();

        [v12 setObject:v13 forKey:v14];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm(&v20);
      }

      else
      {
        sub_195EB7914(&v17);
        v15 = *(v4 + 16);

        v16 = sub_195FA0888();

        [v15 removeObjectForKey_];
      }
    }
  }
}

void sub_195F87240()
{
  type metadata accessor for Preferences();
  swift_allocObject();
  sub_195F8A2B4();
  qword_1EAEEC108 = v0;
}

uint64_t static Preferences.shared.getter()
{
  if (qword_1EAEEC100 != -1)
  {
    swift_once();
  }
}

uint64_t sub_195F872D8()
{
  v1 = *(*(v0 + 16) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87344(int a1)
{
  v3 = *(*(v1 + 16) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F873C8()
{
  v1 = *(*(v0 + 24) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87434(int a1)
{
  v3 = *(*(v1 + 24) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F874B8()
{
  v1 = *(*(v0 + 32) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87524(int a1)
{
  v3 = *(*(v1 + 32) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F875A8()
{
  v1 = *(*(v0 + 40) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87614(int a1)
{
  v3 = *(*(v1 + 40) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t (*sub_195F8768C(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 40);

  *(v4 + 40) = sub_195F85A9C(v4);
  return sub_195F87710;
}

uint64_t sub_195F87720()
{
  v1 = *(*(v0 + 48) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F8778C(int a1)
{
  v3 = *(*(v1 + 48) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t (*sub_195F87804(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 48);

  *(v4 + 40) = sub_195F85A9C(v4);
  return sub_195F8F7F8;
}

uint64_t sub_195F87894()
{
  v1 = *(*(v0 + 56) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87900(int a1)
{
  v3 = *(*(v1 + 56) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t (*sub_195F87978(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 56);

  *(v4 + 40) = sub_195F85A9C(v4);
  return sub_195F8F7F8;
}

uint64_t sub_195F87A08()
{
  v1 = *(*(v0 + 64) + 112);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F85E44();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F87A7C(uint64_t a1, char a2)
{
  v5 = *(*(v2 + 64) + 112);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_195F867E8(a1, a2 & 1);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_195F87B10()
{
  v1 = *(*(v0 + 72) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87B7C(int a1)
{
  v3 = *(*(v1 + 72) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t (*sub_195F87BF4(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 72);

  *(v4 + 40) = sub_195F85A9C(v4);
  return sub_195F8F7F8;
}

uint64_t sub_195F87C84()
{
  v1 = *(*(v0 + 80) + 104);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F85FAC();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F87CF0(uint64_t a1)
{
  v3 = *(*(v1 + 80) + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F869AC(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F87D74()
{
  v1 = *(*(v0 + 88) + 104);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F85FAC();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F87DE0(uint64_t a1)
{
  v3 = *(*(v1 + 88) + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F869AC(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

double sub_195F87E64()
{
  v1 = *(*(v0 + 96) + 104);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F860F0();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F87ED8(double a1)
{
  v3 = *(*(v1 + 96) + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86B38(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F87F64()
{
  v1 = *(*(v0 + 104) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F87FD0(int a1)
{
  v3 = *(*(v1 + 104) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88054()
{
  v1 = *(*(v0 + 112) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F880C0(int a1)
{
  v3 = *(*(v1 + 112) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88144()
{
  v1 = *(*(v0 + 120) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F881B0(int a1)
{
  v3 = *(*(v1 + 120) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88234()
{
  v1 = *(*(v0 + 128) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F882A0(int a1)
{
  v3 = *(*(v1 + 128) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88324()
{
  v1 = *(*(v0 + 136) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88390(int a1)
{
  v3 = *(*(v1 + 136) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88414()
{
  v1 = *(*(v0 + 144) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88480(int a1)
{
  v3 = *(*(v1 + 144) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88504()
{
  v1 = *(*(v0 + 152) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88570(int a1)
{
  v3 = *(*(v1 + 152) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F885F4()
{
  v1 = *(*(v0 + 160) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88660(int a1)
{
  v3 = *(*(v1 + 160) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F886E4()
{
  v1 = *(*(v0 + 168) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88750(int a1)
{
  v3 = *(*(v1 + 168) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F887D4()
{
  v1 = *(*(v0 + 176) + 112);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F85E44();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F88848(uint64_t a1, char a2)
{
  v5 = *(*(v2 + 176) + 112);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_195F867E8(a1, a2 & 1);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_195F888DC()
{
  v1 = *(*(v0 + 184) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88948(int a1)
{
  v3 = *(*(v1 + 184) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F889CC()
{
  v1 = *(*(v0 + 192) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88A38(int a1)
{
  v3 = *(*(v1 + 192) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88ABC()
{
  v1 = *(*(v0 + 200) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88B28(int a1)
{
  v3 = *(*(v1 + 200) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88BAC()
{
  v1 = *(*(v0 + 208) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88C18(int a1)
{
  v3 = *(*(v1 + 208) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88C9C()
{
  v1 = *(*(v0 + 216) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88D08(int a1)
{
  v3 = *(*(v1 + 216) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88D8C()
{
  v1 = *(*(v0 + 224) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88DF8(int a1)
{
  v3 = *(*(v1 + 224) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88E7C()
{
  v1 = *(*(v0 + 232) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88EE8(int a1)
{
  v3 = *(*(v1 + 232) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F88F6C()
{
  v1 = *(*(v0 + 240) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F88FD8(int a1)
{
  v3 = *(*(v1 + 240) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F8905C()
{
  v1 = *(*(v0 + 248) + 112);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F85E44();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F890D0(uint64_t a1, char a2)
{
  v5 = *(*(v2 + 248) + 112);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_195F867E8(a1, a2 & 1);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_195F89164()
{
  v1 = *(*(v0 + 256) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F891D0(int a1)
{
  v3 = *(*(v1 + 256) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89254()
{
  v1 = *(*(v0 + 264) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F892C0(int a1)
{
  v3 = *(*(v1 + 264) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89344()
{
  v1 = *(*(v0 + 272) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F893B0(int a1)
{
  v3 = *(*(v1 + 272) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89434()
{
  v1 = *(*(v0 + 280) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F894A0(int a1)
{
  v3 = *(*(v1 + 280) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89524()
{
  v1 = *(*(v0 + 288) + 120);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F86230();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F895A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  a5(v7, v6);
}

uint64_t sub_195F89600()
{
  v1 = *(*(v0 + 296) + 120);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F86230();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

float sub_195F89680()
{
  v1 = *(*(v0 + 304) + 96);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F863AC();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F896F4(float a1)
{
  v3 = *(*(v1 + 304) + 96);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86ED8(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

double sub_195F89780()
{
  v1 = *(*(v0 + 312) + 104);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F860F0();
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F897F4(double a1)
{
  v3 = *(*(v1 + 312) + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86B38(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89880()
{
  v1 = *(*(v0 + 320) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F898EC(int a1)
{
  v3 = *(*(v1 + 320) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89970()
{
  v1 = *(*(v0 + 328) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F899DC(int a1)
{
  v3 = *(*(v1 + 328) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89A60()
{
  v1 = *(*(v0 + 336) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F89ACC(int a1)
{
  v3 = *(*(v1 + 336) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89B50()
{
  v1 = *(*(v0 + 344) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F89BBC(int a1)
{
  v3 = *(*(v1 + 344) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89C40()
{
  v1 = *(*(v0 + 352) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F89CAC(int a1)
{
  v3 = *(*(v1 + 352) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t (*sub_195F89D24(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + 352);

  *(v4 + 40) = sub_195F85A9C(v4);
  return sub_195F8F7F8;
}

uint64_t sub_195F89DB4()
{
  v1 = *(*(v0 + 360) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F89E20(int a1)
{
  v3 = *(*(v1 + 360) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89EA4()
{
  v1 = *(*(v0 + 368) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F89F10(int a1)
{
  v3 = *(*(v1 + 368) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F89F94()
{
  v1 = *(*(v0 + 376) + 88);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  LOBYTE(v2) = sub_195F85D04();
  os_unfair_lock_unlock(*(v1 + 16));

  return v2 & 1;
}

uint64_t sub_195F8A000(int a1)
{
  v3 = *(*(v1 + 376) + 88);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F86658(a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F8A084()
{
  v1 = *(*(v0 + 384) + 104);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F864E8(&qword_1EAEEE598, &qword_195FB0430);
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t sub_195F8A100(uint64_t a1)
{
  sub_195F8E2C4(a1);
}

uint64_t (*sub_195F8A138(uint64_t **a1))()
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
  v3[4] = *(v1 + 384);

  v4[5] = sub_195F85B84(v4);
  return sub_195F8F7F8;
}

void sub_195F8A1BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_195F8A21C()
{
  v1 = *(*(v0 + 392) + 104);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = sub_195F864E8(&qword_1EAEED8F0, &unk_195FACA00);
  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

void sub_195F8A2B4()
{
  has_internal_ui = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5A0, &qword_195FB0438);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 57) = 2;
  *(v1 + 80) = 0;
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 16) = v3;
  *(v1 + 88) = v2;
  *(v1 + 96) = 2;
  v397 = objc_opt_self();
  v4 = [v397 mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = sub_195FA08B8();
    v8 = v7;

    if (v6 == 0xD000000000000011 && 0x8000000195FC2FB0 == v8)
    {

LABEL_6:
      v10 = [objc_opt_self() standardUserDefaults];
      goto LABEL_8;
    }

    v9 = sub_195FA12B8();

    if (v9)
    {
      goto LABEL_6;
    }
  }

  v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v12 = sub_195FA0888();
  v13 = [v11 initWithSuiteName_];

  v10 = v13;
  if (!v13)
  {
    __break(1u);
    goto LABEL_115;
  }

LABEL_8:
  *(v1 + 16) = v10;
  *(v1 + 24) = 0xD000000000000011;
  *(v1 + 32) = 0x8000000195FC2FB0;

  *(v1 + 40) = 0xD000000000000026;
  *(v1 + 48) = 0x8000000195FC2FD0;
  *(v1 + 56) = 1;
  *(v1 + 58) = has_internal_ui;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5A8, &qword_195FB0440);
  swift_allocObject();
  v14 = sub_195FA06F8();
  *(v1 + 64) = v14;
  v414 = v14;
  sub_195EB5F38(&qword_1EAEEBEA0, &qword_1EAEEE5A8, &qword_195FB0440, MEMORY[0x1E695BF88]);
  v15 = sub_195FA0738();
  v16 = *(v1 + 80);
  *(v1 + 72) = v15;
  *(v1 + 80) = 0;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5B0, &qword_195FB0448);
  v18 = objc_allocWithZone(v17);
  swift_weakInit();
  swift_weakAssign();
  v413.receiver = v18;
  v413.super_class = v17;
  v396 = v17;
  v19 = objc_msgSendSuper2(&v413, sel_init);
  v20 = *(v1 + 80);
  *(v1 + 80) = v19;

  v21 = *(v1 + 16);
  v22 = v19;
  v23 = v21;

  v24 = sub_195FA0888();

  [v23 addObserver:v22 forKeyPath:v24 options:0 context:0];

  v395[2] = v1;
  v25 = v395;
  v26 = os_variant_has_internal_ui();
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 57) = 2;
  *(v27 + 80) = 0;
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *v29 = 0;
  *(v28 + 16) = v29;
  *(v27 + 88) = v28;
  *(v27 + 96) = 2;
  v30 = [v397 mainBundle];
  v31 = [v30 bundleIdentifier];

  if (v31)
  {
    v32 = sub_195FA08B8();
    v34 = v33;

    if (v32 == 0xD000000000000011 && 0x8000000195FC2FB0 == v34)
    {

LABEL_13:
      v36 = [objc_opt_self() standardUserDefaults];
      goto LABEL_15;
    }

    v35 = sub_195FA12B8();

    if (v35)
    {
      goto LABEL_13;
    }
  }

  v37 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v38 = sub_195FA0888();
  v39 = [v37 initWithSuiteName_];

  v36 = v39;
  if (!v39)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_15:
  *(v27 + 16) = v36;
  *(v27 + 24) = 0xD000000000000011;
  *(v27 + 32) = 0x8000000195FC2FB0;

  *(v27 + 40) = 0xD000000000000024;
  *(v27 + 48) = 0x8000000195FC3000;
  *(v27 + 56) = 1;
  *(v27 + 58) = v26;
  swift_allocObject();
  v40 = sub_195FA06F8();
  *(v27 + 64) = v40;
  v414 = v40;
  v41 = sub_195FA0738();
  v42 = *(v27 + 80);
  *(v27 + 72) = v41;
  *(v27 + 80) = 0;

  v43 = objc_allocWithZone(v396);
  swift_weakInit();
  swift_weakAssign();
  v412.receiver = v43;
  v412.super_class = v396;
  v44 = objc_msgSendSuper2(&v412, sel_init);
  v45 = *(v27 + 80);
  *(v27 + 80) = v44;

  v46 = *(v27 + 16);
  v47 = v44;
  v48 = v46;

  v49 = sub_195FA0888();

  [v48 addObserver:v47 forKeyPath:v49 options:0 context:0];

  v395[3] = v27;
  v50 = os_variant_has_internal_ui();
  v51 = swift_allocObject();
  *(v51 + 24) = 0;
  *(v51 + 32) = 0;
  *(v51 + 57) = 2;
  *(v51 + 80) = 0;
  v52 = swift_allocObject();
  v53 = swift_slowAlloc();
  *v53 = 0;
  *(v52 + 16) = v53;
  *(v51 + 88) = v52;
  *(v51 + 96) = 2;
  v54 = [v397 mainBundle];
  v55 = [v54 bundleIdentifier];

  if (v55)
  {
    v56 = sub_195FA08B8();
    v58 = v57;

    if (v56 == 0xD000000000000015 && 0x8000000195FC3030 == v58)
    {

      v25 = v395;
LABEL_20:
      v60 = [objc_opt_self() standardUserDefaults];
      goto LABEL_22;
    }

    v59 = sub_195FA12B8();

    v25 = v395;
    if (v59)
    {
      goto LABEL_20;
    }
  }

  v61 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v62 = sub_195FA0888();
  v63 = [v61 initWithSuiteName_];

  v60 = v63;
  if (!v63)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_22:
  *(v51 + 16) = v60;
  *(v51 + 24) = 0xD000000000000015;
  *(v51 + 32) = 0x8000000195FC3030;

  *(v51 + 40) = 0xD00000000000001DLL;
  *(v51 + 48) = 0x8000000195FC3050;
  *(v51 + 56) = 0;
  *(v51 + 58) = v50;
  swift_allocObject();
  v64 = sub_195FA06F8();
  *(v51 + 64) = v64;
  v414 = v64;
  v65 = sub_195FA0738();
  v66 = *(v51 + 80);
  *(v51 + 72) = v65;
  *(v51 + 80) = 0;

  v67 = objc_allocWithZone(v396);
  swift_weakInit();
  swift_weakAssign();
  v411.receiver = v67;
  v411.super_class = v396;
  v68 = objc_msgSendSuper2(&v411, sel_init);
  v69 = *(v51 + 80);
  *(v51 + 80) = v68;

  v70 = *(v51 + 16);
  v71 = v68;
  v72 = v70;

  v73 = sub_195FA0888();

  [v72 addObserver:v71 forKeyPath:v73 options:0 context:0];

  v25[4] = v51;
  v74 = os_variant_has_internal_ui();
  v75 = swift_allocObject();
  *(v75 + 24) = 0;
  *(v75 + 32) = 0;
  *(v75 + 57) = 2;
  *(v75 + 80) = 0;
  v76 = swift_allocObject();
  v77 = swift_slowAlloc();
  *v77 = 0;
  *(v76 + 16) = v77;
  *(v75 + 88) = v76;
  *(v75 + 96) = 2;
  v78 = [v397 mainBundle];
  v79 = [v78 bundleIdentifier];

  if (v79)
  {
    v80 = sub_195FA08B8();
    v82 = v81;

    if (v80 == 0xD000000000000011 && 0x8000000195FC2FB0 == v82)
    {

LABEL_27:
      v84 = [objc_opt_self() standardUserDefaults];
      goto LABEL_29;
    }

    v83 = sub_195FA12B8();

    if (v83)
    {
      goto LABEL_27;
    }
  }

  v85 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v86 = sub_195FA0888();
  v87 = [v85 initWithSuiteName_];

  v84 = v87;
  if (!v87)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

LABEL_29:
  *(v75 + 16) = v84;
  *(v75 + 24) = 0xD000000000000011;
  *(v75 + 32) = 0x8000000195FC2FB0;

  *(v75 + 40) = 0xD000000000000014;
  *(v75 + 48) = 0x8000000195FC3070;
  *(v75 + 56) = 1;
  *(v75 + 58) = v74;
  swift_allocObject();
  v88 = sub_195FA06F8();
  *(v75 + 64) = v88;
  v414 = v88;
  v89 = sub_195FA0738();
  v90 = *(v75 + 80);
  *(v75 + 72) = v89;
  *(v75 + 80) = 0;

  v91 = objc_allocWithZone(v396);
  swift_weakInit();
  swift_weakAssign();
  v410.receiver = v91;
  v410.super_class = v396;
  v92 = objc_msgSendSuper2(&v410, sel_init);
  v93 = *(v75 + 80);
  *(v75 + 80) = v92;

  v94 = *(v75 + 16);
  v95 = v92;
  v96 = v94;

  v97 = sub_195FA0888();

  [v96 addObserver:v95 forKeyPath:v97 options:0 context:0];

  v25[5] = v75;
  v98 = os_variant_has_internal_ui();
  v99 = swift_allocObject();
  *(v99 + 24) = 0;
  *(v99 + 32) = 0;
  *(v99 + 57) = 2;
  *(v99 + 80) = 0;
  v100 = swift_allocObject();
  v101 = swift_slowAlloc();
  *v101 = 0;
  *(v100 + 16) = v101;
  *(v99 + 88) = v100;
  *(v99 + 96) = 2;
  v102 = [v397 mainBundle];
  v103 = [v102 bundleIdentifier];

  if (v103)
  {
    v104 = sub_195FA08B8();
    v106 = v105;

    if (v104 == 0xD000000000000011 && 0x8000000195FC2FB0 == v106)
    {

LABEL_34:
      v108 = [objc_opt_self() standardUserDefaults];
      goto LABEL_36;
    }

    v107 = sub_195FA12B8();

    if (v107)
    {
      goto LABEL_34;
    }
  }

  v109 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v110 = sub_195FA0888();
  v111 = [v109 initWithSuiteName_];

  v108 = v111;
  if (!v111)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

LABEL_36:
  *(v99 + 16) = v108;
  *(v99 + 24) = 0xD000000000000011;
  *(v99 + 32) = 0x8000000195FC2FB0;

  *(v99 + 40) = 0xD000000000000024;
  *(v99 + 48) = 0x8000000195FC3090;
  *(v99 + 56) = 0;
  *(v99 + 58) = v98;
  swift_allocObject();
  v112 = sub_195FA06F8();
  *(v99 + 64) = v112;
  v414 = v112;
  v113 = sub_195FA0738();
  v114 = *(v99 + 80);
  *(v99 + 72) = v113;
  *(v99 + 80) = 0;

  v115 = objc_allocWithZone(v396);
  swift_weakInit();
  swift_weakAssign();
  v409.receiver = v115;
  v409.super_class = v396;
  v116 = objc_msgSendSuper2(&v409, sel_init);
  v117 = *(v99 + 80);
  *(v99 + 80) = v116;

  v118 = *(v99 + 16);
  v119 = v116;
  v120 = v118;

  v121 = sub_195FA0888();

  [v120 addObserver:v119 forKeyPath:v121 options:0 context:0];

  v25[6] = v99;
  v122 = os_variant_has_internal_ui();
  v123 = swift_allocObject();
  *(v123 + 24) = 0;
  *(v123 + 32) = 0;
  *(v123 + 57) = 2;
  *(v123 + 80) = 0;
  v124 = swift_allocObject();
  v125 = swift_slowAlloc();
  *v125 = 0;
  *(v124 + 16) = v125;
  *(v123 + 88) = v124;
  *(v123 + 96) = 2;
  v126 = [v397 mainBundle];
  v127 = [v126 bundleIdentifier];

  if (v127)
  {
    v128 = sub_195FA08B8();
    v130 = v129;

    if (v128 == 0xD000000000000011 && 0x8000000195FC2FB0 == v130)
    {

LABEL_41:
      v132 = [objc_opt_self() standardUserDefaults];
      goto LABEL_43;
    }

    v131 = sub_195FA12B8();

    if (v131)
    {
      goto LABEL_41;
    }
  }

  v133 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v134 = sub_195FA0888();
  v135 = [v133 initWithSuiteName_];

  v132 = v135;
  if (!v135)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

LABEL_43:
  *(v123 + 16) = v132;
  *(v123 + 24) = 0xD000000000000011;
  *(v123 + 32) = 0x8000000195FC2FB0;

  *(v123 + 40) = 0xD00000000000001BLL;
  *(v123 + 48) = 0x8000000195FC30C0;
  *(v123 + 56) = 0;
  *(v123 + 58) = v122;
  swift_allocObject();
  v136 = sub_195FA06F8();
  *(v123 + 64) = v136;
  v414 = v136;
  v137 = sub_195FA0738();
  v138 = *(v123 + 80);
  *(v123 + 72) = v137;
  *(v123 + 80) = 0;

  v139 = objc_allocWithZone(v396);
  swift_weakInit();
  swift_weakAssign();
  v408.receiver = v139;
  v408.super_class = v396;
  v140 = objc_msgSendSuper2(&v408, sel_init);
  v141 = *(v123 + 80);
  *(v123 + 80) = v140;

  v142 = *(v123 + 16);
  v143 = v140;
  v144 = v142;

  v145 = sub_195FA0888();

  [v144 addObserver:v143 forKeyPath:v145 options:0 context:0];

  v25[7] = v123;
  v146 = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5B8, &qword_195FB0450);
  v147 = swift_allocObject();
  *(v147 + 72) = 0;
  *(v147 + 80) = 256;
  *(v147 + 24) = 0;
  *(v147 + 32) = 0;
  *(v147 + 104) = 0;
  v148 = swift_allocObject();
  v149 = swift_slowAlloc();
  *v149 = 0;
  *(v148 + 16) = v149;
  *(v147 + 112) = v148;
  *(v147 + 120) = 0;
  *(v147 + 128) = 256;
  v150 = [v397 mainBundle];
  v151 = [v150 bundleIdentifier];

  if (v151)
  {
    v152 = sub_195FA08B8();
    v154 = v153;

    if (v152 == 0xD000000000000011 && 0x8000000195FC2FB0 == v154)
    {

LABEL_48:
      v156 = [objc_opt_self() standardUserDefaults];
      goto LABEL_50;
    }

    v155 = sub_195FA12B8();

    if (v155)
    {
      goto LABEL_48;
    }
  }

  v157 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v158 = sub_195FA0888();
  v156 = [v157 initWithSuiteName_];

  if (!v156)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

LABEL_50:
  *(v147 + 16) = v156;
  *(v147 + 24) = 0xD000000000000011;
  *(v147 + 32) = 0x8000000195FC2FB0;

  strcpy((v147 + 40), "secondHandFPS");
  *(v147 + 54) = -4864;
  *(v147 + 56) = 0;
  *(v147 + 64) = 1;
  *(v147 + 82) = v146;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5C0, &qword_195FB0458);
  swift_allocObject();
  v159 = sub_195FA06F8();
  *(v147 + 88) = v159;
  v414 = v159;
  sub_195EB5F38(&qword_1EAEEBE98, &qword_1EAEEE5C0, &qword_195FB0458, MEMORY[0x1E695BF88]);
  v160 = sub_195FA0738();
  v161 = *(v147 + 104);
  *(v147 + 96) = v160;
  *(v147 + 104) = 0;

  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5C8, &qword_195FB0460);
  v163 = objc_allocWithZone(v162);
  swift_weakInit();
  swift_weakAssign();
  v407.receiver = v163;
  v407.super_class = v162;
  v164 = objc_msgSendSuper2(&v407, sel_init);
  v165 = *(v147 + 104);
  *(v147 + 104) = v164;

  v166 = *(v147 + 16);
  v167 = v164;
  v168 = v166;

  v169 = sub_195FA0888();

  [v168 addObserver:v167 forKeyPath:v169 options:0 context:0];

  v25[8] = v147;
  v170 = os_variant_has_internal_ui();
  v171 = swift_allocObject();
  *(v171 + 24) = 0;
  *(v171 + 32) = 0;
  *(v171 + 57) = 2;
  *(v171 + 80) = 0;
  v172 = swift_allocObject();
  v173 = swift_slowAlloc();
  *v173 = 0;
  *(v172 + 16) = v173;
  *(v171 + 88) = v172;
  *(v171 + 96) = 2;
  v174 = [v397 mainBundle];
  v175 = [v174 bundleIdentifier];

  if (v175)
  {
    v176 = sub_195FA08B8();
    v178 = v177;

    if (v176 == 0xD000000000000011 && 0x8000000195FC2FB0 == v178)
    {

LABEL_55:
      v180 = [objc_opt_self() standardUserDefaults];
      goto LABEL_57;
    }

    v179 = sub_195FA12B8();

    if (v179)
    {
      goto LABEL_55;
    }
  }

  v181 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v182 = sub_195FA0888();
  v183 = [v181 initWithSuiteName_];

  v180 = v183;
  if (!v183)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

LABEL_57:
  *(v171 + 16) = v180;
  *(v171 + 24) = 0xD000000000000011;
  *(v171 + 32) = 0x8000000195FC2FB0;

  *(v171 + 40) = 0xD00000000000001DLL;
  *(v171 + 48) = 0x8000000195FC30E0;
  *(v171 + 56) = 1;
  *(v171 + 58) = v170;
  swift_allocObject();
  v184 = sub_195FA06F8();
  *(v171 + 64) = v184;
  v414 = v184;
  v185 = sub_195FA0738();
  v186 = *(v171 + 80);
  *(v171 + 72) = v185;
  *(v171 + 80) = 0;

  v187 = objc_allocWithZone(v396);
  swift_weakInit();
  swift_weakAssign();
  v406.receiver = v187;
  v406.super_class = v396;
  v188 = objc_msgSendSuper2(&v406, sel_init);
  v189 = *(v171 + 80);
  *(v171 + 80) = v188;

  v190 = *(v171 + 16);
  v191 = v188;
  v192 = v190;

  v193 = sub_195FA0888();

  [v192 addObserver:v191 forKeyPath:v193 options:0 context:0];

  v395[9] = v171;
  v194 = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5D0, &qword_195FB0468);
  v195 = swift_allocObject();
  *(v195 + 64) = 0;
  *(v195 + 24) = 0;
  *(v195 + 32) = 0;
  *(v195 + 72) = 1;
  *(v195 + 96) = 0;
  v196 = swift_allocObject();
  v197 = swift_slowAlloc();
  *v197 = 0;
  *(v196 + 16) = v197;
  *(v195 + 104) = v196;
  *(v195 + 112) = 0;
  *(v195 + 120) = 1;
  v198 = [v397 mainBundle];
  v199 = [v198 bundleIdentifier];

  if (v199)
  {
    v200 = sub_195FA08B8();
    v202 = v201;

    if (v200 == 0xD000000000000011 && 0x8000000195FC2FB0 == v202)
    {

LABEL_62:
      v204 = [objc_opt_self() standardUserDefaults];
      goto LABEL_64;
    }

    v203 = sub_195FA12B8();

    if (v203)
    {
      goto LABEL_62;
    }
  }

  v205 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v206 = sub_195FA0888();
  v207 = [v205 initWithSuiteName_];

  v204 = v207;
  if (!v207)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

LABEL_64:
  *(v195 + 16) = v204;
  *(v195 + 24) = 0xD000000000000011;
  *(v195 + 32) = 0x8000000195FC2FB0;

  *(v195 + 40) = 0xD00000000000001DLL;
  *(v195 + 48) = 0x8000000195FC3100;
  *(v195 + 56) = 5;
  *(v195 + 73) = v194;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5D8, &qword_195FB0470);
  swift_allocObject();
  v208 = sub_195FA06F8();
  *(v195 + 80) = v208;
  v414 = v208;
  sub_195EB5F38(&qword_1EAEEBE80, &qword_1EAEEE5D8, &qword_195FB0470, MEMORY[0x1E695BF88]);
  v209 = sub_195FA0738();
  v210 = *(v195 + 96);
  *(v195 + 88) = v209;
  *(v195 + 96) = 0;

  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5E0, &qword_195FB0478);
  v212 = objc_allocWithZone(v211);
  swift_weakInit();
  swift_weakAssign();
  v405.receiver = v212;
  v405.super_class = v211;
  v213 = objc_msgSendSuper2(&v405, sel_init);
  v214 = *(v195 + 96);
  *(v195 + 96) = v213;

  v215 = *(v195 + 16);
  v216 = v213;
  v217 = v215;

  v218 = sub_195FA0888();

  [v217 addObserver:v216 forKeyPath:v218 options:0 context:0];

  v219 = v395;
  v395[10] = v195;
  v220 = os_variant_has_internal_ui();
  v221 = swift_allocObject();
  *(v221 + 64) = 0;
  *(v221 + 24) = 0;
  *(v221 + 32) = 0;
  *(v221 + 72) = 1;
  *(v221 + 96) = 0;
  v222 = swift_allocObject();
  v223 = swift_slowAlloc();
  *v223 = 0;
  *(v222 + 16) = v223;
  *(v221 + 104) = v222;
  *(v221 + 112) = 0;
  *(v221 + 120) = 1;
  v224 = [v397 mainBundle];
  v225 = [v224 bundleIdentifier];

  if (v225)
  {
    v226 = sub_195FA08B8();
    v228 = v227;

    if (v226 == 0xD000000000000011 && 0x8000000195FC2FB0 == v228)
    {

      v219 = v395;
LABEL_69:
      v230 = [objc_opt_self() standardUserDefaults];
      goto LABEL_71;
    }

    v229 = sub_195FA12B8();

    v219 = v395;
    if (v229)
    {
      goto LABEL_69;
    }
  }

  v231 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v232 = sub_195FA0888();
  v233 = [v231 initWithSuiteName_];

  v230 = v233;
  if (!v233)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

LABEL_71:
  *(v221 + 16) = v230;
  *(v221 + 24) = 0xD000000000000011;
  *(v221 + 32) = 0x8000000195FC2FB0;

  *(v221 + 40) = 0xD000000000000023;
  *(v221 + 48) = 0x8000000195FC3120;
  *(v221 + 56) = 120;
  *(v221 + 73) = v220;
  swift_allocObject();
  v234 = sub_195FA06F8();
  *(v221 + 80) = v234;
  v414 = v234;
  v235 = sub_195FA0738();
  v236 = *(v221 + 96);
  *(v221 + 88) = v235;
  *(v221 + 96) = 0;

  v237 = objc_allocWithZone(v211);
  swift_weakInit();
  swift_weakAssign();
  v404.receiver = v237;
  v404.super_class = v211;
  v238 = objc_msgSendSuper2(&v404, sel_init);
  v239 = *(v221 + 96);
  *(v221 + 96) = v238;

  v240 = *(v221 + 16);
  v241 = v238;
  v242 = v240;

  v243 = sub_195FA0888();

  [v242 addObserver:v241 forKeyPath:v243 options:0 context:0];

  v219[11] = v221;
  v244 = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5E8, &qword_195FB0480);
  v245 = swift_allocObject();
  *(v245 + 64) = 0;
  *(v245 + 24) = 0;
  *(v245 + 32) = 0;
  *(v245 + 72) = 1;
  *(v245 + 96) = 0;
  v246 = swift_allocObject();
  v247 = swift_slowAlloc();
  *v247 = 0;
  *(v246 + 16) = v247;
  *(v245 + 104) = v246;
  *(v245 + 112) = 0;
  *(v245 + 120) = 1;
  v248 = [v397 mainBundle];
  v249 = [v248 bundleIdentifier];

  if (v249)
  {
    v250 = sub_195FA08B8();
    v252 = v251;

    if (v250 == 0xD000000000000011 && 0x8000000195FC2FB0 == v252)
    {

LABEL_76:
      v254 = [objc_opt_self() standardUserDefaults];
      goto LABEL_78;
    }

    v253 = sub_195FA12B8();

    if (v253)
    {
      goto LABEL_76;
    }
  }

  v255 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v256 = sub_195FA0888();
  v257 = [v255 initWithSuiteName_];

  v254 = v257;
  if (!v257)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

LABEL_78:
  *(v245 + 16) = v254;
  *(v245 + 24) = 0xD000000000000011;
  *(v245 + 32) = 0x8000000195FC2FB0;

  *(v245 + 40) = 0xD000000000000019;
  *(v245 + 48) = 0x8000000195FC3150;
  *(v245 + 56) = 0x4008000000000000;
  *(v245 + 73) = v244;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5F0, &qword_195FB0488);
  swift_allocObject();
  v258 = sub_195FA06F8();
  *(v245 + 80) = v258;
  v414 = v258;
  sub_195EB5F38(&qword_1EAEEBE90, &qword_1EAEEE5F0, &qword_195FB0488, MEMORY[0x1E695BF88]);
  v259 = sub_195FA0738();
  v260 = *(v245 + 96);
  *(v245 + 88) = v259;
  *(v245 + 96) = 0;

  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE5F8, &qword_195FB0490);
  v262 = objc_allocWithZone(v261);
  swift_weakInit();
  swift_weakAssign();
  v403.receiver = v262;
  v403.super_class = v261;
  v263 = objc_msgSendSuper2(&v403, sel_init);
  v264 = *(v245 + 96);
  *(v245 + 96) = v263;

  v265 = *(v245 + 16);
  v266 = v263;
  v267 = v265;

  v268 = sub_195FA0888();

  [v267 addObserver:v266 forKeyPath:v268 options:0 context:0];

  v219[12] = v245;
  v269 = os_variant_has_internal_ui();
  v270 = swift_allocObject();
  *(v270 + 24) = 0;
  *(v270 + 32) = 0;
  *(v270 + 57) = 2;
  *(v270 + 80) = 0;
  v271 = swift_allocObject();
  v272 = swift_slowAlloc();
  *v272 = 0;
  *(v271 + 16) = v272;
  *(v270 + 88) = v271;
  *(v270 + 96) = 2;
  v273 = [v397 mainBundle];
  v274 = [v273 bundleIdentifier];

  if (v274)
  {
    v275 = sub_195FA08B8();
    v277 = v276;

    if (v275 == 0xD000000000000011 && 0x8000000195FC2FB0 == v277)
    {

LABEL_83:
      v279 = [objc_opt_self() standardUserDefaults];
      goto LABEL_85;
    }

    v278 = sub_195FA12B8();

    if (v278)
    {
      goto LABEL_83;
    }
  }

  v280 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v281 = sub_195FA0888();
  v282 = [v280 initWithSuiteName_];

  v279 = v282;
  if (!v282)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

LABEL_85:
  *(v270 + 16) = v279;
  *(v270 + 24) = 0xD000000000000011;
  *(v270 + 32) = 0x8000000195FC2FB0;

  *(v270 + 40) = 0xD000000000000016;
  *(v270 + 48) = 0x8000000195FC3170;
  *(v270 + 56) = 0;
  *(v270 + 58) = v269;
  swift_allocObject();
  v283 = sub_195FA06F8();
  *(v270 + 64) = v283;
  v414 = v283;
  v284 = sub_195FA0738();
  v285 = *(v270 + 80);
  *(v270 + 72) = v284;
  *(v270 + 80) = 0;

  v286 = objc_allocWithZone(v396);
  swift_weakInit();
  swift_weakAssign();
  v402.receiver = v286;
  v402.super_class = v396;
  v287 = objc_msgSendSuper2(&v402, sel_init);
  v288 = *(v270 + 80);
  *(v270 + 80) = v287;

  v289 = *(v270 + 16);
  v290 = v287;
  v291 = v289;

  v292 = sub_195FA0888();

  [v291 addObserver:v290 forKeyPath:v292 options:0 context:0];

  v219[13] = v270;
  v293 = os_variant_has_internal_ui();
  v294 = swift_allocObject();
  *(v294 + 24) = 0;
  *(v294 + 32) = 0;
  *(v294 + 57) = 2;
  *(v294 + 80) = 0;
  v295 = swift_allocObject();
  v296 = swift_slowAlloc();
  *v296 = 0;
  *(v295 + 16) = v296;
  *(v294 + 88) = v295;
  *(v294 + 96) = 2;
  v297 = [v397 mainBundle];
  v298 = [v297 bundleIdentifier];

  if (v298)
  {
    v299 = sub_195FA08B8();
    v301 = v300;

    if (v299 == 0xD000000000000011 && 0x8000000195FC2FB0 == v301)
    {

LABEL_90:
      v303 = [objc_opt_self() standardUserDefaults];
      goto LABEL_92;
    }

    v302 = sub_195FA12B8();

    if (v302)
    {
      goto LABEL_90;
    }
  }

  v304 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v305 = sub_195FA0888();
  v306 = [v304 initWithSuiteName_];

  v303 = v306;
  if (!v306)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

LABEL_92:
  *(v294 + 16) = v303;
  *(v294 + 24) = 0xD000000000000011;
  *(v294 + 32) = 0x8000000195FC2FB0;

  *(v294 + 40) = 0xD000000000000015;
  *(v294 + 48) = 0x8000000195FC3190;
  *(v294 + 56) = 0;
  *(v294 + 58) = v293;
  swift_allocObject();
  v307 = sub_195FA06F8();
  *(v294 + 64) = v307;
  v414 = v307;
  v308 = sub_195FA0738();
  v309 = *(v294 + 80);
  *(v294 + 72) = v308;
  *(v294 + 80) = 0;

  v310 = objc_allocWithZone(v396);
  swift_weakInit();
  swift_weakAssign();
  v401.receiver = v310;
  v401.super_class = v396;
  v311 = objc_msgSendSuper2(&v401, sel_init);
  v312 = *(v294 + 80);
  *(v294 + 80) = v311;

  v313 = *(v294 + 16);
  v314 = v311;
  v315 = v313;

  v316 = sub_195FA0888();

  [v315 addObserver:v314 forKeyPath:v316 options:0 context:0];

  v219[14] = v294;
  v317 = os_variant_has_internal_ui();
  v318 = swift_allocObject();
  *(v318 + 24) = 0;
  *(v318 + 32) = 0;
  *(v318 + 57) = 2;
  *(v318 + 80) = 0;
  v319 = swift_allocObject();
  v320 = swift_slowAlloc();
  *v320 = 0;
  *(v319 + 16) = v320;
  *(v318 + 88) = v319;
  *(v318 + 96) = 2;
  v321 = [v397 mainBundle];
  v322 = [v321 bundleIdentifier];

  if (v322)
  {
    v323 = sub_195FA08B8();
    v325 = v324;

    if (v323 == 0xD000000000000011 && 0x8000000195FC2FB0 == v325)
    {

LABEL_97:
      v327 = [objc_opt_self() standardUserDefaults];
      goto LABEL_99;
    }

    v326 = sub_195FA12B8();

    if (v326)
    {
      goto LABEL_97;
    }
  }

  v328 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v329 = sub_195FA0888();
  v330 = [v328 initWithSuiteName_];

  v327 = v330;
  if (!v330)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

LABEL_99:
  *(v318 + 16) = v327;
  *(v318 + 24) = 0xD000000000000011;
  *(v318 + 32) = 0x8000000195FC2FB0;

  *(v318 + 40) = 0xD000000000000015;
  *(v318 + 48) = 0x8000000195FC31B0;
  *(v318 + 56) = 0;
  *(v318 + 58) = v317;
  swift_allocObject();
  v331 = sub_195FA06F8();
  *(v318 + 64) = v331;
  v414 = v331;
  v332 = sub_195FA0738();
  v333 = *(v318 + 80);
  *(v318 + 72) = v332;
  *(v318 + 80) = 0;

  v334 = objc_allocWithZone(v396);
  swift_weakInit();
  swift_weakAssign();
  v400.receiver = v334;
  v400.super_class = v396;
  v335 = objc_msgSendSuper2(&v400, sel_init);
  v336 = *(v318 + 80);
  *(v318 + 80) = v335;

  v337 = *(v318 + 16);
  v338 = v335;
  v339 = v337;

  v340 = sub_195FA0888();

  [v339 addObserver:v338 forKeyPath:v340 options:0 context:0];

  v219[15] = v318;
  v341 = os_variant_has_internal_ui();
  v342 = swift_allocObject();
  *(v342 + 24) = 0;
  *(v342 + 32) = 0;
  *(v342 + 57) = 2;
  *(v342 + 80) = 0;
  v343 = swift_allocObject();
  v344 = swift_slowAlloc();
  *v344 = 0;
  *(v343 + 16) = v344;
  *(v342 + 88) = v343;
  *(v342 + 96) = 2;
  v345 = [v397 mainBundle];
  v346 = [v345 bundleIdentifier];

  if (!v346)
  {
LABEL_105:
    v352 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v353 = sub_195FA0888();
    v354 = [v352 initWithSuiteName_];

    v351 = v354;
    if (v354)
    {
      goto LABEL_106;
    }

LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v347 = sub_195FA08B8();
  v349 = v348;

  if (v347 != 0xD000000000000011 || 0x8000000195FC2FB0 != v349)
  {
    v350 = sub_195FA12B8();

    if (v350)
    {
      goto LABEL_104;
    }

    goto LABEL_105;
  }

LABEL_104:
  v351 = [objc_opt_self() standardUserDefaults];
LABEL_106:
  *(v342 + 16) = v351;
  *(v342 + 24) = 0xD000000000000011;
  *(v342 + 32) = 0x8000000195FC2FB0;

  *(v342 + 40) = 0xD000000000000014;
  *(v342 + 48) = 0x8000000195FC31D0;
  *(v342 + 56) = 0;
  *(v342 + 58) = v341;
  swift_allocObject();
  v355 = sub_195FA06F8();
  *(v342 + 64) = v355;
  v414 = v355;
  v356 = sub_195FA0738();
  v357 = *(v342 + 80);
  *(v342 + 72) = v356;
  *(v342 + 80) = 0;

  v358 = objc_allocWithZone(v396);
  swift_weakInit();
  swift_weakAssign();
  v399.receiver = v358;
  v399.super_class = v396;
  v359 = objc_msgSendSuper2(&v399, sel_init);
  v360 = *(v342 + 80);
  *(v342 + 80) = v359;

  v361 = *(v342 + 16);
  v362 = v359;
  v363 = v361;

  v364 = sub_195FA0888();

  [v363 addObserver:v362 forKeyPath:v364 options:0 context:0];

  v219[16] = v342;
  v365 = os_variant_has_internal_ui();
  v366 = swift_allocObject();
  *(v366 + 24) = 0;
  *(v366 + 32) = 0;
  *(v366 + 57) = 2;
  *(v366 + 80) = 0;
  v367 = swift_allocObject();
  v368 = swift_slowAlloc();
  *v368 = 0;
  *(v367 + 16) = v368;
  *(v366 + 88) = v367;
  *(v366 + 96) = 2;
  v369 = [v397 mainBundle];
  v370 = [v369 bundleIdentifier];

  if (v370)
  {
    v371 = sub_195FA08B8();
    v373 = v372;

    if (v371 == 0xD000000000000011 && 0x8000000195FC2FB0 == v373)
    {

LABEL_111:
      v375 = [objc_opt_self() standardUserDefaults];
LABEL_113:
      *(v366 + 16) = v375;
      *(v366 + 24) = 0xD000000000000011;
      *(v366 + 32) = 0x8000000195FC2FB0;

      *(v366 + 40) = 0xD000000000000011;
      *(v366 + 48) = 0x8000000195FC31F0;
      *(v366 + 56) = 0;
      *(v366 + 58) = v365;
      swift_allocObject();
      v379 = sub_195FA06F8();
      *(v366 + 64) = v379;
      v414 = v379;
      v380 = sub_195FA0738();
      v381 = *(v366 + 80);
      *(v366 + 72) = v380;
      *(v366 + 80) = 0;

      v382 = objc_allocWithZone(v396);
      swift_weakInit();
      swift_weakAssign();
      v398.receiver = v382;
      v398.super_class = v396;
      v383 = objc_msgSendSuper2(&v398, sel_init);
      v384 = *(v366 + 80);
      *(v366 + 80) = v383;

      v385 = *(v366 + 16);
      v386 = v383;
      v387 = v385;

      v388 = sub_195FA0888();

      [v387 addObserver:v386 forKeyPath:v388 options:0 context:0];

      v219[17] = v366;
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[18] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000018, 0x8000000195FC3210, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[19] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000011, 0x8000000195FC3230, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[20] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000015, 0x8000000195FC3250, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[21] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000010, 0x8000000195FC3270, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[22] = sub_195F8532C(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000012, 0x8000000195FC3290, 0, 1, 0, 256, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[23] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000013, 0x8000000195FC32B0, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[24] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000010, 0x8000000195FC32D0, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[25] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000014, 0x8000000195FC32F0, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[26] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000019, 0x8000000195FC3310, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[27] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0x61745379616C6544, 0xEC00000070757472, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[28] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000014, 0x8000000195FC3330, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[29] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001BLL, 0x8000000195FC3350, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[30] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000015, 0x8000000195FC3370, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[31] = sub_195F8532C(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000012, 0x8000000195FC3390, 0, 1, 0, 256, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[32] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000013, 0x8000000195FC33B0, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[33] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000011, 0x8000000195FC33D0, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[34] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0x72614D6775626544, 0xEC000000736E6967, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[35] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0x6563536775626544, 0xEE006B73614D656ELL, 0, 2, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE600, &qword_195FB0498);
      swift_allocObject();
      v219[36] = sub_195F84B88(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000018, 0x8000000195FC33F0, 0, 0, 0, 1, v386);
      LOBYTE(v386) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[37] = sub_195F84B88(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001ALL, 0x8000000195FC3410, 0, 0, 0, 1, v386);
      LODWORD(v386) = os_variant_has_internal_ui();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE608, &qword_195FB04A0);
      swift_allocObject();
      LOBYTE(v414) = 1;
      v219[38] = sub_195F847C4(0xD000000000000011, 0x8000000195FC2FB0, 0x34344D7373616C47, 0xE800000000000000, 0x100000000, v386, 0.8);
      v389 = os_variant_has_internal_ui();
      swift_allocObject();
      v219[39] = sub_195F84F7C(0xD000000000000011, 0x8000000195FC2FB0, 0x4F64657564627553, 0xEE00797469636170, 0, 1, v389, 0.75);
      LOBYTE(v389) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[40] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001CLL, 0x8000000195FC3430, 0, 2, v389);
      LOBYTE(v389) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[41] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000018, 0x8000000195FC3450, 0, 2, v389);
      LOBYTE(v389) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[42] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000010, 0x8000000195FC3470, 0, 2, v389);
      LOBYTE(v389) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[43] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001CLL, 0x8000000195FC3490, 0, 2, v389);
      LOBYTE(v389) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[44] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001DLL, 0x8000000195FC34B0, 0, 2, v389);
      LOBYTE(v389) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[45] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000028, 0x8000000195FC34D0, 0, 1, v389);
      LOBYTE(v389) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[46] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000020, 0x8000000195FC3500, 0, 1, v389);
      LOBYTE(v389) = os_variant_has_internal_ui();
      swift_allocObject();
      v219[47] = sub_195F856EC(0xD000000000000011, 0x8000000195FC2FB0, 0xD000000000000022, 0x8000000195FC3530, 0, 0, v389);
      v390 = MEMORY[0x1E69E7CC0];
      v391 = sub_195F2DF88(MEMORY[0x1E69E7CC0]);
      v392 = sub_195F2DF88(v390);
      v393 = os_variant_has_internal_ui();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE610, &qword_195FB04A8);
      swift_allocObject();
      v219[48] = sub_195F843FC(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001CLL, 0x8000000195FC3560, v391, v392, v393);
      v394 = os_variant_has_internal_ui();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE618, &qword_195FB04B0);
      swift_allocObject();
      v219[49] = sub_195F84034(0xD000000000000011, 0x8000000195FC2FB0, 0xD00000000000001BLL, 0x8000000195FC3580, v390, 0, v394);
      return;
    }

    v374 = sub_195FA12B8();

    if (v374)
    {
      goto LABEL_111;
    }
  }

  v376 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v377 = sub_195FA0888();
  v378 = [v376 initWithSuiteName_];

  v375 = v378;
  if (v378)
  {
    goto LABEL_113;
  }

LABEL_129:
  __break(1u);
}

unint64_t sub_195F8DAAC()
{
  v1 = sub_195FA1428();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Preferences();
  v22 = v0;

  sub_195FA1408();
  sub_195FA1418();
  v5 = sub_195FA0FF8();

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_195FA0F38();

  v22 = 0xD000000000000010;
  v23 = 0x8000000195FC2970;
  v6 = *(v5 + 16);
  if (v6)
  {
    v19 = v2;
    v20 = v1;
    v21 = MEMORY[0x1E69E7CC0];
    sub_195F391DC(0, v6, 0);
    v7 = v21;
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v21 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_195F391DC((v11 > 1), v12 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v8 += 2;
      --v6;
    }

    while (v6);

    v2 = v19;
    v1 = v20;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v21 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
  v14 = sub_195FA0828();
  v16 = v15;

  MEMORY[0x19A8C3F70](v14, v16);

  MEMORY[0x19A8C3F70](62, 0xE100000000000000);
  v17 = v22;
  (*(v2 + 8))(v4, v1);
  return v17;
}

uint64_t Preferences.deinit()
{

  return v0;
}

uint64_t Preferences.__deallocating_deinit()
{
  Preferences.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_195F8DFA8@<X0>(void *a2@<X8>)
{
  result = sub_195FA1008();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_195F8E010(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_195EC7CCC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_195FA12B8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_195F8E1B4(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 288) + 120);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_195F86CCC(a1, a2);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_195F8E23C(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 296) + 120);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  sub_195F86CCC(a1, a2);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_195F8E2C4(uint64_t a1)
{
  v3 = *(*(v1 + 384) + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F8706C(a1, &qword_1EAEEE598, &qword_195FB0430, sub_195F8E010);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t keypath_get_15Tm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t keypath_set_96Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{

  a5(v6);
}

uint64_t sub_195F8F744(uint64_t a1)
{
  v3 = *(*(v1 + 392) + 104);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  sub_195F8706C(a1, &qword_1EAEED8F0, &unk_195FACA00, sub_195F2A278);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_195F8F7E0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_195F8F82C(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v24 = a4;
  v5 = v4;
  v10 = a1[3];
  v9 = a1[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = a2[3];
  v16 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = v24(v13, v19, a3, v5, v10, v15, v9, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t IconStore.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  v1 = OBJC_IVAR____TtC14ChronoServices9IconStore_iconsFolderURL;
  v2 = sub_195FA0478();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_195F8FA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_195FA0408() & 1) == 0 || (sub_195FA0408() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_195FA12B8();
}

uint64_t sub_195F8FB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_195FA0408())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_195FA12B8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_195F8FB94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE690, &qword_195FB05F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v117 = &v102 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE698, &qword_195FB05F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v105 = &v102 - v5;
  v113 = type metadata accessor for IconStore.FileRenameMigration(0);
  v104 = *(v113 - 8);
  v6 = MEMORY[0x1EEE9AC00](v113);
  v103 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v102 = &v102 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v112 = &v102 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v111 = &v102 - v12;
  v110 = sub_195FA0638();
  v13 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for IconStore.FileVersionUpdateMigration(0);
  v15 = MEMORY[0x1EEE9AC00](updated);
  v115 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v102 - v17;
  v129 = sub_195FA0358();
  v19 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_195FA0478();
  v21 = MEMORY[0x1EEE9AC00](v124);
  v123 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v122 = &v102 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v102 - v26;
  v146 = MEMORY[0x1E69E7CC8];
  v147 = MEMORY[0x1E69E7CC8];
  v144 = MEMORY[0x1E69E7CD0];
  v145 = MEMORY[0x1E69E7CD0];
  v29 = *(a1 + 16);
  if (v29)
  {
    v114 = v18;
    v31 = *(v19 + 104);
    v30 = v19 + 104;
    v127 = v31;
    v126 = (v30 - 96);
    v108 = (v13 + 8);
    v130 = (v25 + 16);
    v131 = OBJC_IVAR____TtC14ChronoServices9IconStore_iconsFolderURL;
    v134 = (v25 + 8);
    v32 = (a1 + 40);
    v125 = *MEMORY[0x1E6968F70];
    *&v27 = 136446210;
    v107 = v27;
    *&v27 = 136446466;
    v106 = v27;
    v120 = v30;
    v33 = v124;
    v133 = &v102 - v26;
    do
    {
      v36 = *(v32 - 1);
      v35 = *v32;
      v136 = v32;
      v138 = v36;
      v139 = v35;
      v37 = v128;
      v38 = v129;
      v127(v128, v125, v129);
      sub_195ECC284();

      sub_195FA0468();
      (*v126)(v37, v38);
      sub_195F90B08(&v138);
      v39 = v139;
      if (v139)
      {
        v40 = v138;
        v41 = v140;
        v42 = v141;
        v132 = v142;
        v135 = v143;
        v43 = v144;

        LOBYTE(v43) = sub_195F35514(v40, v39, v41, v42, v43);

        if (v43)
        {

          v137 = MEMORY[0x1E69E7CD0];
          v44 = *v130;
          v45 = v41;
          v46 = v123;
          (*v130)(v123, v133, v33);
          swift_beginAccess();
          v47 = v122;
          v48 = v46;
          v49 = v45;
          sub_195F6B618(v122, v48);
          swift_endAccess();
          v121 = *v134;
          v121(v47, v33);
          v50 = v147;
          if (*(v147 + 16))
          {
            v51 = sub_195F59F90(v40, v39, v45, v42);
            if (v52)
            {
              v53 = *(v50 + 56) + *(v104 + 72) * v51;
              v119 = type metadata accessor for IconStore.FileRenameMigration;
              v54 = v103;
              sub_195F5FEA8(v53, v103, type metadata accessor for IconStore.FileRenameMigration);
              v55 = v102;
              sub_195F5FE40(v54, v102, type metadata accessor for IconStore.FileRenameMigration);
              v56 = v123;
              v44(v123, v55, v33);
              swift_beginAccess();
              v57 = v122;
              v58 = v56;
              v49 = v45;
              sub_195F6B618(v122, v58);
              swift_endAccess();
              v121(v57, v33);
              v59 = v105;
              sub_195F5A63C(v40, v39, v45, v42, v105);
              sub_195F2DB00(v59, &qword_1EAEEE698, &qword_195FB05F8);
              sub_195F99FB4(v55, v119);
            }
          }

          v60 = v117;
          sub_195F5A478(v40, v39, v49, v42, v117);
          sub_195F2DB00(v60, &qword_1EAEEE690, &qword_195FB05F0);
          if (qword_1EAEEBBB0 != -1)
          {
            swift_once();
          }

          v61 = sub_195FA0678();
          __swift_project_value_buffer(v61, qword_1EAEF7250);

          v62 = sub_195FA0658();
          v63 = sub_195FA0CC8();
          sub_195F9A014(v40, v39);
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v138 = v119;
            *v64 = v106;

            sub_195F9A014(v40, v39);
            v65 = sub_195F60D0C(v40, v39, v49, v42);
            v67 = v66;

            v68 = sub_195EBD554(v65, v67, &v138);

            *(v64 + 4) = v68;
            *(v64 + 12) = 2082;
            sub_195F9A064(&qword_1EAEEBCD0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);

            v69 = sub_195FA0C08();
            v71 = v70;

            v72 = sub_195EBD554(v69, v71, &v138);
            v33 = v124;

            *(v64 + 14) = v72;
            _os_log_impl(&dword_195EB2000, v62, v63, "Removing duplicate icons for identity: %{public}s: %{public}s", v64, 0x16u);
            v73 = v119;
            swift_arrayDestroy();
            MEMORY[0x19A8C5B70](v73, -1, -1);
            MEMORY[0x19A8C5B70](v64, -1, -1);
          }

          else
          {

            sub_195F9A014(v40, v39);
          }

          sub_195F3DBF0(v34);
          v28 = v133;
          v121(v133, v33);
        }

        else
        {
          v121 = v29;

          sub_195F6B8D0(&v138, v40, v39, v41, v42);

          if (v135)
          {
            sub_195F37930(v40, v39, v41, v42);
            v138 = 0;
            v139 = 0;
            v140 = 0;
            BYTE4(v141) = 0x80;
            LODWORD(v141) = 0;
            v119 = v40;
            v81 = v33;
            v82 = v109;
            sub_195F2D344(v109);
            v118 = v41;
            v83 = v114;
            sub_195FA03C8();

            (*v108)(v82, v110);
            v84 = *v130;
            v85 = v111;
            (*v130)(v111, v133, v81);
            v86 = v113;
            v84((v85 + *(v113 + 20)), v83, v81);
            v87 = (v85 + *(v86 + 24));
            *v87 = v36;
            v87[1] = v35;
            v88 = v112;
            sub_195F5FE40(v85, v112, type metadata accessor for IconStore.FileRenameMigration);
            v89 = v147;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v138 = v89;
            v40 = v119;
            v91 = v118;
            sub_195F5D818(v88, v119, v39, v118, v42, isUniquelyReferenced_nonNull_native);
            v147 = v138;
            v92 = v135;
          }

          else
          {

            v91 = v41;
            v83 = v114;
            (*v130)(v114, v133, v33);
            v92 = 0;
          }

          v96 = (v83 + *(updated + 20));
          *v96 = v132;
          v96[1] = v92;
          v97 = v115;
          sub_195F5FEA8(v83, v115, type metadata accessor for IconStore.FileVersionUpdateMigration);

          v98 = v146;
          v99 = swift_isUniquelyReferenced_nonNull_native();
          v138 = v98;
          sub_195F5D5C8(v97, v40, v39, v91, v42, v99);
          sub_195F9A014(v40, v39);
          sub_195F99FB4(v83, type metadata accessor for IconStore.FileVersionUpdateMigration);
          v28 = v133;
          v33 = v124;
          (*v134)(v133, v124);
          v146 = v138;
          v29 = v121;
        }
      }

      else
      {
        if (qword_1EAEEBBB0 != -1)
        {
          swift_once();
        }

        v74 = sub_195FA0678();
        __swift_project_value_buffer(v74, qword_1EAEF7250);

        v75 = sub_195FA0658();
        v76 = sub_195FA0CA8();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v138 = v78;
          *v77 = v107;
          v79 = sub_195EBD554(v36, v35, &v138);

          *(v77 + 4) = v79;
          _os_log_impl(&dword_195EB2000, v75, v76, "Failed to parse icon info from: %{public}s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v78);
          v80 = v78;
          v33 = v124;
          MEMORY[0x19A8C5B70](v80, -1, -1);
          MEMORY[0x19A8C5B70](v77, -1, -1);
        }

        else
        {
        }

        v93 = v123;
        (*v130)(v123, v28, v33);
        v94 = v122;
        sub_195F6B618(v122, v93);
        v95 = *v134;
        (*v134)(v94, v33);
        v95(v28, v33);
      }

      v32 = v136 + 2;
      v29 = (v29 - 1);
    }

    while (v29);
    v100 = v147;
  }

  else
  {
    v100 = MEMORY[0x1E69E7CC8];
  }

  return v100;
}

uint64_t sub_195F90B08@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_195FA0638();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 46;
  v40 = 0xE100000000000000;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  BYTE4(v38) = 0x80;
  LODWORD(v38) = 0;
  sub_195F2D344(v7);
  v8 = sub_195FA0618();
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  if (!v10)
  {
    goto LABEL_13;
  }

  MEMORY[0x19A8C3F70](v8, v10);

  if ((sub_195FA0A18() & 1) == 0)
  {

    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  v12 = sub_195FA0968();

  if (__OFSUB__(0, v12))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_195FA0998();
  v13 = sub_195FA0A68();
  v14 = MEMORY[0x19A8C3EF0](v13);
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  Token.init(rawValue:)(v17);
  sub_195F9DB38(v35, &v35);
  v18 = v35;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  sub_195F37930(v35, v36, v37, v38);
  v22 = sub_195FA0968();

  if (__OFADD__(v22, 2))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v23 = sub_195FA0988();
  if (v24)
  {

    v25 = 0;
    v26 = 0;
  }

  else
  {
    v27 = sub_195F99034(v23, v14, v16);
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v25 = MEMORY[0x19A8C3EF0](v27, v29, v31, v33);
    v26 = v34;
  }

  *a3 = v18;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  *(a3 + 24) = v21;
  *(a3 + 32) = v25;
  *(a3 + 40) = v26;
  return result;
}

uint64_t sub_195F90FB8()
{
  v242 = sub_195FA0478();
  v237 = *(v242 - 8);
  v1 = MEMORY[0x1EEE9AC00](v242);
  v232 = &v230 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v231 = &v230 - v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v257 = &v230 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v236 = &v230 - v7;
  updated = type metadata accessor for IconStore.FileVersionUpdateMigration(0);
  v252 = *(updated - 8);
  v8 = MEMORY[0x1EEE9AC00](updated);
  v259 = (&v230 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v251 = (&v230 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE680, &qword_195FB05E0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  *&v249 = &v230 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v250 = &v230 - v14;
  v260 = type metadata accessor for IconStore.FileRenameMigration(0);
  v256 = *(v260 - 8);
  v15 = MEMORY[0x1EEE9AC00](v260);
  v247 = &v230 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v230 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v230 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v254 = (&v230 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v255 = (&v230 - v25);
  v26 = v0[7];
  v27 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v26);
  (*(v27 + 16))(v266, v26, v27);
  v28 = v268;
  __swift_project_boxed_opaque_existential_1(v266, v267);
  v253 = v0;
  v29 = sub_195FA0438();
  v30 = v258;
  v31 = (*(v28 + 24))(v29);
  if (v30)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(v266);
  }

  *&v230 = v22;
  v241 = v19;
  v258 = 0;
  v33 = v31;

  v34 = sub_195F8FB94(v33);
  v246 = v35;
  v234 = v36;

  v37 = v34 + 64;
  v38 = 1 << *(v34 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v34 + 64);
  v41 = (v38 + 63) >> 6;

  v42 = 0;
  *&v43 = 136446466;
  v239 = v43;
  v44 = v259;
  v235 = v34;
  v46 = v254;
  v45 = v255;
  v243 = v41;
  v244 = v34 + 64;
  for (i = v256; v40; i = v256)
  {
    v48 = v42;
LABEL_10:
    v49 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    sub_195F5FEA8(*(v235 + 56) + *(i + 72) * (v49 | (v48 << 6)), v45, type metadata accessor for IconStore.FileRenameMigration);
    sub_195F5FE40(v45, v46, type metadata accessor for IconStore.FileRenameMigration);
    v50 = v267;
    v51 = v268;
    __swift_project_boxed_opaque_existential_1(v266, v267);
    v52 = v258;
    (*(v51 + 64))(v46, v46 + *(v260 + 20), v50, v51);
    v258 = v52;
    if (v52)
    {
      v53 = v247;
      if (qword_1EAEEBBB0 != -1)
      {
        swift_once();
      }

      v54 = sub_195FA0678();
      __swift_project_value_buffer(v54, qword_1EAEF7250);
      sub_195F5FEA8(v46, v53, type metadata accessor for IconStore.FileRenameMigration);
      v55 = v258;
      v56 = v258;
      v57 = sub_195FA0658();
      v58 = sub_195FA0CA8();

      v245 = v57;
      if (os_log_type_enabled(v57, v58))
      {
        v59 = v53;
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        LODWORD(v233) = v58;
        v62 = v61;
        *&v238 = swift_slowAlloc();
        v265[0] = v238;
        *v60 = v239;
        v63 = (v59 + *(v260 + 24));
        v65 = *v63;
        v64 = v63[1];

        v240 = type metadata accessor for IconStore.FileRenameMigration;
        sub_195F99FB4(v59, type metadata accessor for IconStore.FileRenameMigration);
        v66 = sub_195EBD554(v65, v64, v265);
        v44 = v259;

        *(v60 + 4) = v66;
        v46 = v254;
        *(v60 + 12) = 2114;
        v67 = v55;
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 14) = v68;
        *v62 = v68;
        v69 = v245;
        _os_log_impl(&dword_195EB2000, v245, v233, "Failed to rename icon: %{public}s - %{public}@", v60, 0x16u);
        sub_195F2DB00(v62, &unk_1EAEEE410, &qword_195FAAEB0);
        MEMORY[0x19A8C5B70](v62, -1, -1);
        v70 = v238;
        __swift_destroy_boxed_opaque_existential_1Tm(v238);
        MEMORY[0x19A8C5B70](v70, -1, -1);
        MEMORY[0x19A8C5B70](v60, -1, -1);

        v71 = v46;
        v72 = v240;
      }

      else
      {

        sub_195F99FB4(v53, type metadata accessor for IconStore.FileRenameMigration);
        v71 = v46;
        v72 = type metadata accessor for IconStore.FileRenameMigration;
      }

      result = sub_195F99FB4(v71, v72);
      v258 = 0;
    }

    else
    {
      v73 = v241;
      if (qword_1EAEEBBB0 != -1)
      {
        swift_once();
      }

      v74 = sub_195FA0678();
      __swift_project_value_buffer(v74, qword_1EAEF7250);
      v75 = v46;
      v76 = v46;
      v77 = v230;
      sub_195F5FEA8(v75, v230, type metadata accessor for IconStore.FileRenameMigration);
      sub_195F5FEA8(v76, v73, type metadata accessor for IconStore.FileRenameMigration);
      v78 = sub_195FA0658();
      v79 = sub_195FA0CC8();
      if (!os_log_type_enabled(v78, v79))
      {

        sub_195F99FB4(v73, type metadata accessor for IconStore.FileRenameMigration);
        sub_195F99FB4(v77, type metadata accessor for IconStore.FileRenameMigration);
        result = sub_195F99FB4(v76, type metadata accessor for IconStore.FileRenameMigration);
        v42 = v48;
        v46 = v76;
        goto LABEL_22;
      }

      v80 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      v265[0] = v245;
      *v80 = v239;
      sub_195F9A064(&qword_1EAEEBCC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      LODWORD(v240) = v79;
      *&v238 = v78;
      v81 = sub_195FA1288();
      v83 = v82;
      v233 = type metadata accessor for IconStore.FileRenameMigration;
      sub_195F99FB4(v77, type metadata accessor for IconStore.FileRenameMigration);
      v84 = sub_195EBD554(v81, v83, v265);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2082;
      v85 = v241;
      v44 = v259;
      v86 = sub_195FA1288();
      v88 = v87;
      v89 = v85;
      v90 = v233;
      sub_195F99FB4(v89, v233);
      v91 = sub_195EBD554(v86, v88, v265);

      *(v80 + 14) = v91;
      v92 = v238;
      _os_log_impl(&dword_195EB2000, v238, v240, "Renamed icon: %{public}s -> %{public}s", v80, 0x16u);
      v93 = v245;
      swift_arrayDestroy();
      MEMORY[0x19A8C5B70](v93, -1, -1);
      MEMORY[0x19A8C5B70](v80, -1, -1);

      v46 = v254;
      result = sub_195F99FB4(v254, v90);
    }

    v42 = v48;
LABEL_22:
    v45 = v255;
    v41 = v243;
    v37 = v244;
  }

  while (1)
  {
    v48 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v48 >= v41)
    {

      v94 = (v246 + 64);
      v95 = 1 << *(v246 + 32);
      v96 = -1;
      if (v95 < 64)
      {
        v96 = ~(-1 << v95);
      }

      v97 = v96 & *(v246 + 64);
      v243 = (v95 + 63) >> 6;
      v244 = 0x8000000195FC3680;

      v98 = 0;
      *&v99 = 136446722;
      v230 = v99;
      v238 = xmmword_195FAC280;
      v100 = v257;
      v247 = v94;
LABEL_30:
      v101 = v251;
      if (!v97)
      {
        if (v243 <= v98 + 1)
        {
          v103 = v98 + 1;
        }

        else
        {
          v103 = v243;
        }

        v104 = v103 - 1;
        while (1)
        {
          v102 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
            break;
          }

          if (v102 >= v243)
          {
            v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE688, &qword_195FB05E8);
            v115 = v249;
            (*(*(v132 - 8) + 56))(v249, 1, 1, v132);
            v256 = 0;
            v98 = v104;
            goto LABEL_41;
          }

          v97 = *&v94[8 * v102];
          ++v98;
          if (v97)
          {
            v98 = v102;
            goto LABEL_40;
          }
        }

        __break(1u);
        break;
      }

      v102 = v98;
LABEL_40:
      v256 = (v97 - 1) & v97;
      v105 = __clz(__rbit64(v97)) | (v102 << 6);
      v106 = *(v246 + 56);
      v107 = (*(v246 + 48) + 32 * v105);
      v108 = v107[1];
      v260 = *v107;
      v109 = v107[2];
      v110 = v107[3];
      sub_195F5FEA8(v106 + *(v252 + 72) * v105, v251, type metadata accessor for IconStore.FileVersionUpdateMigration);
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE688, &qword_195FB05E8);
      v112 = *(v111 + 48);
      v113 = v249;
      *v249 = v260;
      v113[1] = v108;
      v113[2] = v109;
      v113[3] = v110;
      v114 = v101;
      v115 = v113;
      sub_195F5FE40(v114, v113 + v112, type metadata accessor for IconStore.FileVersionUpdateMigration);
      (*(*(v111 - 8) + 56))(v115, 0, 1, v111);

      v100 = v257;
      v44 = v259;
LABEL_41:
      v116 = v250;
      sub_195F99F44(v115, v250);
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE688, &qword_195FB05E8);
      if ((*(*(v117 - 8) + 48))(v116, 1, v117) == 1)
      {

        v178 = 0;
        v179 = (v234 + 56);
        v180 = 1 << *(v234 + 32);
        v181 = -1;
        if (v180 < 64)
        {
          v181 = ~(-1 << v180);
        }

        isa = v181 & *(v234 + 56);
        v183 = (v180 + 63) >> 6;
        v184 = v237;
        v255 = v237 + 4;
        v259 = v237 + 1;
        v260 = &v237[2];
        *&v177 = 136446210;
        v249 = v177;
        v185 = v242;
        v256 = v183;
        v254 = (v234 + 56);
        v186 = v236;
        if (isa)
        {
          goto LABEL_82;
        }

LABEL_83:
        while (1)
        {
          v188 = v178 + 1;
          if (__OFADD__(v178, 1))
          {
            goto LABEL_101;
          }

          if (v188 >= v183)
          {

            return __swift_destroy_boxed_opaque_existential_1Tm(v266);
          }

          isa = v179[v188].isa;
          ++v178;
          if (isa)
          {
            while (1)
            {
              v189 = __clz(__rbit64(isa));
              isa &= isa - 1;
              v190 = v184[2].isa;
              v190(v186, *(v234 + 48) + v184[9].isa * (v189 | (v188 << 6)), v185);
              (v184[4].isa)(v100, v186, v185);
              v191 = v267;
              v192 = v268;
              __swift_project_boxed_opaque_existential_1(v266, v267);
              v193 = v258;
              (*(v192 + 80))(v100, v191, v192);
              v258 = v193;
              if (v193)
              {
                v194 = v232;
                if (qword_1EAEEBBB0 != -1)
                {
                  swift_once();
                }

                v195 = sub_195FA0678();
                __swift_project_value_buffer(v195, qword_1EAEF7250);
                v185 = v242;
                v190(v194, v100, v242);
                v196 = v258;
                v197 = v258;
                v198 = sub_195FA0658();
                v199 = sub_195FA0CA8();

                if (os_log_type_enabled(v198, v199))
                {
                  v200 = swift_slowAlloc();
                  v252 = swift_slowAlloc();
                  v253 = swift_slowAlloc();
                  v265[0] = v253;
                  *v200 = v239;
                  sub_195F9A064(&qword_1EAEEBCC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
                  v251 = v198;
                  v201 = sub_195FA1288();
                  LODWORD(v250) = v199;
                  v203 = v202;
                  v204 = v194;
                  v205 = v259->isa;
                  (v259->isa)(v204, v185);
                  v206 = sub_195EBD554(v201, v203, v265);

                  *(v200 + 4) = v206;
                  *(v200 + 12) = 2114;
                  v207 = v196;
                  v208 = _swift_stdlib_bridgeErrorToNSError();
                  *(v200 + 14) = v208;
                  v210 = v251;
                  v209 = v252;
                  *v252 = v208;
                  _os_log_impl(&dword_195EB2000, v210, v250, "Failed to remove duplicate icon at: %{public}s - %{public}@", v200, 0x16u);
                  sub_195F2DB00(v209, &unk_1EAEEE410, &qword_195FAAEB0);
                  MEMORY[0x19A8C5B70](v209, -1, -1);
                  v211 = v253;
                  __swift_destroy_boxed_opaque_existential_1Tm(v253);
                  MEMORY[0x19A8C5B70](v211, -1, -1);
                  v212 = v200;
                  v100 = v257;
                  MEMORY[0x19A8C5B70](v212, -1, -1);

                  v213 = v242;
                  result = v205(v100, v242);
                  v258 = 0;
                  v178 = v188;
                  v185 = v213;
                }

                else
                {

                  v187 = v259->isa;
                  (v259->isa)(v194, v185);
                  result = v187(v100, v185);
                  v258 = 0;
                  v178 = v188;
                }

                v184 = v237;
                v179 = v254;
                v183 = v256;
                v186 = v236;
                if (!isa)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v214 = v231;
                if (qword_1EAEEBBB0 != -1)
                {
                  swift_once();
                }

                v215 = sub_195FA0678();
                __swift_project_value_buffer(v215, qword_1EAEF7250);
                v216 = v242;
                v190(v214, v100, v242);
                v217 = sub_195FA0658();
                v218 = sub_195FA0CC8();
                if (os_log_type_enabled(v217, v218))
                {
                  v219 = swift_slowAlloc();
                  v251 = v219;
                  v253 = swift_slowAlloc();
                  v265[0] = v253;
                  LODWORD(v219->isa) = v249;
                  sub_195F9A064(&qword_1EAEEBCC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
                  LODWORD(v250) = v218;
                  v220 = sub_195FA1288();
                  v222 = v221;
                  v252 = v259->isa;
                  (v252)(v214, v216);
                  v223 = sub_195EBD554(v220, v222, v265);
                  v100 = v257;

                  v224 = v251;
                  *(&v251->isa + 4) = v223;
                  v225 = v217;
                  v226 = v217;
                  v227 = v224;
                  _os_log_impl(&dword_195EB2000, v226, v250, "Removed duplicate icon at: %{public}s", v224, 0xCu);
                  v228 = v253;
                  __swift_destroy_boxed_opaque_existential_1Tm(v253);
                  MEMORY[0x19A8C5B70](v228, -1, -1);
                  MEMORY[0x19A8C5B70](v227, -1, -1);

                  result = (v252)(v100, v216);
                }

                else
                {

                  v229 = v259->isa;
                  (v259->isa)(v214, v216);
                  result = v229(v100, v216);
                }

                v178 = v188;
                v185 = v216;
                v184 = v237;
                v183 = v256;
                v186 = v236;
                if (!isa)
                {
                  goto LABEL_83;
                }
              }

LABEL_82:
              v188 = v178;
            }
          }
        }
      }

      v118 = v44;
      v119 = *v116;
      v120 = *(v116 + 8);
      v121 = *(v116 + 16);
      v122 = *(v116 + 24);
      sub_195F5FE40(v116 + *(v117 + 48), v118, type metadata accessor for IconStore.FileVersionUpdateMigration);
      v123 = v267;
      v124 = v268;
      v125 = __swift_project_boxed_opaque_existential_1(v266, v267);
      v254 = v121;
      v255 = v119;
      v261 = v119;
      v262 = v120;
      v260 = v120;
      v263 = v121;
      v264 = v122;
      sub_195F92A8C(&v261, v125, v123, v124, v265);
      v126 = v265[4];
      v127 = v265[5];

      v128 = (v118 + *(updated + 20));
      v129 = v128[1];
      if (v129)
      {
        v130 = *v128;

        if (!v127)
        {
          goto LABEL_53;
        }

        if (v130 != v126)
        {
LABEL_49:
          v131 = sub_195FA12B8();
          v100 = v257;
          if (v131)
          {

            goto LABEL_75;
          }

LABEL_53:
          v245 = v126;
          v134 = v267;
          v133 = v268;
          __swift_project_boxed_opaque_existential_1(v266, v267);

          v265[0] = 0xD00000000000001DLL;
          v265[1] = v244;
          v261 = v130;
          v262 = v129;
          v135 = v258;
          (*(v133 + 48))(v259, v265, &v261, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v134, v133);
          v136 = v135;

          if (v135)
          {

            swift_bridgeObjectRelease_n();
            if (qword_1EAEEBBB0 != -1)
            {
              swift_once();
            }

            v137 = sub_195FA0678();
            __swift_project_value_buffer(v137, qword_1EAEF7250);

            v138 = v135;
            v139 = sub_195FA0658();
            v140 = sub_195FA0CA8();

            if (os_log_type_enabled(v139, v140))
            {
              v141 = swift_slowAlloc();
              LODWORD(v241) = v140;
              v142 = v141;
              v240 = swift_slowAlloc();
              v245 = swift_slowAlloc();
              v265[0] = v245;
              *v142 = v239;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
              inited = swift_initStackObject();
              v144 = inited;
              *(inited + 16) = v238;
              v145 = v254;
              if (!v122)
              {
                v145 = 0;
              }

              *(inited + 32) = v145;
              *(inited + 40) = v122;
              v146 = v260;
              *(inited + 48) = v255;
              *(inited + 56) = v146;

              sub_195EB6308(v144, &v261);
              v258 = v136;
              v269 = v261;

              v255 = v139;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
              sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
              v147 = sub_195FA0828();
              v149 = v148;

              swift_bridgeObjectRelease_n();
              v150 = sub_195EBD554(v147, v149, v265);

              *(v142 + 4) = v150;
              *(v142 + 12) = 2114;
              v151 = v258;
              v152 = v258;
              v153 = _swift_stdlib_bridgeErrorToNSError();
              *(v142 + 14) = v153;
              v154 = v240;
              *v240 = v153;
              v155 = v255;
              _os_log_impl(&dword_195EB2000, v255, v241, "Failed to save icon version for: %{public}s - %{public}@", v142, 0x16u);
              sub_195F2DB00(v154, &unk_1EAEEE410, &qword_195FAAEB0);
              MEMORY[0x19A8C5B70](v154, -1, -1);
              v156 = v245;
              __swift_destroy_boxed_opaque_existential_1Tm(v245);
              MEMORY[0x19A8C5B70](v156, -1, -1);
              MEMORY[0x19A8C5B70](v142, -1, -1);

              v258 = 0;
            }

            else
            {

              v258 = 0;
            }
          }

          else
          {

            if (qword_1EAEEBBB0 != -1)
            {
              swift_once();
            }

            v258 = 0;
            v157 = sub_195FA0678();
            __swift_project_value_buffer(v157, qword_1EAEF7250);

            v158 = sub_195FA0658();
            v159 = sub_195FA0CC8();

            if (os_log_type_enabled(v158, v159))
            {
              v160 = swift_slowAlloc();
              LODWORD(v240) = v159;
              v161 = v160;
              v241 = swift_slowAlloc();
              v265[0] = v241;
              *v161 = v230;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
              v162 = swift_initStackObject();
              v163 = v162;
              *(v162 + 16) = v238;
              v164 = v254;
              if (!v122)
              {
                v164 = 0;
              }

              *(v162 + 32) = v164;
              *(v162 + 40) = v122;
              v165 = v255;
              v255 = v130;
              v166 = v260;
              *(v162 + 48) = v165;
              *(v162 + 56) = v166;

              sub_195EB6308(v163, &v261);
              v269 = v261;

              v254 = v158;
              v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
              sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
              v167 = sub_195FA0828();
              v169 = v168;

              swift_bridgeObjectRelease_n();
              v170 = sub_195EBD554(v167, v169, v265);

              *(v161 + 4) = v170;
              *(v161 + 12) = 2082;
              if (v127)
              {
                v171 = v245;
              }

              else
              {
                v171 = 1701736302;
              }

              if (v127)
              {
                v172 = v127;
              }

              else
              {
                v172 = 0xE400000000000000;
              }

              v173 = sub_195EBD554(v171, v172, v265);

              *(v161 + 14) = v173;
              *(v161 + 22) = 2082;
              v174 = sub_195EBD554(v255, v129, v265);

              *(v161 + 24) = v174;
              v175 = v254;
              _os_log_impl(&dword_195EB2000, v254, v240, "Migrated icon version for: %{public}s. %{public}s -> %{public}s", v161, 0x20u);
              v176 = v241;
              swift_arrayDestroy();
              MEMORY[0x19A8C5B70](v176, -1, -1);
              MEMORY[0x19A8C5B70](v161, -1, -1);
            }

            else
            {
            }
          }

          v100 = v257;
LABEL_75:
          v44 = v259;
          v97 = v256;
LABEL_29:
          result = sub_195F99FB4(v44, type metadata accessor for IconStore.FileVersionUpdateMigration);
          v94 = v247;
          goto LABEL_30;
        }
      }

      else
      {
        if (!v127)
        {
          v129 = 0xE100000000000000;
          v130 = 48;
          goto LABEL_53;
        }

        v130 = v126;
        v129 = v127;
      }

      if (v127 != v129)
      {
        goto LABEL_49;
      }

      v44 = v259;
      v97 = v256;
      v100 = v257;
      goto LABEL_29;
    }

    v40 = *(v37 + 8 * v48);
    ++v42;
    if (v40)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_195F92A8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a2;
  v27 = a3;
  v22 = sub_195FA0638();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_195FA0478();
  v23 = *(v10 - 8);
  v24 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[3];
  v20 = a1[2];
  v21 = v13;
  sub_195F37930(v13, v14, v20, v15);
  v29 = 0uLL;
  v30 = 0;
  v32 = 0x80;
  v31 = 0;
  sub_195F2D344(v9);
  sub_195FA03C8();

  (*(v7 + 8))(v9, v22);
  v28[0] = 0xD00000000000001DLL;
  v28[1] = 0x8000000195FC3680;
  (*(v25 + 56))(&v29, v12, v28, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v27);

  (*(v23 + 8))(v12, v24);
  v16 = v29;
  v17 = v20;
  *a5 = v21;
  *(a5 + 8) = v14;
  *(a5 + 16) = v17;
  *(a5 + 24) = v15;
  *(a5 + 32) = v16;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IconStore.addIcons(for:)(Swift::OpaquePointer a1)
{
  v2 = 0;
  v3 = *(a1._rawValue + 2);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (a1._rawValue + 48 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_23;
    }

    v7 = v5[7];
    ++v2;
    v5 += 6;
    if (!v7)
    {
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v12 = v5[2];
      v11 = v5[3];

      aBlock[0] = v4;
      v33 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_195F3925C(0, *(v4 + 16) + 1, 1);
        v4 = aBlock[0];
      }

      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_195F3925C((v13 > 1), v14 + 1, 1);
        v4 = aBlock[0];
      }

      *(v4 + 16) = v14 + 1;
      v15 = (v4 + 48 * v14);
      v15[4] = v8;
      v15[5] = v9;
      v15[6] = v33;
      v15[7] = 0;
      v15[8] = v12;
      v15[9] = v11;
      v2 = v6;
      goto LABEL_2;
    }
  }

  if (!*(v4 + 16))
  {

    return;
  }

  v16 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v17 = *(v32 + 24);
  v18 = swift_allocObject();
  v18[2] = v32;
  v18[3] = v4;
  v18[4] = &v35;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_195F9967C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_195EC7340;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EC7454;
  aBlock[3] = &block_descriptor_12;
  v20 = _Block_copy(aBlock);

  dispatch_sync(v17, v20);
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    goto LABEL_24;
  }

  v21 = v35;
  v22 = *(v35 + 16);
  if (v22)
  {
    aBlock[0] = v16;

    sub_195F3923C(0, v22, 0);
    v23 = aBlock[0];
    v24 = (v21 + 56);
    do
    {
      v25 = *(v24 - 3);
      v26 = *(v24 - 2);
      v27 = *(v24 - 1);
      v28 = *v24;
      aBlock[0] = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);

      if (v30 >= v29 >> 1)
      {
        sub_195F3923C((v29 > 1), v30 + 1, 1);
        v23 = aBlock[0];
      }

      v24 += 6;
      *(v23 + 16) = v30 + 1;
      v31 = (v23 + 32 * v30);
      v31[4] = v25;
      v31[5] = v26;
      v31[6] = v27;
      v31[7] = v28;
      --v22;
    }

    while (v22);

    aBlock[0] = v23;
    sub_195FA06D8();
  }
}

uint64_t sub_195F93064(void *a1, uint64_t a2, char **a3)
{
  v4 = a1[7];
  v5 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v4);
  (*(v5 + 16))(v47, v4, v5);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 72);
    do
    {
      v8 = *(v7 - 5);
      v9 = *(v7 - 4);
      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      v12 = *v7;
      v39 = *(v7 - 1);
      v13 = v48;
      v14 = v49;
      v15 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v40[0] = v8;
      v40[1] = v9;
      v38 = v10;
      v40[2] = v10;
      v40[3] = v11;

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_195F92A8C(v40, v15, v13, v14, &v41);

      v16 = v45;
      v17 = v46;

      if (v17)
      {
        if (!v12)
        {

LABEL_15:
          v19 = v48;
          v20 = v49;
          v21 = __swift_project_boxed_opaque_existential_1(v47, v48);
          v41 = v8;
          v42 = v9;
          v43 = v10;
          v44 = v11;
          v45 = v39;
          v46 = v12;
          sub_195F936FC(&v41, v21, v19, v20);
          if (qword_1EAEEBBB0 != -1)
          {
            swift_once();
          }

          v22 = sub_195FA0678();
          __swift_project_value_buffer(v22, qword_1EAEF7250);

          v23 = sub_195FA0658();
          v24 = sub_195FA0CC8();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v40[0] = v37;
            *v25 = 136446210;

            swift_bridgeObjectRetain_n();
            v41 = sub_195F60D0C(v8, v9, v10, v11);
            v42 = v26;
            MEMORY[0x19A8C3F70](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
            if (v12)
            {
              v27 = v39;
            }

            else
            {
              v27 = 1701736302;
            }

            if (v12)
            {
              v28 = v12;
            }

            else
            {
              v28 = 0xE400000000000000;
            }

            MEMORY[0x19A8C3F70](v27, v28);

            v29 = sub_195EBD554(v41, v42, v40);

            *(v25 + 4) = v29;
            _os_log_impl(&dword_195EB2000, v23, v24, "Added icon: %{public}s", v25, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v37);
            MEMORY[0x19A8C5B70](v37, -1, -1);
            MEMORY[0x19A8C5B70](v25, -1, -1);
          }

          v30 = *a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a3 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v30 = sub_195F390BC(0, *(v30 + 2) + 1, 1, v30);
            *a3 = v30;
          }

          v33 = *(v30 + 2);
          v32 = *(v30 + 3);
          if (v33 >= v32 >> 1)
          {
            v30 = sub_195F390BC((v32 > 1), v33 + 1, 1, v30);
            *a3 = v30;
          }

          *(v30 + 2) = v33 + 1;
          v34 = &v30[48 * v33];
          *(v34 + 4) = v8;
          *(v34 + 5) = v9;
          *(v34 + 6) = v38;
          *(v34 + 7) = v11;
          *(v34 + 8) = v39;
          *(v34 + 9) = v12;
          goto LABEL_5;
        }

        if (v16 == v39 && v17 == v12)
        {

          goto LABEL_4;
        }

        v18 = sub_195FA12B8();

        if ((v18 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (v12)
      {
        goto LABEL_15;
      }

LABEL_4:

LABEL_5:
      v7 += 6;
      --v6;
    }

    while (v6);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

void sub_195F936FC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v94 = a4;
  v5 = v4;
  v97 = a2;
  v98 = a3;
  v108[2] = *MEMORY[0x1E69E9840];
  v99 = sub_195FA0638();
  v93 = *(v99 - 1);
  MEMORY[0x1EEE9AC00](v99);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_195FA0478();
  v96 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = a1[5];
  v87 = a1[4];
  v92 = v15;
  BSDispatchQueueAssert();
  v16 = objc_allocWithZone(MEMORY[0x1E69A8A00]);

  v17 = sub_195FA0888();

  v101 = [v16 initWithBundleIdentifier_];

  v88 = v11;
  v18 = v11;
  v19 = OBJC_IVAR____TtC14ChronoServices9IconStore_iconsFolderURL;
  v90 = v12;
  v20 = v12;
  v21 = v5;
  v89 = v13;
  v22 = v13;
  v23 = v94;
  v91 = v14;
  sub_195F37930(v18, v20, v22, v14);
  v103 = 0;
  v104 = 0;
  v105 = 0;
  v107 = 0x80;
  v106 = 0;
  sub_195F2D344(v8);
  sub_195FA03C8();

  (*(v93 + 8))(v8, v99);
  v24 = *(v23 + 80);
  v99 = v10;
  v25 = v10;
  v26 = v98;
  v27 = v95;
  v24(v25, v98, v23);
  v28 = v27;
  if (v27)
  {

    v28 = 0;
  }

  v102 = 0;
  v29 = sub_195FA0438();
  v30 = (*(v23 + 16))(v29);

  if ((v30 & 1) != 0 && (v102 & 1) != 0 || (sub_195F9B0FC(v21 + v19, 1, 0, v26, v23), !v28))
  {
    v44 = v21;
    v45 = [objc_opt_self() imageDescriptorNamed_];
    [v45 setShouldApplyMask_];
    v46 = [v101 prepareImageForDescriptor_];
    v47 = v100;
    if (v46 && (v48 = v46, v49 = [v46 CGImage], v48, v49))
    {
      v50 = v23;
      v95 = v45;
      v51 = v44[12];
      v52 = v44[13];
      v53 = __swift_project_boxed_opaque_existential_1(v44 + 9, v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA90, qword_195FAC9A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_195FAC910;
      *(inited + 32) = v49;
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v107 = 0x80;
      v106 = 0;
      v55 = v49;
      v56 = v99;
      sub_195F99A00(inited, v99, &v103, v53, v51, v52);
      if (v28)
      {
        v98 = v55;
        sub_195F99EF0(v103, v104, v105, v106 | (v107 << 32));
        swift_setDeallocating();
        swift_arrayDestroy();
        v69 = v100;
        v70 = v91;
        v71 = v90;
        if (qword_1EAEEBBB0 != -1)
        {
          swift_once();
        }

        v72 = sub_195FA0678();
        __swift_project_value_buffer(v72, qword_1EAEF7250);

        v73 = v28;
        v74 = sub_195FA0658();
        v75 = sub_195FA0CA8();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v97 = 0;
          v79 = v78;
          v103 = v78;
          *v76 = 136446466;
          v80 = sub_195F60D0C(v88, v71, v89, v70);
          v82 = v69;
          v83 = sub_195EBD554(v80, v81, &v103);

          *(v76 + 4) = v83;
          *(v76 + 12) = 2114;
          v84 = v28;
          v85 = _swift_stdlib_bridgeErrorToNSError();
          *(v76 + 14) = v85;
          *v77 = v85;
          _os_log_impl(&dword_195EB2000, v74, v75, "Error writing image data for %{public}s: %{public}@", v76, 0x16u);
          sub_195F2DB00(v77, &unk_1EAEEE410, &qword_195FAAEB0);
          MEMORY[0x19A8C5B70](v77, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v79);
          MEMORY[0x19A8C5B70](v79, -1, -1);
          MEMORY[0x19A8C5B70](v76, -1, -1);

          (*(v96 + 8))(v99, v82);
        }

        else
        {

          (*(v96 + 8))(v99, v69);
        }
      }

      else
      {
        sub_195F99EF0(v103, v104, v105, v106 | (v107 << 32));
        swift_setDeallocating();
        swift_arrayDestroy();
        v103 = 0xD00000000000001DLL;
        v104 = 0x8000000195FC3680;
        v108[0] = v87;
        v108[1] = v92;
        (*(v50 + 48))(v56, &v103, v108, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v98, v50);

        (*(v96 + 8))(v56, v100);
      }
    }

    else
    {
      if (qword_1EAEEBBB0 != -1)
      {
        swift_once();
      }

      v57 = sub_195FA0678();
      __swift_project_value_buffer(v57, qword_1EAEF7250);

      v58 = v90;

      v59 = v91;

      v60 = sub_195FA0658();
      v61 = sub_195FA0CA8();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = v45;
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v103 = v64;
        *v63 = 136446210;
        v65 = sub_195F60D0C(v88, v58, v89, v59);
        v67 = sub_195EBD554(v65, v66, &v103);

        *(v63 + 4) = v67;
        _os_log_impl(&dword_195EB2000, v60, v61, "Failed to generate icon image for: %{public}s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x19A8C5B70](v64, -1, -1);
        MEMORY[0x19A8C5B70](v63, -1, -1);
      }

      else
      {
      }

      (*(v96 + 8))(v99, v47);
    }
  }

  else
  {
    if (qword_1EAEEBBB0 != -1)
    {
      swift_once();
    }

    v31 = sub_195FA0678();
    __swift_project_value_buffer(v31, qword_1EAEF7250);

    v32 = v28;
    v33 = sub_195FA0658();
    v34 = sub_195FA0CA8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v103 = v37;
      *v35 = 136446466;
      sub_195F9A064(&qword_1EAEEBCC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v38 = v100;
      v39 = sub_195FA1288();
      v41 = sub_195EBD554(v39, v40, &v103);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2114;
      v42 = v28;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v43;
      *v36 = v43;
      _os_log_impl(&dword_195EB2000, v33, v34, "Error creating image folder at %{public}s: %{public}@", v35, 0x16u);
      sub_195F2DB00(v36, &unk_1EAEEE410, &qword_195FAAEB0);
      MEMORY[0x19A8C5B70](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x19A8C5B70](v37, -1, -1);
      MEMORY[0x19A8C5B70](v35, -1, -1);
    }

    else
    {

      v38 = v100;
    }

    v68 = v99;
    swift_willThrow();

    (*(v96 + 8))(v68, v38);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IconStore.removeIcons(for:)(Swift::OpaquePointer a1)
{
  v105 = sub_195FA0638();
  v2 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_195FA0478();
  v4 = *(v108 - 8);
  v5 = MEMORY[0x1EEE9AC00](v108);
  MEMORY[0x1EEE9AC00](v5);
  v8 = *(a1._rawValue + 2);
  if (v8)
  {
    v107 = &v92 - v6;
    v95 = v7;
    v9 = v130[7];
    v10 = v130[8];
    __swift_project_boxed_opaque_existential_1(v130 + 4, v9);
    (*(v10 + 16))(&v127, v9, v10);
    v103 = (v2 + 8);
    v102 = OBJC_IVAR____TtC14ChronoServices9IconStore_iconsFolderURL;
    v101 = (v4 + 8);
    v93 = (v4 + 16);
    v11 = (a1._rawValue + 56);
    *&v12 = 136446210;
    v96 = v12;
    v100 = xmmword_195FAC280;
    *(&v12 + 1) = 2;
    v99 = xmmword_195FAC070;
    *&v12 = 136446466;
    v94 = v12;
    do
    {
      v118 = v8;
      v14 = *(v11 - 3);
      v13 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      v117 = v11;
      v17 = v128;
      v18 = v129;
      v19 = __swift_project_boxed_opaque_existential_1(&v127, v128);
      v120[0] = v14;
      v120[1] = v13;
      v112 = v15;
      v120[2] = v15;
      v120[3] = v16;

      v113 = v13;

      sub_195F92A8C(v120, v19, v17, v18, &v121);
      v20 = v122;
      v110 = v121;
      v21 = v124;
      v111 = v123;
      v23 = v125;
      v22 = v126;
      if (qword_1EAEEBBB0 != -1)
      {
        swift_once();
      }

      v24 = sub_195FA0678();
      v25 = __swift_project_value_buffer(v24, qword_1EAEF7250);

      v109 = v25;
      v26 = sub_195FA0658();
      v27 = sub_195FA0CC8();

      v28 = os_log_type_enabled(v26, v27);
      v116 = v20;
      v115 = v21;
      v114 = v22;
      v106 = v23;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v98 = v14;
        v30 = v29;
        v97 = swift_slowAlloc();
        v120[0] = v97;
        *v30 = v96;

        swift_bridgeObjectRetain_n();
        v121 = sub_195F60D0C(v110, v20, v111, v21);
        v122 = v31;
        MEMORY[0x19A8C3F70](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
        if (v22)
        {
          v32 = v23;
        }

        else
        {
          v32 = 1701736302;
        }

        if (v22)
        {
          v33 = v22;
        }

        else
        {
          v33 = 0xE400000000000000;
        }

        MEMORY[0x19A8C3F70](v32, v33);

        v34 = sub_195EBD554(v121, v122, v120);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_195EB2000, v26, v27, "Removing icon: %{public}s", v30, 0xCu);
        v35 = v97;
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        MEMORY[0x19A8C5B70](v35, -1, -1);
        v36 = v30;
        v14 = v98;
        MEMORY[0x19A8C5B70](v36, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
      inited = swift_initStackObject();
      v38 = inited;
      *(inited + 16) = v100;
      v39 = v112;
      if (!v16)
      {
        v39 = 0;
      }

      *(inited + 32) = v39;
      *(inited + 40) = v16;
      v40 = v113;
      *(inited + 48) = v14;
      *(inited + 56) = v40;

      sub_195EB6308(v38, &v121);
      v41 = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
      v42 = swift_allocObject();
      *(v42 + 16) = v99;
      v120[0] = v41;
      v43 = sub_195EB5F80();
      v44 = sub_195EB6074(v43);
      v46 = v45;

      *(v42 + 32) = v44;
      *(v42 + 40) = v46;
      v120[0] = v42;

      sub_195EB6214(v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
      sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
      sub_195FA0828();

      v121 = 0;
      v122 = 0;
      v123 = 0;
      BYTE4(v124) = 0x80;
      LODWORD(v124) = 0;
      v48 = v104;
      sub_195F2D344(v104);
      v49 = v107;
      sub_195FA03C8();
      v50 = v49;

      (*v103)(v48, v105);
      v51 = v129;
      __swift_project_boxed_opaque_existential_1(&v127, v128);
      v52 = sub_195FA0438();
      LOBYTE(v48) = (*(v51 + 8))(v52);

      if (v48)
      {
        v53 = v128;
        v54 = v129;
        __swift_project_boxed_opaque_existential_1(&v127, v128);
        v55 = v119;
        (*(v54 + 80))(v50, v53, v54);
        v56 = v116;
        v57 = v115;
        v119 = v55;
        v58 = v114;
        if (v55)
        {

          v59 = v119;
          v60 = v119;
          v61 = sub_195FA0658();
          v62 = sub_195FA0CA8();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = v56;
            v64 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v120[0] = v65;
            *v64 = v94;

            v121 = sub_195F60D0C(v110, v63, v111, v57);
            v122 = v66;
            MEMORY[0x19A8C3F70](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
            if (v58)
            {
              v67 = v106;
            }

            else
            {
              v67 = 1701736302;
            }

            if (v58)
            {
              v68 = v58;
            }

            else
            {
              v68 = 0xE400000000000000;
            }

            MEMORY[0x19A8C3F70](v67, v68);

            v69 = sub_195EBD554(v121, v122, v120);

            *(v64 + 4) = v69;
            *(v64 + 12) = 2114;
            v70 = v119;
            v71 = v119;
            v72 = _swift_stdlib_bridgeErrorToNSError();
            *(v64 + 14) = v72;
            v73 = v113;
            *v113 = v72;
            _os_log_impl(&dword_195EB2000, v61, v62, "Failed to remove icon: %{public}s - %{public}@", v64, 0x16u);
            sub_195F2DB00(v73, &unk_1EAEEE410, &qword_195FAAEB0);
            MEMORY[0x19A8C5B70](v73, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm(v65);
            MEMORY[0x19A8C5B70](v65, -1, -1);
            MEMORY[0x19A8C5B70](v64, -1, -1);

            (*v101)(v107, v108);
          }

          else
          {

            (*v101)(v50, v108);
          }

          v119 = 0;
        }

        else
        {
          v74 = v95;
          v75 = v108;
          (*v93)(v95, v50, v108);

          v76 = sub_195FA0658();
          v77 = sub_195FA0CC8();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = v56;
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v120[0] = v80;
            *v79 = v94;

            v121 = sub_195F60D0C(v110, v78, v111, v57);
            v122 = v81;
            MEMORY[0x19A8C3F70](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
            if (v58)
            {
              v82 = v106;
            }

            else
            {
              v82 = 1701736302;
            }

            if (v58)
            {
              v83 = v58;
            }

            else
            {
              v83 = 0xE400000000000000;
            }

            MEMORY[0x19A8C3F70](v82, v83);

            v84 = sub_195EBD554(v121, v122, v120);

            *(v79 + 4) = v84;
            *(v79 + 12) = 2082;
            sub_195F9A064(&qword_1EAEEBCC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v85 = v95;
            v86 = sub_195FA1288();
            v88 = v87;
            v89 = *v101;
            (*v101)(v85, v108);
            v90 = sub_195EBD554(v86, v88, v120);

            *(v79 + 14) = v90;
            _os_log_impl(&dword_195EB2000, v76, v77, "Removed icon for: %{public}s (%{public}s)", v79, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x19A8C5B70](v80, -1, -1);
            MEMORY[0x19A8C5B70](v79, -1, -1);

            v89(v107, v108);
          }

          else
          {

            v91 = *v101;
            (*v101)(v74, v75);
            v91(v50, v75);
          }
        }
      }

      else
      {
        (*v101)(v50, v108);
      }

      v11 = v117 + 4;
      v8 = v118 - 1;
    }

    while (v118 != 1);
    __swift_destroy_boxed_opaque_existential_1Tm(&v127);
  }
}

uint64_t IconStore.ingestIcon(url:with:)(unint64_t a1, uint64_t *a2)
{
  v117 = a1;
  v5 = sub_195FA0638();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v105[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_195FA0478();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v116 = &v105[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v105[-v18];
  v20 = a2[3];
  if (v20)
  {
    v118 = v17;
    v119 = v16;
    v139 = v15;
    v120 = result;
    v111 = v3;
    v109 = v5;
    v21 = *a2;
    v22 = a2[1];
    v23 = a2[2];
    v24 = a2[5];
    v108 = a2[4];
    v115 = v24;
    v121 = v2;

    v113 = v21;
    v112 = v23;
    sub_195F37930(v21, v22, v23, v20);
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v130 = 0x80;
    v129 = 0;
    sub_195F2D344(v8);
    sub_195FA03C8();

    (*(v6 + 8))(v8, v109);
    if (qword_1EAEEBBB0 != -1)
    {
      swift_once();
    }

    v25 = sub_195FA0678();
    v26 = __swift_project_value_buffer(v25, qword_1EAEF7250);
    v27 = v139;
    v28 = *(v139 + 16);
    v29 = v120;
    v28(v118, v117, v120);
    v28(v119, v19, v29);
    v30 = v115;

    v109 = v26;
    v31 = sub_195FA0658();
    v32 = sub_195FA0CC8();

    v33 = os_log_type_enabled(v31, v32);
    v114 = v20;
    v110 = v22;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v136 = v107;
      *v34 = 136446722;

      swift_bridgeObjectRetain_n();
      v126 = sub_195F60D0C(v113, v22, v112, v20);
      v127 = v35;
      v106 = v32;
      MEMORY[0x19A8C3F70](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
      if (v30)
      {
        v36 = v108;
      }

      else
      {
        v36 = 1701736302;
      }

      if (v30)
      {
        v37 = v30;
      }

      else
      {
        v37 = 0xE400000000000000;
      }

      MEMORY[0x19A8C3F70](v36, v37);

      v38 = sub_195EBD554(v126, v127, &v136);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      sub_195F9A064(&qword_1EAEEBCC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v39 = v118;
      v40 = sub_195FA1288();
      v42 = v41;
      v43 = *(v139 + 8);
      v43(v39, v120);
      v44 = sub_195EBD554(v40, v42, &v136);
      v29 = v120;

      *(v34 + 14) = v44;
      *(v34 + 22) = 2082;
      v45 = v119;
      v46 = sub_195FA1288();
      v48 = v47;
      v119 = v43;
      v43(v45, v29);
      v49 = sub_195EBD554(v46, v48, &v136);

      *(v34 + 24) = v49;
      _os_log_impl(&dword_195EB2000, v31, v106, "Ingesting icon: %{public}s from url: %{public}s -> %{public}s", v34, 0x20u);
      v50 = v107;
      swift_arrayDestroy();
      MEMORY[0x19A8C5B70](v50, -1, -1);
      MEMORY[0x19A8C5B70](v34, -1, -1);
    }

    else
    {

      v51 = *(v27 + 8);
      v51(v119, v29);
      v119 = v51;
      v51(v118, v29);
    }

    v52 = v111;
    v53 = v121;
    v54 = v121[7];
    v55 = v121[8];
    __swift_project_boxed_opaque_existential_1(v121 + 4, v54);
    (*(v55 + 16))(&v136, v54, v55);
    v56 = v116;
    v120 = v19;
    sub_195FA03F8();
    v57 = v137;
    v58 = v138;
    __swift_project_boxed_opaque_existential_1(&v136, v137);
    sub_195F9B0FC(v56, 1, 0, v57, v58);
    if (!v52)
    {
      v59 = v53[7];
      v60 = v53[8];
      __swift_project_boxed_opaque_existential_1(v53 + 4, v59);
      (*(v60 + 8))(v133, v59, v60);
      v61 = v134;
      v62 = v135;
      v63 = __swift_project_boxed_opaque_existential_1(v133, v134);
      v64 = v110;
      v122 = v113;
      v123 = v110;
      v124 = v112;
      v125 = v114;
      sub_195F92A8C(&v122, v63, v61, v62, &v126);
      v65 = v131;
      v66 = v132;

      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      v67 = sub_195F99688(v65, v66, v108, v115);
      if (v68)
      {
        v69 = v68;
        v111 = v67;
        v118 = v66;
        v70 = v137;
        v71 = v138;
        __swift_project_boxed_opaque_existential_1(&v136, v137);
        (*(v71 + 80))(v120, v70, v71);
        v107 = v65;
        v72 = v137;
        v73 = v138;
        __swift_project_boxed_opaque_existential_1(&v136, v137);
        (*(v73 + 72))(v117, v120, v72, v73);
        v75 = v121[7];
        v76 = v121[8];
        __swift_project_boxed_opaque_existential_1(v121 + 4, v75);
        (*(v76 + 8))(v133, v75, v76);
        v77 = v134;
        v78 = v135;
        v79 = __swift_project_boxed_opaque_existential_1(v133, v134);
        v122 = v113;
        v123 = v64;
        v124 = v112;
        v125 = v114;
        sub_195F92A8C(&v122, v79, v77, v78, &v126);
        v80 = v131;
        v81 = v132;

        __swift_destroy_boxed_opaque_existential_1Tm(v133);
        if (v81)
        {
          if (v80 == v111 && v81 == v69)
          {

LABEL_26:

            v85 = v118;

            v86 = sub_195FA0658();
            v87 = sub_195FA0CC8();
            v117 = v69;
            v88 = v85;

            v89 = v114;

            LODWORD(v115) = v87;
            if (os_log_type_enabled(v86, v87))
            {
              v90 = swift_slowAlloc();
              v109 = swift_slowAlloc();
              v126 = v109;
              *v90 = 136446722;
              v91 = v112;
              v92 = sub_195F60D0C(v113, v64, v112, v89);
              v94 = v64;
              v95 = sub_195EBD554(v92, v93, &v126);

              *(v90 + 4) = v95;
              *(v90 + 12) = 2082;
              if (v88)
              {
                v96 = v107;
              }

              else
              {
                v96 = 1701736302;
              }

              if (v88)
              {
                v97 = v88;
              }

              else
              {
                v97 = 0xE400000000000000;
              }

              v98 = v91;
              v99 = sub_195EBD554(v96, v97, &v126);

              *(v90 + 14) = v99;
              v64 = v94;
              *(v90 + 22) = 2082;
              v100 = sub_195EBD554(v111, v117, &v126);

              *(v90 + 24) = v100;
              v89 = v114;
              _os_log_impl(&dword_195EB2000, v86, v115, "Ingested updated icon version for: %{public}s. %{public}s -> %{public}s", v90, 0x20u);
              v101 = v109;
              swift_arrayDestroy();
              v56 = v116;
              MEMORY[0x19A8C5B70](v101, -1, -1);
              v102 = v90;
              v103 = v113;
              MEMORY[0x19A8C5B70](v102, -1, -1);
            }

            else
            {

              v103 = v113;
              v98 = v112;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED9F8, &qword_195FB0500);
            v104 = swift_allocObject();
            *(v104 + 16) = xmmword_195FAC070;
            *(v104 + 32) = v103;
            *(v104 + 40) = v64;
            *(v104 + 48) = v98;
            *(v104 + 56) = v89;
            v126 = v104;
            sub_195FA06D8();
            goto LABEL_17;
          }

          v82 = sub_195FA12B8();

          if (v82)
          {
            goto LABEL_26;
          }
        }

        v83 = v137;
        v84 = v138;
        __swift_project_boxed_opaque_existential_1(&v136, v137);
        v126 = 0xD00000000000001DLL;
        v127 = 0x8000000195FC3680;
        v133[0] = v108;
        v133[1] = v115;
        (*(v84 + 48))(v120, &v126, v133, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v83, v84);

        goto LABEL_26;
      }
    }

LABEL_17:

    v74 = v119;
    v119(v56, v29);
    v74(v120, v29);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v136);
  }

  return result;
}

uint64_t IconStore.iconVersion(for:)(__int128 *a1)
{
  v11 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  (*(v5 + 8))(v17, v4, v5);
  v6 = v18;
  v7 = v19;
  v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v12 = v11;
  v13 = v2;
  v14 = v3;
  sub_195F92A8C(&v12, v8, v6, v7, v15);
  v9 = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v9;
}

uint64_t IconStore.iconUpdatePublisher(filterPredicate:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE660, &qword_195FB0508);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *a1;
  v10[1] = *(v1 + 16);
  *(swift_allocObject() + 16) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE668, &qword_195FB0510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE670, &qword_195FB0518);
  sub_195EB5F38(&qword_1EAEEBB90, &qword_1EAEEE668, &qword_195FB0510, MEMORY[0x1E695BF88]);
  sub_195FA0748();

  sub_195EB5F38(&unk_1EAEEBB98, &qword_1EAEEE660, &qword_195FB0508, MEMORY[0x1E695BC80]);
  v8 = sub_195FA0738();
  (*(v4 + 8))(v6, v3);
  return v8;
}

void sub_195F96094(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v5 = a2;
    v6 = 0;
    if (a2)
    {
      v7 = 0x65746F6D6572;
    }

    else
    {
      v7 = 0x6C61636F6CLL;
    }

    v8 = 0xE600000000000000;
    if (!a2)
    {
      v8 = 0xE500000000000000;
    }

    v38 = v8;
    v39 = v7;
    v35 = v4 - 1;
    v9 = v3 + 56;
    v37 = MEMORY[0x1E69E7CC0];
    v41 = *a1;
    v42 = *(*a1 + 16);
    v34 = v3 + 56;
    while (1)
    {
      v10 = (v9 + 32 * v6);
      v11 = v6;
      while (1)
      {
        if (v11 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v12 = *(v10 - 3);
        v13 = *(v10 - 2);
        v15 = *(v10 - 1);
        v14 = *v10;
        if (v5)
        {
          break;
        }

        if (!v14)
        {
          goto LABEL_27;
        }

LABEL_17:
        v16 = qword_1EAEEBBB0;

        if (v16 != -1)
        {
          swift_once();
        }

        v17 = sub_195FA0678();
        __swift_project_value_buffer(v17, qword_1EAEF7250);

        v18 = sub_195FA0658();
        v19 = sub_195FA0C98();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v43 = v21;
          *v20 = 136446466;
          v22 = sub_195EBD554(v39, v38, &v43);

          *(v20 + 4) = v22;
          *(v20 + 12) = 2082;
          if (v14)
          {
            v23 = v15;
          }

          else
          {
            v23 = 0x6C61636F6CLL;
          }

          if (v14)
          {
            v24 = v14;
          }

          else
          {
            v24 = 0xE500000000000000;
          }

          v25 = sub_195EBD554(v23, v24, &v43);

          *(v20 + 14) = v25;
          _os_log_impl(&dword_195EB2000, v18, v19, "Icon update not published - predicate: %{public}s vs source: %{public}s", v20, 0x16u);
          swift_arrayDestroy();
          v26 = v21;
          v3 = v41;
          MEMORY[0x19A8C5B70](v26, -1, -1);
          v27 = v20;
          v5 = a2;
          MEMORY[0x19A8C5B70](v27, -1, -1);
        }

        else
        {
        }

        ++v11;
        v10 += 4;
        if (v42 == v11)
        {
          goto LABEL_34;
        }
      }

      if (v5 == 1 && !v14)
      {
        goto LABEL_17;
      }

LABEL_27:

      v28 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_195F3923C(0, *(v37 + 16) + 1, 1);
        v28 = v44;
      }

      v31 = *(v28 + 16);
      v30 = *(v28 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_195F3923C((v30 > 1), v31 + 1, 1);
        v28 = v44;
      }

      v6 = v11 + 1;
      *(v28 + 16) = v31 + 1;
      v37 = v28;
      v32 = (v28 + 32 * v31);
      v32[4] = v12;
      v32[5] = v13;
      v32[6] = v15;
      v32[7] = v14;
      v9 = v34;
      v3 = v41;
      if (v35 == v11)
      {
        goto LABEL_34;
      }
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v33 = v37;
  if (!*(v37 + 16))
  {

    v33 = 0;
  }

  *a3 = v33;
}

BOOL IconStore.iconExists(for:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = v1[7];
  v8 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v7);
  (*(v8 + 8))(v33, v7, v8);
  v9 = v34;
  v10 = v35;
  v11 = __swift_project_boxed_opaque_existential_1(v33, v34);
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  sub_195F92A8C(&v26, v11, v9, v10, &v30);
  v12 = v32;

  if (v12)
  {

    v13 = v2[12];
    v14 = v2[13];
    v15 = __swift_project_boxed_opaque_existential_1(v2 + 9, v13);
    v26 = v3;
    v27 = v4;
    v28 = v5;
    v29 = v6;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = sub_195FA0DB8();
    v18 = *(v17 - 8);
    MEMORY[0x1EEE9AC00](v17);
    v20 = &v26 - v19;
    sub_195F966AC(&v26, v15, v13, v14, &v26 - v19);
    v21 = *(AssociatedTypeWitness - 8);
    v22 = (*(v21 + 48))(v20, 1, AssociatedTypeWitness);
    v23 = v22 != 1;
    if (v22 == 1)
    {
      (*(v18 + 8))(v20, v17);
      v30 = 0u;
      v31 = 0u;
    }

    else
    {
      *(&v31 + 1) = AssociatedTypeWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*(v21 + 32))(boxed_opaque_existential_1, v20, AssociatedTypeWitness);
    }

    sub_195F2DB00(&v30, &unk_1EAEED4B0, &qword_195FAC080);
  }

  else
  {
    v23 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v23;
}

uint64_t sub_195F966AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v32 = a3;
  v33 = a2;
  v34 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v35 = AssociatedTypeWitness;
  v36 = v7;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v30 = &v25 - v8;
  v9 = sub_195FA0638();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_195FA0478();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[3];
  v26 = a1[2];
  v27 = v17;
  v28 = v19;
  v29 = v18;
  sub_195F37930(v17, v18, v26, v19);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v41 = 0x80;
  v40 = 0;
  sub_195F2D344(v12);
  sub_195FA03C8();

  (*(v10 + 8))(v12, v9);
  v20 = v30;
  (*(v31 + 48))(v16, v32);
  (*(v14 + 8))(v16, v13);
  v21 = v35;
  v22 = v36;
  v23 = v34;
  (*(v36 + 32))(v34, v20, v35);
  return (*(v22 + 56))(v23, 0, 1, v21);
}

uint64_t IconStore.iconURL(for:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_195FA0638();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v19 = *a1;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  if (IconStore.iconExists(for:)(&v19))
  {
    v18 = a2;
    sub_195F37930(v8, v9, v10, v11);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    BYTE4(v22) = 0x80;
    LODWORD(v22) = 0;
    sub_195F2D344(v7);
    v12 = v18;
    sub_195FA03C8();

    (*(v5 + 8))(v7, v4);
    v13 = sub_195FA0478();
    return (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v15 = sub_195FA0478();
    v16 = *(*(v15 - 8) + 56);

    return v16(a2, 1, 1, v15);
  }
}

uint64_t IconStore.icon(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  IconStore.widgetIcon(for:completion:)(v8, sub_195F39B24, v6);
}

void sub_195F96E40(void *a1, void (*a2)(void))
{
  v3 = [a1 image];
  a2();
}

void sub_195F96EC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(id), uint64_t a7)
{
  if (qword_1EAEEBBB0 != -1)
  {
    swift_once();
  }

  v12 = sub_195FA0678();
  __swift_project_value_buffer(v12, qword_1EAEF7250);

  v13 = sub_195FA0658();
  v14 = sub_195FA0CC8();

  v94 = a3;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&aBlock = v16;
    *v15 = 136446210;
    v17 = sub_195F60D0C(a1, a2, a3, a4);
    v19 = a7;
    v20 = sub_195EBD554(v17, v18, &aBlock);

    *(v15 + 4) = v20;
    a7 = v19;
    _os_log_impl(&dword_195EB2000, v13, v14, "Resolving icon for: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x19A8C5B70](v16, -1, -1);
    MEMORY[0x19A8C5B70](v15, -1, -1);
  }

  v96 = [objc_opt_self() imageDescriptorNamed_];
  [v96 setShape_];
  if (!a4)
  {
    v47 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
    v48 = sub_195FA0888();
    v49 = [v47 initWithBundleIdentifier_];

    v50 = [v49 prepareImageForDescriptor_];
    v24 = v94;
    if (v50)
    {
      v92 = v50;
      if (([v92 placeholder] & 1) == 0)
      {

        v74 = sub_195FA0658();
        v75 = sub_195FA0CC8();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *&aBlock = v77;
          *v76 = 136446210;
          v78 = sub_195F60D0C(a1, a2, v94, 0);
          v80 = sub_195EBD554(v78, v79, &aBlock);

          *(v76 + 4) = v80;
          _os_log_impl(&dword_195EB2000, v74, v75, "Resolved locally generated icon for: %{public}s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v77);
          MEMORY[0x19A8C5B70](v77, -1, -1);
          MEMORY[0x19A8C5B70](v76, -1, -1);
        }

        v81 = [v92 CGImage];
        if (v81)
        {
          v82 = v81;
          [v92 size];
          v84 = v83;
          v86 = v85;
          [v92 scale];
          v88 = v87;
          [v92 pixelSize];
          v91 = [objc_allocWithZone(CHSWidgetIcon) initWithImage:v82 size:v84 scale:v86 pixelSize:{v88, v89, v90}];

          a6(v91);
          v69 = v92;
          goto LABEL_25;
        }

LABEL_30:
        __break(1u);
        return;
      }

      v51 = sub_195FA0658();
      v52 = sub_195FA0CC8();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&aBlock = v54;
        *v53 = 136446210;
        v55 = sub_195F60D0C(a1, a2, v94, 0);
        v57 = sub_195EBD554(v55, v56, &aBlock);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_195EB2000, v51, v52, "Resolved placeholder icon for: %{public}s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        MEMORY[0x19A8C5B70](v54, -1, -1);
        MEMORY[0x19A8C5B70](v53, -1, -1);
      }

      v58 = [v92 CGImage];
      if (v58)
      {
        v59 = v58;
        [v92 size];
        v61 = v60;
        v63 = v62;
        [v92 scale];
        v65 = v64;
        [v92 pixelSize];
        v68 = [objc_allocWithZone(CHSWidgetIcon) initWithImage:v59 size:v61 scale:v63 pixelSize:{v65, v66, v67}];

        a6(v68);
        goto LABEL_18;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_20:
    v70 = [objc_opt_self() genericApplicationIcon];
    v71 = swift_allocObject();
    v71[2] = a1;
    v71[3] = a2;
    v71[4] = v24;
    v71[5] = a4;
    v71[6] = v96;
    v71[7] = a6;
    v71[8] = a7;
    v100 = sub_195F99EDC;
    v101 = v71;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v98 = sub_195F97E50;
    v99 = &block_descriptor_37_0;
    v72 = _Block_copy(&aBlock);

    v73 = v96;

    [v70 getCGImageForImageDescriptor:v73 completion:v72];

    _Block_release(v72);
    return;
  }

  v21 = a5[12];
  v22 = a5[13];
  v23 = __swift_project_boxed_opaque_existential_1(a5 + 9, v21);
  *&aBlock = a1;
  *(&aBlock + 1) = a2;
  v24 = v94;
  v98 = v94;
  v99 = a4;
  v25 = sub_195F97844(&aBlock, v96, v23, v21, v22);
  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = v25;
  v27 = [v25 prepareImageForDescriptor_];
  if (!v27)
  {

    goto LABEL_20;
  }

  v28 = v27;

  v29 = sub_195FA0658();
  v30 = sub_195FA0CC8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&aBlock = v32;
    *v31 = 136446210;
    v33 = sub_195F60D0C(a1, a2, v94, a4);
    v35 = sub_195EBD554(v33, v34, &aBlock);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_195EB2000, v29, v30, "Resolved remotely generated icon for: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x19A8C5B70](v32, -1, -1);
    MEMORY[0x19A8C5B70](v31, -1, -1);
  }

  v36 = [v28 CGImage];
  if (!v36)
  {
    __break(1u);
    goto LABEL_29;
  }

  v37 = v36;
  [v28 size];
  v39 = v38;
  v41 = v40;
  [v28 scale];
  v43 = v42;
  [v28 pixelSize];
  v46 = [objc_allocWithZone(CHSWidgetIcon) initWithImage:v37 size:v39 scale:v41 pixelSize:{v43, v44, v45}];

  a6(v46);
LABEL_18:
  v69 = v96;
LABEL_25:
}

id sub_195F97844(__int128 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a2;
  v35 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_195FA0DB8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v34 - v15;
  v17 = *(a1 + 3);
  if (v17)
  {
    v18 = *(a1 + 2);
    v36 = *a1;
    v37 = v18;
    v38 = v17;
    sub_195F966AC(&v36, v35, a4, a5, v13);
    v19 = v14;
    if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
    {
      (*(v10 + 8))(v13, v9);
    }

    else
    {
      v20 = *(v14 + 32);
      v21 = v16;
      v20(v16, v13, AssociatedTypeWitness);
      v22 = (*(a5 + 56))(0, v16, a4, a5);
      if (v22)
      {
        v23 = v22;
        v24 = v34;
        [v34 setShouldApplyMask_];
        [v24 setShape_];
        v25 = v23;
        [v24 scale];
        v27 = [objc_allocWithZone(MEMORY[0x1E69A8988]) initWithCGImage:v25 scale:v26];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA90, qword_195FAC9A0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_195FAC910;
        *(v28 + 32) = v27;
        v29 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
        sub_195EB4B30(0, &qword_1EAEEE678, 0x1E69A8988);
        v30 = v27;
        v31 = sub_195FA0B28();

        v32 = [v29 initWithImages_];

        (*(v19 + 8))(v21, AssociatedTypeWitness);
        return v32;
      }

      (*(v19 + 8))(v16, AssociatedTypeWitness);
    }
  }

  return 0;
}

void sub_195F97BC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(id))
{
  if (qword_1EAEEBBB0 != -1)
  {
    swift_once();
  }

  v13 = sub_195FA0678();
  __swift_project_value_buffer(v13, qword_1EAEF7250);

  v14 = sub_195FA0658();
  v15 = sub_195FA0CC8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38 = v17;
    *v16 = 136446210;
    v18 = sub_195F60D0C(a2, a3, a4, a5);
    v20 = sub_195EBD554(v18, v19, &v38);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_195EB2000, v14, v15, "Resolved generic icon for: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x19A8C5B70](v17, -1, -1);
    MEMORY[0x19A8C5B70](v16, -1, -1);
  }

  [a6 size];
  v22 = v21;
  [a6 scale];
  v24 = v23;
  [a6 size];
  v26 = v25;
  [a6 scale];
  if (a1)
  {
    v28 = v26 * v27;
    v29 = v22 * v24;
    v30 = a1;
    [a6 size];
    v32 = v31;
    v34 = v33;
    [a6 scale];
    v37 = [objc_allocWithZone(CHSWidgetIcon) initWithImage:v30 size:v32 scale:v34 pixelSize:{v35, v29, v28}];

    a7(v37);
  }

  else
  {
    __break(1u);
  }
}

void sub_195F97E50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_195F97EE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v25 = a4;
  v26 = a2;
  v7 = v6;
  v10 = sub_195FA0778();
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_195FA07D8();
  v13 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  v18 = a1[3];
  v29 = *(v7 + 24);
  v20 = swift_allocObject();
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = v19;
  v20[5] = v18;
  v22 = v26;
  v21 = v27;
  v20[6] = v7;
  v20[7] = v22;
  v20[8] = a3;
  aBlock[4] = v21;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);

  sub_195FA0798();
  v32 = MEMORY[0x1E69E7CC0];
  sub_195F9A064(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v15, v12, v23);
  _Block_release(v23);
  (*(v31 + 8))(v12, v10);
  (*(v13 + 8))(v15, v30);
}

void sub_195F981E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void))
{
  if (qword_1EAEEBBB0 != -1)
  {
    swift_once();
  }

  v12 = sub_195FA0678();
  __swift_project_value_buffer(v12, qword_1EAEF7250);

  v13 = sub_195FA0658();
  v14 = sub_195FA0CC8();

  v50 = a1;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *&v52 = swift_slowAlloc();
    v16 = v52;
    *v15 = 136446210;
    v17 = sub_195F60D0C(a1, a2, a3, a4);
    v19 = a6;
    v20 = sub_195EBD554(v17, v18, &v52);

    *(v15 + 4) = v20;
    a6 = v19;
    _os_log_impl(&dword_195EB2000, v13, v14, "Resolving icon for: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x19A8C5B70](v16, -1, -1);
    MEMORY[0x19A8C5B70](v15, -1, -1);
  }

  v21 = [objc_opt_self() imageDescriptorNamed_];
  [v21 setShape_];
  if (!a4)
  {
    v34 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
    v35 = sub_195FA0888();
    v51 = [v34 initWithBundleIdentifier_];

    v36 = sub_195FA0658();
    v37 = sub_195FA0CC8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v52 = v39;
      *v38 = 136446210;
      v40 = sub_195F60D0C(v50, a2, a3, 0);
      v42 = sub_195EBD554(v40, v41, &v52);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_195EB2000, v36, v37, "Resolved locally generated icon for: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x19A8C5B70](v39, -1, -1);
      v43 = v38;
LABEL_14:
      MEMORY[0x19A8C5B70](v43, -1, -1);
    }

LABEL_15:

    a6(v51);
    goto LABEL_16;
  }

  v22 = a5[12];
  v23 = a5[13];
  v24 = __swift_project_boxed_opaque_existential_1(a5 + 9, v22);
  *&v52 = v50;
  *(&v52 + 1) = a2;
  v53 = a3;
  v54 = a4;
  v25 = sub_195F97844(&v52, v21, v24, v22, v23);
  if (!v25)
  {
    v51 = [objc_opt_self() genericApplicationIcon];

    v36 = sub_195FA0658();
    v44 = sub_195FA0CC8();

    if (os_log_type_enabled(v36, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v52 = v46;
      *v45 = 136446210;
      v47 = sub_195F60D0C(v50, a2, a3, a4);
      v49 = sub_195EBD554(v47, v48, &v52);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_195EB2000, v36, v44, "Resolved generic icon for: %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x19A8C5B70](v46, -1, -1);
      v43 = v45;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v26 = v25;

  v51 = v26;
  v27 = sub_195FA0658();
  v28 = sub_195FA0CC8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v52 = v30;
    *v29 = 136446210;
    v31 = sub_195F60D0C(v50, a2, a3, a4);
    v33 = sub_195EBD554(v31, v32, &v52);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_195EB2000, v27, v28, "Resolved remotely generated icon for: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x19A8C5B70](v30, -1, -1);
    MEMORY[0x19A8C5B70](v29, -1, -1);
  }

  a6(v51);
  v21 = v51;
LABEL_16:
}

uint64_t IconStore.iconSHA256Hash(for:)(__int128 *a1)
{
  v11 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  (*(v5 + 8))(v15, v4, v5);
  v6 = v16;
  v7 = v17;
  v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = v11;
  v13 = v2;
  v14 = v3;
  v9 = sub_195F98864(&v12, v8, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v9;
}

uint64_t sub_195F98864(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v24 = a2;
  v5 = sub_195FA0638();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_195FA0478();
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195F37930(*a1, a1[1], a1[2], a1[3]);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v29 = 0x80;
  v28 = 0;
  sub_195F2D344(v8);
  v12 = v21;
  sub_195FA03C8();
  v13 = v22;

  (*(v6 + 8))(v8, v5);
  v30._countAndFlagsBits = 0xD00000000000001CLL;
  v30._object = 0x8000000195FC3640;
  (*(v13 + 56))(&v25, v11, &v30, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v12, v13);

  if (v26)
  {
    countAndFlagsBits = v25;
    (*(v9 + 8))(v11, v23);
  }

  else
  {
    v15 = v9;
    v16 = v23;
    v18 = URL.sha256()();
    if (v17)
    {

      (*(v15 + 8))(v11, v16);
      return 0;
    }

    else
    {
      countAndFlagsBits = v18._countAndFlagsBits;
      v25 = 0xD00000000000001CLL;
      v26 = 0x8000000195FC3640;
      v30 = v18;
      (*(v13 + 48))(v11, &v25, &v30, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160], v12, v13);

      (*(v15 + 8))(v11, v16);
    }
  }

  return countAndFlagsBits;
}

uint64_t sub_195F98B8C(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE660, &qword_195FB0508);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *a1;
  v11[1] = *(v7 + 16);
  *(swift_allocObject() + 16) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE668, &qword_195FB0510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE670, &qword_195FB0518);
  sub_195EB5F38(&qword_1EAEEBB90, &qword_1EAEEE668, &qword_195FB0510, MEMORY[0x1E695BF88]);
  sub_195FA0748();

  sub_195EB5F38(&unk_1EAEEBB98, &qword_1EAEEE660, &qword_195FB0508, MEMORY[0x1E695BC80]);
  v9 = sub_195FA0738();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_195F98DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v8[0] = *a1;
  v8[1] = v5;
  v9 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  IconStore.widgetIcon(for:completion:)(v8, sub_195F39F04, v6);
}

uint64_t sub_195F98E98(__int128 *a1)
{
  v11 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 64);
  __swift_project_boxed_opaque_existential_1((*v1 + 32), v4);
  (*(v5 + 8))(v17, v4, v5);
  v6 = v18;
  v7 = v19;
  v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v12 = v11;
  v13 = v2;
  v14 = v3;
  sub_195F92A8C(&v12, v8, v6, v7, v15);
  v9 = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v9;
}

uint64_t sub_195F98F70(__int128 *a1)
{
  v11 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 64);
  __swift_project_boxed_opaque_existential_1((*v1 + 32), v4);
  (*(v5 + 8))(v15, v4, v5);
  v6 = v16;
  v7 = v17;
  v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = v11;
  v13 = v2;
  v14 = v3;
  v9 = sub_195F98864(&v12, v8, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v9;
}

unint64_t sub_195F99034(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_195FA0A68();
  }

  __break(1u);
  return result;
}

uint64_t sub_195F99080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a8;
  v29 = a3;
  v11 = *(a6 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v28 - v16;
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v28 - v23;
  (*(v19 + 32))(&v28 - v23);
  (*(v11 + 32))(v17, a2, a6);
  v25 = swift_allocObject();
  (*(v19 + 16))(v22, v24, a5);
  (*(v11 + 16))(v14, v17, a6);
  v26 = sub_195F992E0(v22, v14, v29, v25, a5, a6, v30, v31);
  (*(v11 + 8))(v17, a6);
  (*(v19 + 8))(v24, a5);
  return v26;
}

uint64_t sub_195F992E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a3;
  v15 = sub_195FA0CF8();
  v26 = *(v15 - 8);
  v27 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v25 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_195FA0CD8();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_195FA07D8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v34 = a5;
  v35 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v31 = a6;
  v32 = a8;
  v20 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(a6 - 8) + 32))(v20, a2, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE668, &qword_195FB0510);
  swift_allocObject();
  *(a4 + 16) = sub_195FA06F8();
  sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  sub_195FA0798();
  v29 = MEMORY[0x1E69E7CC0];
  sub_195F9A064(&qword_1EAEEC5A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195EB5F38(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  (*(v26 + 104))(v25, *MEMORY[0x1E69E8090], v27);
  *(a4 + 24) = sub_195FA0D38();
  sub_195EB9104(&v33, a4 + 32);
  sub_195EB9104(&v30, a4 + 72);
  v21 = OBJC_IVAR____TtC14ChronoServices9IconStore_iconsFolderURL;
  v22 = sub_195FA0478();
  (*(*(v22 - 8) + 32))(a4 + v21, v28, v22);
  return a4;
}

uint64_t sub_195F99688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a3;
    if (!a2)
    {
      goto LABEL_10;
    }

    v7 = a4;
    if (a3 != a1)
    {
LABEL_8:
      if (sub_195FA12B8())
      {
        goto LABEL_9;
      }

LABEL_10:

      return v6;
    }
  }

  else
  {
    if (!a2)
    {
      return 48;
    }

    v6 = a1;
    v7 = a2;
  }

  if (v7 != a2)
  {
    goto LABEL_8;
  }

LABEL_9:

  return 0;
}

uint64_t sub_195F99898(uint64_t a1)
{
  result = sub_195FA0478();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_195F99A00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a4;
  v12 = sub_195FA0638();
  v54 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v45 - v17;
  v19 = *a3;
  v20 = *(a3 + 8);
  v21 = *(a3 + 16);
  v22 = *(a3 + 24) | (*(a3 + 28) << 32);
  v23 = *(a3 + 28) >> 6;
  v51 = a1;
  v53 = v19;
  v48 = v24;
  v49 = v16;
  v47 = v21;
  v46 = v20;
  if (v23)
  {
    if (v23 == 1)
    {
      v25 = 0xEB00000000676570;
      v26 = 0x6A2E63696C627570;
    }

    else
    {
      v50 = v12;
      v25 = 0xEA0000000000676ELL;
      v26 = 0x702E63696C627570;
      if (!(v21 | v20 | v19) && v22 == 0x8000000000)
      {
        v27 = &v45 - v17;
        sub_195FA0628();
        v26 = sub_195FA0608();
        v25 = v28;
        v54[1](v14, v50);
        v18 = v27;
        a1 = v51;
      }
    }
  }

  else
  {
    v25 = 0xED00007874612E65;
    v26 = 0x6C7070612E6D6F63;
  }

  v50 = a1 >> 62;
  if (a1 >> 62)
  {
    v43 = v18;
    v44 = sub_195FA0E88();
    v18 = v43;
    v29 = v44;
  }

  else
  {
    v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v18;
  (*(a6 + 24))(a2, v26, v25, v29, v61, a6);
  if (v6)
  {
  }

  v54 = v30;

  v45 = 0;
  if (v23 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED600, &unk_195FB05D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_195FAC070;
    v34 = *MEMORY[0x1E696DE28];
    *(inited + 32) = *MEMORY[0x1E696DE28];
    *(inited + 64) = MEMORY[0x1E69E7DE0];
    *(inited + 40) = v53;
    v35 = v34;
    v53 = sub_195F2D7F0(inited);
    swift_setDeallocating();
    result = sub_195F2DB00(inited + 32, &qword_1EAEED608, &qword_195FAC290);
    v32 = v51;
    if (v50)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v32 = v51;
  if (v23)
  {
    v53 = 0;
    if (v50)
    {
      goto LABEL_20;
    }

LABEL_17:
    v36 = a6;
    v37 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_21;
    }

LABEL_27:

    v42 = v54;
    (*(v36 + 40))(v54, v61, v36);
    return (*(v48 + 8))(v42, v49);
  }

  v55 = v53;
  v56 = v46;
  v57 = v47;
  v58 = WORD2(v47);
  v59 = v22;
  v60 = BYTE4(v22) & 1;
  result = sub_195F2CECC();
  v53 = result;
  if (!v50)
  {
    goto LABEL_17;
  }

LABEL_20:
  v36 = a6;
  result = sub_195FA0E88();
  v37 = result;
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v37 >= 1)
  {
    v38 = 0;
    v39 = *(v36 + 32);
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x19A8C4520](v38, v32);
      }

      else
      {
        v40 = *(v32 + 8 * v38 + 32);
      }

      v41 = v40;
      ++v38;
      v39(v40, v54, v53, v61, v36);
    }

    while (v37 != v38);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_195F99EF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (((a4 >> 38) & 3) == 0)
  {
  }

  return result;
}

uint64_t sub_195F99F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE680, &qword_195FB05E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_195F99FB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_195F9A014(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_195F9A064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_195F9A0D4(uint64_t a1)
{
  result = sub_195FA0478();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_195F9A178(uint64_t a1)
{
  sub_195FA0478();
  if (v1 <= 0x3F)
  {
    sub_195F9A1FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_195F9A1FC()
{
  if (!qword_1EAEEBB78)
  {
    v0 = sub_195FA0DB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAEEBB78);
    }
  }
}

unint64_t KeybagLockState.description.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x64656B636F6CLL;
    if (v1 != 2)
    {
      v7 = 0x676E696B636F6CLL;
    }

    if (*v0)
    {
      v6 = 0x64656B636F6C6E75;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x5065636172476E69;
    v3 = 0x7472657373416E69;
    if (v1 != 7)
    {
      v3 = 0x6C6E556F69426E69;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x64656C6261736964;
    if (v1 != 4)
    {
      v4 = 0xD000000000000010;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Bool __swiftcall KeybagLockState.isEffectivelyLocked(for:)(ChronoServices::KeybagLockState::LockPolicy a1)
{
  v2 = *v1;
  if ((v2 - 2) < 2 || v2 == 0)
  {
    return 1;
  }

  if (v2 == 7)
  {
    return (*a1 ^ 1) & 1;
  }

  return 0;
}

ChronoServices::KeybagLockState::LockPolicy_optional __swiftcall KeybagLockState.LockPolicy.init(rawValue:)(Swift::Int rawValue)
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

uint64_t KeybagLockState.hashValue.getter()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](v1);
  return sub_195FA13E8();
}

unint64_t sub_195F9A498()
{
  result = qword_1EAEEE6A0;
  if (!qword_1EAEEE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6A0);
  }

  return result;
}

unint64_t sub_195F9A4F0()
{
  result = qword_1EAEEE6A8;
  if (!qword_1EAEEE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6A8);
  }

  return result;
}

ChronoServices::InteractionAuthenticationPolicy_optional __swiftcall InteractionAuthenticationPolicy.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_195F9A568()
{
  result = qword_1EAEEE6B0;
  if (!qword_1EAEEE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6B0);
  }

  return result;
}

uint64_t sub_195F9A5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000195FC36D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_195FA12B8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_195F9A68C(uint64_t a1)
{
  v2 = sub_195F9A8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F9A6C8(uint64_t a1)
{
  v2 = sub_195F9A8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ControlsDidChangeXPCData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE6B8, &qword_195FB0910);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F9A8B0();

  sub_195FA1468();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE6C0, &qword_195FB0918);
  sub_195F9AB08(&qword_1EAEEBB70, &qword_1EAEEBE78, &protocol conformance descriptor for CHSControlIdentity, MEMORY[0x1E69E6300]);
  sub_195FA1238();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_195F9A8B0()
{
  result = qword_1EAEEC330;
  if (!qword_1EAEEC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC330);
  }

  return result;
}

unint64_t sub_195F9A904()
{
  result = qword_1EAEEC310;
  if (!qword_1EAEEC310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEC310);
  }

  return result;
}

uint64_t ControlsDidChangeXPCData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE6C8, &qword_195FB0920);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F9A8B0();
  sub_195FA1448();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE6C0, &qword_195FB0918);
    sub_195F9AB08(&qword_1EAEEC270, &qword_1EAEEC318, &protocol conformance descriptor for CHSControlIdentity, MEMORY[0x1E69E6330]);
    sub_195FA1178();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_195F9AB08(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAEEE6C0, &qword_195FB0918);
    sub_195F9AB90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_195F9AB90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_195F9A904();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_195F9AC28()
{
  result = qword_1EAEEE6D0;
  if (!qword_1EAEEE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6D0);
  }

  return result;
}

unint64_t sub_195F9AC80()
{
  result = qword_1EAEEC320;
  if (!qword_1EAEEC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC320);
  }

  return result;
}

unint64_t sub_195F9ACD8()
{
  result = qword_1EAEEC328;
  if (!qword_1EAEEC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC328);
  }

  return result;
}

uint64_t DeviceClass.hashValue.getter()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](v1);
  return sub_195FA13E8();
}

unint64_t sub_195F9ADD0()
{
  result = qword_1EAEEE6D8;
  if (!qword_1EAEEE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_195F9B028(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1);
  if (result)
  {
    v3 = result;
    v4 = sub_195FA08B8();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_195F9B098(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = (a3)(*v3, a2);
  if (result)
  {
    v5 = result;
    v6 = sub_195FA08B8();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FileManagerExtendedAttributeKey.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_195F9B154@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

unint64_t sub_195F9B164()
{
  result = qword_1EAEEE6E0;
  if (!qword_1EAEEE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6E0);
  }

  return result;
}

uint64_t sub_195F9B1B8()
{
  sub_195FA1398();
  sub_195FA0958();
  return sub_195FA13E8();
}

uint64_t sub_195F9B20C(uint64_t a1)
{
  sub_195FA1398();
  sub_195FA0958();
  return sub_195FA13E8();
}

uint64_t sub_195F9B254(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_195FA12B8();
  }
}

unint64_t sub_195F9B288()
{
  result = qword_1EAEEE6E8;
  if (!qword_1EAEEE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6E8);
  }

  return result;
}

unint64_t sub_195F9B2E0()
{
  result = qword_1EAEEE6F0;
  if (!qword_1EAEEE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE6F0);
  }

  return result;
}

void sub_195F9B590(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_195F9B5FC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_195FA0318();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_195F9B660()
{
  result = [objc_allocWithZone(CHSWidgetService) init];
  qword_1EAEEC248 = result;
  return result;
}

void __swiftcall CHSWidgetService.init()(CHSWidgetService *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static CHSWidgetService.shared.getter()
{
  if (qword_1EAEEC240 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAEEC248;

  return v1;
}

id CHSWidgetService.init()()
{
  v1 = OBJC_IVAR___CHSWidgetService_connection;
  *&v0[v1] = [objc_opt_self() sharedInstance];
  v3.receiver = v0;
  v3.super_class = CHSWidgetService;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t type metadata accessor for CHSWidgetService()
{
  result = qword_1EAEEE700;
  if (!qword_1EAEEE700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEE700);
  }

  return result;
}

uint64_t sub_195F9BA00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF797469746E6564;
  v3 = 0x496C6F72746E6F63;
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = 0x696C6F5068737570;
    v12 = 0xEA00000000007963;
    if (a1 == 1)
    {
      v11 = 0x496C6F72746E6F63;
      v12 = 0xEF797469746E6564;
    }

    if (a1)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (v4)
    {
      v10 = v12;
    }

    else
    {
      v10 = 0x8000000195FBF7D0;
    }
  }

  else
  {
    v5 = 0x8000000195FBF830;
    v6 = 0xD000000000000014;
    if (a1 != 5)
    {
      v6 = 0xD000000000000015;
      v5 = 0x8000000195FBF850;
    }

    v7 = 0xE800000000000000;
    v8 = 0x6E6F697461636F6CLL;
    if (a1 != 3)
    {
      v8 = 0xD00000000000001CLL;
      v7 = 0x8000000195FBF810;
    }

    if (a1 <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 4)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x8000000195FBF7D0;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    if (a2 != 1)
    {
      v2 = 0xEA00000000007963;
      if (v9 != 0x696C6F5068737570)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x8000000195FBF830;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0x8000000195FBF850;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }

    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v9 != 0x6E6F697461636F6CLL)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v2 = 0x8000000195FBF810;
    v3 = 0xD00000000000001CLL;
  }

  if (v9 != v3)
  {
LABEL_39:
    v13 = sub_195FA12B8();
    goto LABEL_40;
  }

LABEL_36:
  if (v10 != v2)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_195F9BC38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6F72746E6F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v4 = 0x6E65644974736F68;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000195FBF990;
    }

    else
    {
      v5 = 0xEE00726569666974;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x54746E65746E6F63;
    }

    else
    {
      v4 = 0x6C6F72746E6F63;
    }

    if (v3)
    {
      v5 = 0xEB00000000657079;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000017;
  v8 = 0x8000000195FBF990;
  if (a2 != 2)
  {
    v7 = 0x6E65644974736F68;
    v8 = 0xEE00726569666974;
  }

  if (a2)
  {
    v2 = 0x54746E65746E6F63;
    v6 = 0xEB00000000657079;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_195FA12B8();
  }

  return v11 & 1;
}

uint64_t sub_195F9BDA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000736D6574;
  v3 = 0x496C6F72746E6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000195FBF790;
    }

    else
    {
      v6 = 0x8000000195FBF7B0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x496C6F72746E6F63;
    }

    if (v4)
    {
      v6 = 0x8000000195FBF770;
    }

    else
    {
      v6 = 0xEC000000736D6574;
    }
  }

  v7 = 0xD000000000000015;
  v8 = 0x8000000195FBF7B0;
  if (a2 == 2)
  {
    v8 = 0x8000000195FBF790;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x8000000195FBF770;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_195FA12B8();
  }

  return v11 & 1;
}

uint64_t sub_195F9BED4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007965;
  v3 = 0x4B6E6F6973736573;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x696C696269736976;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000007974;
    }

    else
    {
      v6 = 0x8000000195FBF9E0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x797469726F697270;
    }

    else
    {
      v5 = 0x4B6E6F6973736573;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEA00000000007965;
    }
  }

  v7 = 0x696C696269736976;
  v8 = 0x8000000195FBF9E0;
  if (a2 == 2)
  {
    v8 = 0xEA00000000007974;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (a2)
  {
    v3 = 0x797469726F697270;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_195FA12B8();
  }

  return v11 & 1;
}

uint64_t sub_195F9C018(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746567646977;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746567646977;
    }

    else
    {
      v4 = 0x726765726F467369;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEC000000646E756FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xD000000000000018;
    }

    if (v3)
    {
      v5 = 0x8000000195FBF8F0;
    }

    else
    {
      v5 = 0x8000000195FBF8D0;
    }
  }

  v6 = 0xE600000000000000;
  if (a2 != 2)
  {
    v2 = 0x726765726F467369;
    v6 = 0xEC000000646E756FLL;
  }

  v7 = 0xD000000000000018;
  v8 = 0x8000000195FBF8F0;
  if (a2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v8 = 0x8000000195FBF8D0;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_195FA12B8();
  }

  return v11 & 1;
}

uint64_t sub_195F9C170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 | a4) == 0;
  if (!a2 || !a4)
  {
    return v4;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  return sub_195FA12B8();
}

uint64_t sub_195F9C2C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  sub_195F40008(v2, v3);
  return sub_195EC5A34(v5, v6);
}

uint64_t sub_195F9C334()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_195F40008(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_195F9C384(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_195EC5A34(v5, v6);
}

uint64_t ControlSessionSubscriptionRequest.__allocating_init(sessionKey:priority:visibility:environmentModifiers:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *a2;
  *(v10 + 40) = xmmword_195FAD860;
  *(v10 + 16) = a1;
  *(v10 + 24) = v11;
  *(v10 + 32) = a3;
  swift_beginAccess();
  v12 = *(v10 + 40);
  v13 = *(v10 + 48);
  sub_195F40008(a4, a5);
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  sub_195EC5A34(v12, v13);
  sub_195EC5A34(a4, a5);
  return v10;
}

uint64_t ControlSessionSubscriptionRequest.init(sessionKey:priority:visibility:environmentModifiers:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = *a2;
  *(v5 + 40) = xmmword_195FAD860;
  *(v5 + 16) = a1;
  *(v5 + 24) = v8;
  *(v5 + 32) = a3;
  swift_beginAccess();
  v9 = *(v5 + 40);
  v10 = *(v5 + 48);
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  sub_195F40008(a4, a5);
  sub_195EC5A34(v9, v10);
  sub_195EC5A34(a4, a5);
  return v5;
}

uint64_t sub_195F9C554()
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F9C620(uint64_t a1)
{
  sub_195FA0958();
}

uint64_t sub_195F9C6D8(uint64_t a1)
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

unint64_t sub_195F9C7A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_195F9CCB4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_195F9C7D0(unint64_t *a1@<X8>)
{
  v2 = 0x4B6E6F6973736573;
  v3 = 0xEA00000000007974;
  v4 = 0x696C696269736976;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000014;
    v3 = 0x8000000195FBF9E0;
  }

  v5 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0x797469726F697270;
  }

  else
  {
    v5 = 0xEA00000000007965;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_195F9C858()
{
  v1 = 0x4B6E6F6973736573;
  v2 = 0x696C696269736976;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x797469726F697270;
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

unint64_t sub_195F9C8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_195F9CCB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_195F9C904(uint64_t a1)
{
  v2 = sub_195F9D034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F9C940(uint64_t a1)
{
  v2 = sub_195F9D034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F9C994(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE708, &qword_195FB0E50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F9D034();
  sub_195FA1468();
  v16 = *(v3 + 16);
  v15 = 0;
  type metadata accessor for ControlSessionKey();
  sub_195F9D3E8(&qword_1EAEEBDB8, &protocol conformance descriptor for ControlSessionKey);
  sub_195FA1238();
  if (!v2)
  {
    swift_beginAccess();
    v15 = *(v3 + 24);
    v14 = 1;
    sub_195F9D088();
    sub_195FA1238();
    swift_beginAccess();
    v14 = 2;
    sub_195FA1258();
    swift_beginAccess();
    v9 = *(v3 + 48);
    v12 = *(v3 + 40);
    v13 = v9;
    v11[7] = 3;
    sub_195F40008(v12, v9);
    sub_195F3A7B0();
    sub_195FA11E8();
    sub_195EC5A34(v12, v13);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ControlSessionSubscriptionRequest.deinit()
{

  sub_195EC5A34(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t ControlSessionSubscriptionRequest.__deallocating_deinit()
{

  sub_195EC5A34(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

void *sub_195F9CC64@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_195F9CD00(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_195F9CCB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_195FA10D8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void *sub_195F9CD00(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE718, &unk_195FB1068);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F9D034();
  sub_195FA1448();
  if (!v1)
  {
    type metadata accessor for ControlSessionKey();
    v22 = 0;
    sub_195F9D3E8(&qword_1EAEEBC18, &protocol conformance descriptor for ControlSessionKey);
    sub_195FA1178();
    v8 = v20;
    v22 = 1;
    sub_195F9D42C();
    sub_195FA1178();
    v9 = v20;
    v22 = 3;
    sub_195F3A9DC();
    sub_195FA1128();
    v11 = v20;
    v19 = v21;
    LOBYTE(v20) = 2;
    v12 = sub_195FA1198();
    v13 = *(v4 + 8);
    v18 = v12;
    v13(v6, v3);
    type metadata accessor for ControlSessionSubscriptionRequest();
    v7 = swift_allocObject();
    *(v7 + 40) = xmmword_195FAD860;
    *(v7 + 16) = v8;
    *(v7 + 24) = v9;
    *(v7 + 32) = v18;
    swift_beginAccess();
    v14 = *(v7 + 40);
    v15 = *(v7 + 48);
    v16 = v19;
    sub_195F40008(v11, v19);
    *(v7 + 40) = v11;
    *(v7 + 48) = v16;
    sub_195EC5A34(v14, v15);
    sub_195EC5A34(v11, v16);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_195F9D034()
{
  result = qword_1EAEEBEF8;
  if (!qword_1EAEEBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBEF8);
  }

  return result;
}

unint64_t sub_195F9D088()
{
  result = qword_1EAEEBDC8;
  if (!qword_1EAEEBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBDC8);
  }

  return result;
}

unint64_t sub_195F9D2E4()
{
  result = qword_1EAEEE710;
  if (!qword_1EAEEE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEE710);
  }

  return result;
}

unint64_t sub_195F9D33C()
{
  result = qword_1EAEEBEE8;
  if (!qword_1EAEEBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBEE8);
  }

  return result;
}

unint64_t sub_195F9D394()
{
  result = qword_1EAEEBEF0;
  if (!qword_1EAEEBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBEF0);
  }

  return result;
}

uint64_t sub_195F9D3E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ControlSessionKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_195F9D42C()
{
  result = qword_1EAEEBC28;
  if (!qword_1EAEEBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBC28);
  }

  return result;
}

uint64_t DeviceScopedIdentity.init(id:deviceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a8;
  result = type metadata accessor for DeviceScopedIdentity(0, v19);
  v18 = (a9 + *(result + 60));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t DeviceScopedIdentity.deviceID.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t DeviceScopedIdentity.deviceID.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 60));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_195F9D734(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_195F9D7A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  DeviceScopedIdentity.init(rawValue:)(*a1, a2[2], a2[3], a3);
  v5 = *(*(a2 - 1) + 56);

  return v5(a3, 0, 1, a2);
}

int *DeviceScopedIdentity.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33[0] = a1;
  v33[1] = a2;
  sub_195F3A624();
  v5 = sub_195FA0C38();

  v6 = *(v5 + 16);
  if (v6)
  {
    v33[0] = MEMORY[0x1E69E7CC0];
    sub_195F391DC(0, v6, 0);
    v7 = v33[0];
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = MEMORY[0x19A8C3EF0](v9, v10, v11, v12);
      v15 = v14;

      v33[0] = v7;
      v17 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_195F391DC((v16 > 1), v17 + 1, 1);
        v7 = v33[0];
      }

      *(v7 + 16) = v17 + 1;
      v18 = v7 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_195FAC070;
  v20 = sub_195EB5F80();
  v21 = sub_195EB6074(v20);
  v23 = v22;

  *(v19 + 32) = v21;
  *(v19 + 40) = v23;
  v33[0] = v19;

  sub_195EB6214(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5ED4();
  v25 = sub_195FA0828();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  Token.init(rawValue:)(v28);
  return sub_195EB6CE8(v33, a3, a4, a5);
}

void *sub_195F9DB38@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[2];
  if (v3 == 1)
  {
    v5 = result[4];
    v4 = result[5];

    v6 = 0;
    v7 = 0;
LABEL_5:
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
    a2[3] = v7;
    return result;
  }

  if (v3 == 2)
  {
    v6 = result[4];
    v7 = result[5];
    v5 = result[6];
    v4 = result[7];

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_195F9DBD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  Token.init(rawValue:)(v8);
  sub_195F9DB38(v12[0], v12);
  v11[0] = v12[0];
  v11[1] = v12[1];
  v11[2] = v12[2];
  v11[3] = v12[3];
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  IconStore.widgetIcon(for:completion:)(v11, sub_195F9E0FC, v9);
}

uint64_t sub_195F9DDDC(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_195FA08B8();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  v16._countAndFlagsBits = v11;
  v16._object = v13;
  Token.init(rawValue:)(v16);
  sub_195F9DB38(v20[0], v20);
  v18[0] = v20[0];
  v18[1] = v20[1];
  v19 = v21;
  a7(v18, a6, v14);
}

uint64_t sub_195F9DEE4(uint64_t a1)
{
  v3 = (a1 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = (a1 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
    swift_beginAccess();
    v8 = *v6;
    v7 = v6[1];
    v9 = *(v1 + OBJC_IVAR___CHSIconResolver_iconStore);
    v10 = v9[7];
    v11 = v9[8];
    __swift_project_boxed_opaque_existential_1(v9 + 4, v10);
    v12 = *(v11 + 8);

    v12(v20, v10, v11);
    v13 = v21;
    v14 = v22;
    v15 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v17[0] = v5;
    v17[1] = v4;
    v17[2] = v8;
    v17[3] = v7;
    sub_195F92A8C(v17, v15, v13, v14, v18);

    v4 = v19;

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return v4;
}

void apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable()
{
  __assert_rtn("EndTable", "flatbuffers.h", 1450, "nested");
}

{
  __assert_rtn("EndTable", "flatbuffers.h", 1476, "!ReadScalar<voffset_t>(buf_.data() + field_location->id)");
}

{
  __assert_rtn("scratch_data", "flatbuffers.h", 1021, "buf_");
}

{
  __assert_rtn("scratch_end", "flatbuffers.h", 1026, "scratch_");
}

{
  __assert_rtn("data", "flatbuffers.h", 1016, "cur_");
}

{
  __assert_rtn("EndTable", "flatbuffers.h", 1465, "table_object_size < 0x10000");
}

void apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested()
{
  __assert_rtn("NotNested", "flatbuffers.h", 1434, "!num_field_loc");
}

{
  __assert_rtn("NotNested", "flatbuffers.h", 1432, "!nested");
}

void apple::aiml::flatbuffers2::vector_downward::ensure_space()
{
  __assert_rtn("ensure_space", "flatbuffers.h", 992, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
}

{
  __assert_rtn("ensure_space", "flatbuffers.h", 988, "cur_ >= scratch_ && scratch_ >= buf_");
}

void _CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_195EB2000, log, OS_LOG_TYPE_ERROR, "Unable to find corresponding system version for version %lu on platform %lu", &v3, 0x16u);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}