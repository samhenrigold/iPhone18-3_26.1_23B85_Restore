uint64_t NWListener.Service.init(name:type:domain:txtRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *(a9 + 72) = xmmword_182AE8230;
  *(a9 + 104) = 0;
  *(a9 + 8) = a1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  result = sub_181AB612C(0, 0);
  *a9 = 0;
  *(a9 + 56) = 0;
  *(a9 + 64) = 0;
  *(a9 + 105) = 3;
  return result;
}

uint64_t NWListener.Service.init(name:type:domain:txtRecord:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a7;
  v10 = a7[1];
  *(a8 + 72) = xmmword_182AE8230;
  *(a8 + 104) = 0;
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 88) = xmmword_182AE8230;
  result = sub_181AB612C(0, 0);
  *(a8 + 56) = v9;
  *(a8 + 64) = v10;
  *a8 = 0;
  *(a8 + 105) = 3;
  return result;
}

uint64_t NWListener.Service.init(applicationService:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 72) = xmmword_182AE8230;
  *(a3 + 104) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 88) = xmmword_182AE8230;
  result = sub_181AB612C(0, 0);
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *a3 = 1;
  *(a3 + 105) = 3;
  return result;
}

uint64_t NWListener.Service.init(applicationService:invitation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 72) = xmmword_182AE8230;
  *(a4 + 104) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 88) = xmmword_182AE8230;
  v5 = *a3;
  result = sub_181AB612C(0, 0);
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *a4 = 1;
  *(a4 + 105) = v5;
  return result;
}

uint64_t NWListener.Service.init(name:service:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 104) = 0;
  *(a5 + 105) = 3;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 88) = xmmword_182AE8230;
  *(a5 + 24) = a1;
  *(a5 + 32) = a2;
  *a5 = 1;
  result = sub_181D9D680(0, 0xF000000000000000);
  *(a5 + 72) = a3;
  *(a5 + 80) = a4;
  return result;
}

double NWListener.Service.init(name:pairingConfiguration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  sub_182AD1C98();
  swift_allocObject();
  sub_182AD1C88();
  sub_181FF0C94();
  v8 = sub_182AD1C68();
  v10 = v9;

  sub_181D9D680(v6, v7);

  sub_181D9D680(0, 0xF000000000000000);
  sub_181AB612C(0, 0);
  sub_181D9D680(0, 0xF000000000000000);
  *a4 = 1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = v8;
  *(a4 + 80) = v10;
  result = 0.0;
  *(a4 + 88) = xmmword_182AE8230;
  *(a4 + 104) = 0;
  *(a4 + 105) = 3;
  return result;
}

void sub_181FEC9D0()
{
  if (*v0 != 1)
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    txt_record = *(v0 + 64);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 104);
    if (*(v0 + 16))
    {
      v11 = (sub_182AD3048() + 32);
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_182AD3048();
    if (v6)
    {
      v13 = (sub_182AD3048() + 32);
    }

    else
    {
      v13 = 0;
    }

    bonjour_service = nw_advertise_descriptor_create_bonjour_service(v11, (v12 + 32), v13);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v8 >> 60 == 15)
    {
      if (v7)
      {
        if (!bonjour_service)
        {
LABEL_24:
          __break(1u);
          return;
        }

        nw_advertise_descriptor_set_txt_record_object(bonjour_service, txt_record);
      }

      if (v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_181F49B44(v9, v8);
      sub_181F49B44(v9, v8);
      swift_unknownObjectRetain();
      sub_181FEFF44(v9, v8, bonjour_service, v9, v8);
      sub_181D9D680(v9, v8);
      if (v10)
      {
LABEL_17:
        if (bonjour_service)
        {
          nw_advertise_descriptor_set_no_auto_rename(bonjour_service, 1);
          return;
        }

        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    if (bonjour_service)
    {
      return;
    }

    goto LABEL_23;
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 105);
  v4 = sub_182AD3048();
  application_service = nw_advertise_descriptor_create_application_service((v4 + 32));

  if (v3 != 3)
  {
    nw_advertise_descriptor_set_invitation(application_service, (v3 >> 8) + 1, v3 + 1);
  }

  if (v1 >> 60 != 15)
  {
    swift_unknownObjectRetain();
    sub_181F49B44(v2, v1);
    sub_181FEFDDC(v2, v1, application_service);
    sub_181D9D680(v2, v1);
  }
}

uint64_t (*NWListener.newConnectionHandler.getter())(uint64_t a1)
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 208));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181FF0CE8;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2, v3);
  os_unfair_lock_unlock((v1 + 208));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181FCD148;
}

uint64_t (*sub_181FECCC0@<X0>(uint64_t (**a1)()@<X8>))(uint64_t a1)
{
  result = NWListener.newConnectionHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_181FF1D18;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_181FECD5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181FCE5A8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1, v2);
  NWListener.newConnectionHandler.setter(v4, v3);
}

uint64_t (*NWListener.newConnectionHandler.modify(uint64_t (**a1)(uint64_t a1)))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181FF1D18;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4, v5);
  os_unfair_lock_unlock((v3 + 208));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181FCE5A8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_181FECF14;
}

uint64_t (*NWListener.newConnectionGroupHandler.getter())(uint64_t a1)
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 208));
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181FF1D18;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2, v3);
  os_unfair_lock_unlock((v1 + 208));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181FCE5A8;
}

uint64_t (*sub_181FED024@<X0>(uint64_t (**a1)()@<X8>))(uint64_t a1)
{
  result = NWListener.newConnectionGroupHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_181FF1D18;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_181FED094(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181FCE5A8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1, v2);
  NWListener.newConnectionGroupHandler.setter(v4, v3);
}

void NWListener.newConnectionGroupHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 52);
  sub_181EC7ABC(&v5[4]);
  os_unfair_lock_unlock(v5 + 52);
  if (a1)
  {
    v6 = *(v2 + 24);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    aBlock[4] = sub_181FF0D14;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D8BD0C;
    aBlock[3] = &block_descriptor_39;
    v8 = _Block_copy(aBlock);

    nw_listener_set_new_connection_group_handler(v6, v8);
    _Block_release(v8);
    sub_181A554F4(a1, a2);
  }

  else
  {
    nw_listener_set_new_connection_handler(*(v2 + 24), 0);
  }
}

uint64_t sub_181FED254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_181AA39C0(a2, a3);
  result = sub_181A554F4(v6, v7);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  return result;
}

void *sub_181FED2B4(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for NWConnectionGroup();
  swift_allocObject();
  v3 = swift_unknownObjectRetain();
  result = sub_18222D15C(v3);
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t (*NWListener.newConnectionGroupHandler.modify(uint64_t (**a1)(uint64_t a1)))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181FF1D18;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4, v5);
  os_unfair_lock_unlock((v3 + 208));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181FCE5A8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_181FED434;
}

void NWListener.state.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 200);
  *(a1 + 4) = *(v3 + 204);
  *a1 = v4;

  os_unfair_lock_unlock((v3 + 208));
}

uint64_t (*NWListener.stateUpdateHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 208));
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181F9DBE4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2, v3);
  os_unfair_lock_unlock((v1 + 208));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181F9DC70;
}

uint64_t (*sub_181FED594@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = NWListener.stateUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_181F9DBE4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_181FED604(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181F9DC70;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1, v2);
  NWListener.stateUpdateHandler.setter(v4, v3);
}

uint64_t (*NWListener.stateUpdateHandler.modify(uint64_t (**a1)()))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181F9DBE4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4, v5);
  os_unfair_lock_unlock((v3 + 208));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181F9DC70;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_181FED784;
}

void NWListener.service.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 160);
  v15 = *(v3 + 144);
  v5 = v15;
  v16[0] = v4;
  *(v16 + 11) = *(v3 + 171);
  v6 = *(v16 + 11);
  v7 = *(v3 + 96);
  v12[0] = *(v3 + 80);
  v12[1] = v7;
  v8 = *(v3 + 128);
  v10 = *(v3 + 80);
  v9 = *(v3 + 96);
  v13 = *(v3 + 112);
  v14 = v8;
  a1[2] = v13;
  a1[3] = v8;
  a1[4] = v5;
  a1[5] = v4;
  *(a1 + 91) = v6;
  *a1 = v10;
  a1[1] = v9;
  sub_181FF0D1C(v12, &v11);
  os_unfair_lock_unlock((v3 + 208));
}

__n128 sub_181FED850@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 160);
  v15 = *(v3 + 144);
  v16[0] = v4;
  *(v16 + 11) = *(v3 + 171);
  v5 = *(v3 + 96);
  v11 = *(v3 + 80);
  v12 = v5;
  v6 = *(v3 + 128);
  v13 = *(v3 + 112);
  v14 = v6;
  sub_181FF0D1C(&v11, &v10);
  os_unfair_lock_unlock((v3 + 208));
  v7 = v16[0];
  *(a2 + 64) = v15;
  *(a2 + 80) = v7;
  *(a2 + 91) = *(v16 + 11);
  v8 = v12;
  *a2 = v11;
  *(a2 + 16) = v8;
  result = v14;
  *(a2 + 32) = v13;
  *(a2 + 48) = result;
  return result;
}

void sub_181FED8E8(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  os_unfair_lock_lock((v2 + 208));
  sub_181FF1D1C((v2 + 16));
  os_unfair_lock_unlock((v2 + 208));
}

uint64_t NWListener.service.setter(_OWORD *a1)
{
  v2 = a1[5];
  v7[4] = a1[4];
  v8[0] = v2;
  *(v8 + 11) = *(a1 + 91);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v5 = *(v1 + 16);
  os_unfair_lock_lock((v5 + 208));
  sub_181FF0D8C((v5 + 16));
  os_unfair_lock_unlock((v5 + 208));
  return sub_181F49A88(v7, &qword_1EA83A230, &qword_182AF3E00);
}

void sub_181FED9F4(_OWORD *a1, __int128 *a2, uint64_t a3)
{
  v5 = a2[3];
  v6 = a2[5];
  v33 = a2[4];
  v7 = v33;
  v34[0] = v6;
  *(v34 + 11) = *(a2 + 91);
  v8 = a2[1];
  v29 = *a2;
  v30 = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v31 = a2[2];
  v12 = v31;
  v32 = v9;
  v13 = a1[5];
  v35[0] = a1[4];
  v35[1] = v13;
  *(v36 + 11) = *(a1 + 155);
  v14 = a1[9];
  v35[4] = a1[8];
  v36[0] = v14;
  v15 = a1[7];
  v35[2] = a1[6];
  v35[3] = v15;
  a1[4] = v11;
  a1[5] = v10;
  *(a1 + 155) = *(a2 + 91);
  v16 = a2[5];
  a1[8] = v7;
  a1[9] = v16;
  a1[6] = v12;
  a1[7] = v5;
  sub_181FF0D1C(a2, v27);
  sub_181F49A88(v35, &qword_1EA83A230, &qword_182AF3E00);
  v17 = *(a2 + 4);
  if (v17)
  {
    v18 = a2[1];
    v21[7] = *a2;
    v21[8] = v18;
    v24 = *(a2 + 56);
    v25 = *(a2 + 72);
    *v26 = *(a2 + 88);
    *&v26[15] = *(a2 + 103);
    v23 = *(a2 + 40);
    v19 = *(a3 + 24);
    v22 = v17;
    v27[0] = v29;
    v27[1] = v30;
    *(v28 + 11) = *(v34 + 11);
    v27[4] = v33;
    v28[0] = v34[0];
    v27[2] = v31;
    v27[3] = v32;
    sub_181FF1CB8(v27, v21);
    sub_181FEC9D0();
    nw_listener_set_advertise_descriptor(v19, v20);
    sub_181F49A88(a2, &qword_1EA83A230, &qword_182AF3E00);
    swift_unknownObjectRelease();
  }

  else
  {
    nw_listener_set_advertise_descriptor(*(a3 + 24), 0);
  }
}

void (*NWListener.service.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x240uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 560) = v1;
  v5 = *(v1 + 16);
  *(v3 + 568) = v5;
  os_unfair_lock_lock(v5 + 52);
  v6 = *&v5[20]._os_unfair_lock_opaque;
  v7 = *&v5[28]._os_unfair_lock_opaque;
  v4[1] = *&v5[24]._os_unfair_lock_opaque;
  v4[2] = v7;
  *v4 = v6;
  v8 = *&v5[32]._os_unfair_lock_opaque;
  v9 = *&v5[36]._os_unfair_lock_opaque;
  v10 = *&v5[40]._os_unfair_lock_opaque;
  *(v4 + 91) = *(&v5[42]._os_unfair_lock_opaque + 3);
  v4[4] = v9;
  v4[5] = v10;
  v4[3] = v8;
  memmove(v4 + 21, &v5[20], 0x6BuLL);
  sub_181FF0D1C(v4, (v4 + 28));
  os_unfair_lock_unlock(v5 + 52);
  return sub_181FEDC48;
}

void sub_181FEDC48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 336);
  v4 = *(*a1 + 568);
  v5 = *(*a1 + 416);
  if (a2)
  {
    *(v2 + 176) = *(*a1 + 400);
    *(v2 + 192) = v5;
    *(v2 + 203) = *(v3 + 91);
    v6 = v3[1];
    *(v2 + 112) = *v3;
    *(v2 + 128) = v6;
    v7 = v3[3];
    *(v2 + 144) = v3[2];
    *(v2 + 160) = v7;
    MEMORY[0x1EEE9AC00](a1);
    sub_181FF0D1C(v2 + 112, v2 + 448);
    os_unfair_lock_lock((v4 + 208));
    sub_181FF1D1C((v4 + 16));
    os_unfair_lock_unlock((*(v2 + 568) + 208));
    sub_181F49A88(v2 + 112, &qword_1EA83A230, &qword_182AF3E00);
    v8 = v3[5];
    *(v2 + 512) = v3[4];
    *(v2 + 528) = v8;
    *(v2 + 539) = *(v3 + 91);
    v9 = v3[1];
    *(v2 + 448) = *v3;
    *(v2 + 464) = v9;
    v10 = v3[3];
    *(v2 + 480) = v3[2];
    *(v2 + 496) = v10;
    v11 = v2 + 448;
  }

  else
  {
    *(v2 + 288) = *(*a1 + 400);
    *(v2 + 304) = v5;
    *(v2 + 315) = *(v3 + 91);
    v12 = v3[1];
    *(v2 + 224) = *v3;
    *(v2 + 240) = v12;
    v13 = v3[3];
    *(v2 + 256) = v3[2];
    *(v2 + 272) = v13;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock((v4 + 208));
    sub_181FF1D1C((v4 + 16));
    os_unfair_lock_unlock((v4 + 208));
    v11 = v2 + 224;
  }

  sub_181F49A88(v11, &qword_1EA83A230, &qword_182AF3E00);
  free(v2);
}

void sub_181FEDE20(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v3))
  {
    nw_listener_set_new_connection_limit(*(*a2 + 24), v3);
    return;
  }

  __break(1u);
}

void NWListener.newConnectionLimit.setter(unint64_t new_connection_limit)
{
  if ((new_connection_limit & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(new_connection_limit))
  {
    nw_listener_set_new_connection_limit(*(v1 + 24), new_connection_limit);
    return;
  }

  __break(1u);
}

void (*NWListener.newConnectionLimit.modify(void *a1))(unint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[1] = v3;
  *a1 = nw_listener_get_new_connection_limit(v3);
  return sub_181FEDEB8;
}

void sub_181FEDEB8(unint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!HIDWORD(v3))
    {
LABEL_7:
      nw_listener_set_new_connection_limit(a1[1], v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v3))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t NWListener.port.getter@<X0>(uint64_t a1@<X8>)
{
  result = nw_listener_get_port(*(v1 + 24));
  *a1 = result;
  *(a1 + 2) = 0;
  return result;
}

uint64_t (*NWListener.serviceRegistrationUpdateHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 208));
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_181C571A4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_181AA39C0(v2, v3);
  os_unfair_lock_unlock((v1 + 208));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_181C4DBD0;
}

uint64_t (*sub_181FEDFF4@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = NWListener.serviceRegistrationUpdateHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_181F9DBE4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

void sub_181FEE064(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_181F9DC70;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_181AA39C0(v1, v2);
  NWListener.serviceRegistrationUpdateHandler.setter(v4, v3);
}

void NWListener.serviceRegistrationUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 52);
  sub_181E61C48(&v5[4]);
  os_unfair_lock_unlock(v5 + 52);
  if (a1)
  {
    v6 = *(v2 + 24);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    aBlock[4] = sub_181FF0DA8;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181FEE4AC;
    aBlock[3] = &block_descriptor_77;
    v8 = _Block_copy(aBlock);

    nw_listener_set_advertised_endpoint_changed_handler(v6, v8);
    _Block_release(v8);
    sub_181A554F4(a1, a2);
  }

  else
  {
    nw_listener_set_advertised_endpoint_changed_handler(*(v2 + 24), 0);
  }
}

uint64_t sub_181FEE224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  sub_181AA39C0(a2, a3);
  result = sub_181A554F4(v6, v7);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  return result;
}

uint64_t sub_181FEE284(uint64_t a1, char a2, void (*a3)(char *))
{
  v4 = type metadata accessor for NWListener.ServiceRegistrationChange(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360, &unk_182AEB460);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for NWEndpoint(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_unknownObjectRetain();
  sub_181B80998(v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_181F49A88(v9, &qword_1EA839360, &unk_182AEB460);
  }

  sub_181B81180(v9, v13);
  sub_181FE4EE0(v13, v6);
  swift_storeEnumTagMultiPayload();
  a3(v6);
  sub_181FF1C58(v6, type metadata accessor for NWListener.ServiceRegistrationChange);
  return sub_181FF1C58(v13, type metadata accessor for NWEndpoint);
}

uint64_t sub_181FEE4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);

  v5 = swift_unknownObjectRetain();
  v4(v5, a3);

  return swift_unknownObjectRelease();
}

uint64_t (*NWListener.serviceRegistrationUpdateHandler.modify(uint64_t (**a1)()))(uint64_t *a1, uint64_t a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_181F9DBE4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_181AA39C0(v4, v5);
  os_unfair_lock_unlock((v3 + 208));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_181F9DC70;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_181FEE604;
}

uint64_t sub_181FEE644(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  if ((a2 & 1) == 0)
  {
    return (a3)(*a1, v7, a3, a4, a5);
  }

  a4(*a1, v7);
  a3(v6, v7);

  return a5(v6, v7);
}

void *sub_181FEE6E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A08, &unk_182AEE970);
  v5 = swift_allocObject();
  *(v5 + 208) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 171) = 0u;
  *(v5 + 192) = 0;
  *(v5 + 200) = 0;
  *(v5 + 204) = 128;
  v2[3] = a1;
  v2[4] = a2;
  v2[2] = v5;
  return v2;
}

uint64_t NWListener.__allocating_init(_:)(void *a1)
{
  v2 = nw_listener_copy_parameters(a1);
  type metadata accessor for NWParameters();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00, &qword_182AEE4C0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v2;
  *(v3 + 16) = v4;
  v5 = swift_allocObject();
  sub_181FEE6E8(a1, v3);
  return v5;
}

void NWListener.__allocating_init(applicationService:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v6 = swift_allocObject();

  NWListener.init(using:on:)(v7, &v15);
  if (v3)
  {
  }

  else
  {

    v8 = sub_181AB612C(0, 0);
    LOBYTE(v10[0]) = 1;
    v10[1] = 0;
    *&v11 = 0;
    *(&v11 + 1) = a1;
    *v12 = a2;
    memset(&v12[8], 0, 32);
    v13 = 0;
    *v14 = xmmword_182AEE940;
    *&v14[16] = 0xF000000000000000;
    v14[24] = 0;
    *&v14[25] = 3;
    v20 = 0uLL;
    v21[0] = xmmword_182AEE940;
    *(v21 + 11) = *&v14[11];
    v16 = v10[0];
    v17 = v11;
    v18 = *v12;
    v19 = *&v12[16];
    v9 = *(v6 + 16);
    MEMORY[0x1EEE9AC00](v8);
    os_unfair_lock_lock((v9 + 208));
    sub_181FF1D1C((v9 + 16));
    os_unfair_lock_unlock((v9 + 208));

    sub_181FF0DB0(v10);
  }
}

uint64_t NWListener.__allocating_init(connection:parameters:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v4 + 24));
  v6 = nw_listener_create_with_connection(v3, v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = swift_allocObject();
    sub_181FEE6E8(v6, a2);
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t NWListener.__allocating_init(launchd:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v4 + 24));
  v6 = sub_182AD3048();

  v7 = nw_listener_create_with_launchd_key(v5, (v6 + 32));
  swift_unknownObjectRelease();

  v8 = swift_allocObject();
  sub_181FEE6E8(v7, a3);
  return v8;
}

uint64_t NWListener.__allocating_init(launchdSocketKey:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);

  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v4 + 24));
  v6 = sub_182AD3048();
  v7 = nw_listener_create_with_launchd_key(v5, (v6 + 32));
  swift_unknownObjectRelease();

  v8 = swift_allocObject();
  sub_181FEE6E8(v7, a3);

  return v8;
}

void *NWListener.queue.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 208));
  v2 = *(v1 + 192);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 208));
  return v2;
}

uint64_t static NWListener.registrationIterator(on:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838F70, &qword_182AE9790);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-v4];
  v6 = *a1;
  v10 = 128;
  v11 = v6;
  (*(v7 + 104))(v5, *MEMORY[0x1E69E8790], v3);
  return sub_182AD3738();
}

void *NWListener.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t NWListener.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_181FEEDC0()
{
  v1 = [*(*v0 + 24) description];
  v2 = sub_182AD2F88();

  return v2;
}

uint64_t sub_181FEEE34(uint64_t a1)
{
  v2 = sub_181FF0DE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FEEE70(uint64_t a1)
{
  v2 = sub_181FF0DE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181FEEEAC(uint64_t a1)
{
  v2 = sub_181FF0E34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FEEEE8(uint64_t a1)
{
  v2 = sub_181FF0E34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWPairingType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A10, &qword_182AEE980);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A18, &qword_182AEE988);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF0DE0();
  sub_182AD4638();
  sub_181FF0E34();
  sub_182AD4098();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t NWPairingType.hashValue.getter()
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](0);
  return sub_182AD4558();
}

uint64_t NWPairingType.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A30, &qword_182AEE990);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A38, &qword_182AEE998);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF0DE0();
  sub_182AD45E8();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_182AD4078();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_181F9DC14() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_182AD3C98();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40, &qword_182AEE9A0);
    *v16 = &type metadata for NWPairingType;
    sub_182AD3F78();
    sub_182AD3C88();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_181FF0E34();
  sub_182AD3F58();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_181FEF4CC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A10, &qword_182AEE980);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A18, &qword_182AEE988);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF0DE0();
  sub_182AD4638();
  sub_181FF0E34();
  sub_182AD4098();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_181FEF6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7235952 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_182AD4268();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_181FEF72C(uint64_t a1)
{
  v2 = sub_181FF0E88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FEF768(uint64_t a1)
{
  v2 = sub_181FF0E88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181FEF7A4(uint64_t a1)
{
  v2 = sub_181FF0EDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FEF7E0(uint64_t a1)
{
  v2 = sub_181FF0EDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NWPairingValue.encode(to:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A48, &qword_182AEE9A8);
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A50, &qword_182AEE9B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  v10 = *v1;
  v13[1] = v1[1];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF0E88();
  sub_182AD4638();
  sub_181FF0EDC();
  sub_182AD4098();
  v11 = v14;
  sub_182AD40E8();
  (*(v3 + 8))(v5, v11);
  return (*(v7 + 8))(v9, v6);
}

uint64_t NWPairingValue.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A68, &qword_182AEE9B8);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A70, &qword_182AEE9C0);
  v28 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF0E88();
  sub_182AD45E8();
  if (v2)
  {
    goto LABEL_6;
  }

  v26 = a1;
  v10 = v33;
  v11 = v28;
  v12 = sub_182AD4078();
  v13 = (2 * *(v12 + 16)) | 1;
  v29 = v12;
  v30 = v12 + 32;
  v31 = 0;
  v32 = v13;
  v14 = v9;
  if ((sub_181F9DC14() & 1) != 0 || v31 != v32 >> 1)
  {
    v15 = sub_182AD3C98();
    swift_allocError();
    v16 = v7;
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A40, &qword_182AEE9A0);
    *v18 = &type metadata for NWPairingValue;
    sub_182AD3F78();
    sub_182AD3C88();
    (*(*(v15 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    (*(v11 + 8))(v9, v16);
    swift_unknownObjectRelease();
    a1 = v26;
LABEL_6:
    v23 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  sub_181FF0EDC();
  sub_182AD3F58();
  v20 = sub_182AD3FC8();
  v22 = v21;
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v14, v7);
  swift_unknownObjectRelease();
  v23 = v26;
  v24 = v27;
  *v27 = v20;
  v24[1] = v22;
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_181FEFDDC(uint64_t a1, unint64_t a2, void *a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v7 = a3;
      v6 = 0;
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      v6 = BYTE6(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v7 = a3;
LABEL_9:
      nw_advertise_descriptor_set_custom_service(v7, v11, v6);
      return swift_unknownObjectRelease();
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  swift_unknownObjectRetain();
  sub_181FF0214(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_181FEFF44(uint64_t result, unint64_t a2, NSObject *a3, uint64_t a4, unint64_t a5)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v8)
    {
      goto LABEL_19;
    }

    v28[0] = result;
    LOWORD(v28[1]) = a2;
    BYTE2(v28[1]) = BYTE2(a2);
    BYTE3(v28[1]) = BYTE3(a2);
    BYTE4(v28[1]) = BYTE4(a2);
    BYTE5(v28[1]) = BYTE5(a2);
    if (!a3)
    {
      __break(1u);
      goto LABEL_62;
    }

    v9 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v9 != 2)
      {
LABEL_39:
        v18 = 0;
        goto LABEL_51;
      }

      v20 = *(a4 + 16);
      v19 = *(a4 + 24);
      v18 = v19 - v20;
      if (!__OFSUB__(v19, v20))
      {
        goto LABEL_51;
      }

      __break(1u);
LABEL_35:
      if (v19 == 2)
      {
        v22 = *(a4 + 16);
        v21 = *(a4 + 24);
        v18 = v21 - v22;
        if (!__OFSUB__(v21, v22))
        {
          goto LABEL_51;
        }

        __break(1u);
      }

      goto LABEL_39;
    }

    if (!v9)
    {
LABEL_30:
      v18 = BYTE6(a5);
LABEL_51:
      v26 = v28;
      v27 = a3;
LABEL_55:
      nw_advertise_descriptor_set_txt_record(v27, v26, v18);
      swift_unknownObjectRelease();
      return sub_181C1F2E4(a4, a5);
    }

    LODWORD(v8) = HIDWORD(a4) - a4;
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
      goto LABEL_50;
    }

    __break(1u);
  }

  if (v8 != 2)
  {
    memset(v28, 0, 14);
    if (a3)
    {
      v19 = a5 >> 62;
      if ((a5 >> 62) <= 1)
      {
        if (v19)
        {
          LODWORD(v8) = HIDWORD(a4) - a4;
          if (!__OFSUB__(HIDWORD(a4), a4))
          {
LABEL_50:
            v18 = v8;
            goto LABEL_51;
          }

          goto LABEL_59;
        }

        goto LABEL_30;
      }

      goto LABEL_35;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v10 = *(result + 16);
  v11 = sub_182AD1D58();
  if (v11)
  {
    v12 = sub_182AD1D88();
    if (__OFSUB__(v10, v12))
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v11 += v10 - v12;
  }

  result = sub_182AD1D78();
  if (!a3)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v13 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v13 != 2)
    {
LABEL_48:
      v18 = 0;
      goto LABEL_54;
    }

    v23 = *(a4 + 16);
    v17 = *(a4 + 24);
    v18 = v17 - v23;
    if (!__OFSUB__(v17, v23))
    {
      goto LABEL_54;
    }

    __break(1u);
LABEL_44:
    if (v17 == 2)
    {
      v25 = *(a4 + 16);
      v24 = *(a4 + 24);
      v18 = v24 - v25;
      if (!__OFSUB__(v24, v25))
      {
        goto LABEL_54;
      }

      __break(1u);
    }

    goto LABEL_48;
  }

  if (!v13)
  {
LABEL_26:
    v18 = BYTE6(a5);
LABEL_54:
    v27 = a3;
    v26 = v11;
    goto LABEL_55;
  }

  v14 = HIDWORD(a4) - a4;
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    goto LABEL_53;
  }

  __break(1u);
LABEL_19:
  v15 = result;
  if (result > result >> 32)
  {
    __break(1u);
    goto LABEL_57;
  }

  v11 = sub_182AD1D58();
  if (!v11)
  {
    goto LABEL_23;
  }

  v16 = sub_182AD1D88();
  if (__OFSUB__(v15, v16))
  {
    goto LABEL_58;
  }

  v11 += v15 - v16;
LABEL_23:
  result = sub_182AD1D78();
  if (a3)
  {
    v17 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (!v17)
      {
        goto LABEL_26;
      }

      v14 = HIDWORD(a4) - a4;
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
LABEL_53:
        v18 = v14;
        goto LABEL_54;
      }

LABEL_60:
      __break(1u);
    }

    goto LABEL_44;
  }

LABEL_64:
  __break(1u);
  return result;
}

char *sub_181FF0214(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_182AD1D58();
  v8 = result;
  if (result)
  {
    result = sub_182AD1D88();
    if (__OFSUB__(a1, result))
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = sub_182AD1D78();
  if (v8)
  {
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    nw_advertise_descriptor_set_custom_service(a4, v8, v12);
  }

  return swift_unknownObjectRelease();
}

uint64_t _s7Network10NWListenerC7ServiceV10InvitationV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v5 = 0x646F70656D6F68;
  if (v2 != 1)
  {
    v5 = 0x72656B61657073;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 7496035;
  }

  if (v2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0x646F70656D6F68;
  if (*a2 != 1)
  {
    v8 = 0x72656B61657073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7496035;
  }

  if (*a2)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {

    goto LABEL_21;
  }

  v11 = sub_182AD4268();

  v12 = 0;
  if (v11)
  {
LABEL_21:
    v13 = 0xE900000000000079;
    v14 = 0x74696D69786F7270;
    v15 = 0xE700000000000000;
    v16 = 0x73646E65697266;
    if (v3 != 1)
    {
      v16 = 0x656E6F7972657665;
      v15 = 0xE800000000000000;
    }

    if (v3)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0x74696D69786F7270;
    }

    if (v3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0xE900000000000079;
    }

    if (v4)
    {
      if (v4 != 1)
      {
        v13 = 0xE800000000000000;
        if (v17 != 0x656E6F7972657665)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      v13 = 0xE700000000000000;
      v14 = 0x73646E65697266;
    }

    if (v17 != v14)
    {
      goto LABEL_37;
    }

LABEL_35:
    if (v18 == v13)
    {
      v12 = 1;
LABEL_38:

      return v12 & 1;
    }

LABEL_37:
    v12 = sub_182AD4268();
    goto LABEL_38;
  }

  return v12 & 1;
}

BOOL _s7Network10NWListenerC7ServiceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  v16 = *(a2 + 88);
  v15 = *(a2 + 96);
  v17 = *(a2 + 104);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    v62 = *(a2 + 64);
    v63 = *(a1 + 88);
    v59 = *(a2 + 56);
    v60 = *(a1 + 56);
    v61 = *(a1 + 64);
    v57 = *(a2 + 105);
    v58 = *(a1 + 105);
    if (*(a1 + 8) != *(a2 + 8) || v3 != v10)
    {
      v55 = *(a2 + 48);
      v56 = *(a2 + 88);
      v54 = *(a2 + 96);
      v18 = *(a2 + 104);
      v19 = *(a1 + 104);
      v20 = *(a1 + 96);
      v21 = *(a1 + 48);
      v22 = *(a2 + 40);
      v23 = sub_182AD4268();
      v12 = v22;
      v7 = v21;
      v8 = v20;
      v9 = v19;
      v17 = v18;
      v15 = v54;
      v14 = v55;
      v16 = v56;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v62 = *(a2 + 64);
    v63 = *(a1 + 88);
    v59 = *(a2 + 56);
    v60 = *(a1 + 56);
    v61 = *(a1 + 64);
    v57 = *(a2 + 105);
    v58 = *(a1 + 105);
    if (v10)
    {
      return 0;
    }
  }

  if (v4 != v11 || v6 != v13)
  {
    v24 = v14;
    v25 = v8;
    v26 = v7;
    v27 = v12;
    v28 = sub_182AD4268();
    v12 = v27;
    v14 = v24;
    v7 = v26;
    v8 = v25;
    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!v14)
    {
      return 0;
    }

    if (v5 != v12 || v7 != v14)
    {
      v29 = v8;
      v30 = sub_182AD4268();
      v8 = v29;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v8 >> 60 != 15)
  {
    v31 = v63;
    if (v15 >> 60 != 15)
    {
      v36 = v15;
      v37 = v8;
      sub_181F49B44(v63, v8);
      sub_181F49B44(v16, v36);
      sub_181F49B44(v63, v37);
      sub_181F49B44(v16, v36);
      v38 = sub_18206EADC(v63, v37, v16, v36);
      sub_181D9D680(v16, v36);
      sub_181D9D680(v16, v36);
      sub_181D9D680(v63, v37);
      sub_181D9D680(v63, v37);
      result = 0;
      if (!v38 || ((v9 ^ v17) & 1) != 0)
      {
        return result;
      }

      goto LABEL_28;
    }

LABEL_23:
    v33 = v31;
    v34 = v8;
    sub_181F49B44(v31, v8);
    sub_181F49B44(v16, v15);
    sub_181D9D680(v33, v34);
    sub_181D9D680(v16, v15);
    return 0;
  }

  v31 = v63;
  if (v15 >> 60 != 15)
  {
    goto LABEL_23;
  }

  v32 = v8;
  sub_181F49B44(v63, v8);
  sub_181F49B44(v16, v15);
  sub_181D9D680(v63, v32);
  if (v9 != v17)
  {
    return 0;
  }

LABEL_28:
  if (!v60)
  {
    v39 = v61;
    v40 = v59;
    if (!v59)
    {
      sub_181E6550C(0, v61);
      sub_181E6550C(0, v62);
      sub_181AB612C(0, v61);
      goto LABEL_35;
    }

LABEL_33:
    v42 = v39;
    sub_181E6550C(v60, v39);
    sub_181E6550C(v40, v62);
    sub_181AB612C(v60, v42);
    sub_181AB612C(v40, v62);
    return 0;
  }

  v39 = v61;
  v40 = v59;
  if (!v59)
  {
    goto LABEL_33;
  }

  sub_181E6550C(v60, v61);
  sub_181E6550C(v59, v62);
  is_equal = nw_txt_record_is_equal(v61, v62);
  sub_181AB612C(v59, v62);
  sub_181AB612C(v60, v61);
  if (!is_equal)
  {
    return 0;
  }

LABEL_35:
  result = v57 == 3 && v58 == 3;
  if (v58 == 3 || v57 == 3)
  {
    return result;
  }

  v43 = 7496035;
  if (v58)
  {
    v44 = 0xE700000000000000;
    if (v58 == 1)
    {
      v45 = 0x646F70656D6F68;
    }

    else
    {
      v45 = 0x72656B61657073;
    }
  }

  else
  {
    v44 = 0xE300000000000000;
    v45 = 7496035;
  }

  if (v57)
  {
    v46 = 0xE700000000000000;
    if (v57 == 1)
    {
      v43 = 0x646F70656D6F68;
    }

    else
    {
      v43 = 0x72656B61657073;
    }
  }

  else
  {
    v46 = 0xE300000000000000;
  }

  if (v45 != v43 || v44 != v46)
  {
    v47 = sub_182AD4268();

    if (v47)
    {
      goto LABEL_54;
    }

    return 0;
  }

LABEL_54:
  v48 = v57 >> 8;
  v49 = 0xE900000000000079;
  v50 = 0x74696D69786F7270;
  if (v58 >> 8)
  {
    if (v58 >> 8 == 1)
    {
      v51 = 0xE700000000000000;
      v52 = 0x73646E65697266;
    }

    else
    {
      v51 = 0xE800000000000000;
      v52 = 0x656E6F7972657665;
    }
  }

  else
  {
    v52 = 0x74696D69786F7270;
    v51 = 0xE900000000000079;
  }

  if (v48)
  {
    if (v48 == 1)
    {
      v49 = 0xE700000000000000;
      v50 = 0x73646E65697266;
    }

    else
    {
      v49 = 0xE800000000000000;
      v50 = 0x656E6F7972657665;
    }
  }

  if (v52 == v50 && v51 == v49)
  {

    return 1;
  }

  else
  {
    v53 = sub_182AD4268();

    return v53 & 1;
  }
}

void sub_181FF0A24(__int128 *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[2];
  v21 = a1[3];
  v22 = v3;
  v23[0] = v4;
  *(v23 + 11) = *(a1 + 91);
  v6 = a1[1];
  v18 = *a1;
  v19 = v6;
  v20 = v5;
  v11 = 0;
  type metadata accessor for NWListener();
  v7 = swift_allocObject();

  v9 = NWListener.init(using:on:)(v8, &v11);
  if (!v2)
  {
    v16 = v22;
    v17[0] = v23[0];
    *(v17 + 11) = *(v23 + 11);
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v10 = *(v7 + 16);
    MEMORY[0x1EEE9AC00](v9);

    os_unfair_lock_lock((v10 + 208));
    sub_181FF1D1C((v10 + 16));
    os_unfair_lock_unlock((v10 + 208));
  }

  sub_181FF0DB0(&v18);
}

unint64_t sub_181FF0B98()
{
  result = qword_1EA8399A8;
  if (!qword_1EA8399A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8399A8);
  }

  return result;
}

unint64_t sub_181FF0BEC()
{
  result = qword_1EA8399B8;
  if (!qword_1EA8399B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8399B8);
  }

  return result;
}

unint64_t sub_181FF0C40()
{
  result = qword_1EA8399D8;
  if (!qword_1EA8399D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8399D8);
  }

  return result;
}

unint64_t sub_181FF0C94()
{
  result = qword_1EA8399F0;
  if (!qword_1EA8399F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8399F0);
  }

  return result;
}

uint64_t sub_181FF0D1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A230, &qword_182AF3E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_181FF0DE0()
{
  result = qword_1EA839A20;
  if (!qword_1EA839A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A20);
  }

  return result;
}

unint64_t sub_181FF0E34()
{
  result = qword_1EA839A28;
  if (!qword_1EA839A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A28);
  }

  return result;
}

unint64_t sub_181FF0E88()
{
  result = qword_1EA839A58;
  if (!qword_1EA839A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A58);
  }

  return result;
}

unint64_t sub_181FF0EDC()
{
  result = qword_1EA839A60;
  if (!qword_1EA839A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A60);
  }

  return result;
}

unint64_t sub_181FF0F34()
{
  result = qword_1EA839A78;
  if (!qword_1EA839A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A78);
  }

  return result;
}

unint64_t sub_181FF0F8C()
{
  result = qword_1EA839A80;
  if (!qword_1EA839A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A80);
  }

  return result;
}

unint64_t sub_181FF0FE4()
{
  result = qword_1EA839A88;
  if (!qword_1EA839A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839A88);
  }

  return result;
}

__n128 __swift_memcpy107_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 91) = *(a2 + 91);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_181FF10C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 107))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181FF1110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 106) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 107) = 1;
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

    *(result + 107) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWListener.Service.Invitation(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for NWListener.Service.Invitation(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_181FF1300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181FF1348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for NWListener.ServiceRegistrationChange(uint64_t a1)
{
  result = qword_1EA839A98;
  if (!qword_1EA839A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_181FF1400(uint64_t a1)
{
  result = type metadata accessor for NWEndpoint(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network10NWListenerC7ServiceVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy190_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 174) = *(a2 + 174);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_181FF1514(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 190))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_181FF1570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 188) = 0;
    *(result + 184) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 190) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 190) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_181FF160C()
{
  result = qword_1EA839AB0;
  if (!qword_1EA839AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AB0);
  }

  return result;
}

unint64_t sub_181FF1664()
{
  result = qword_1EA839AB8;
  if (!qword_1EA839AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AB8);
  }

  return result;
}

unint64_t sub_181FF16BC()
{
  result = qword_1EA839AC0;
  if (!qword_1EA839AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AC0);
  }

  return result;
}

unint64_t sub_181FF1714()
{
  result = qword_1EA839AC8;
  if (!qword_1EA839AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AC8);
  }

  return result;
}

unint64_t sub_181FF176C()
{
  result = qword_1EA839AD0;
  if (!qword_1EA839AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AD0);
  }

  return result;
}

unint64_t sub_181FF17C4()
{
  result = qword_1EA839AD8;
  if (!qword_1EA839AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AD8);
  }

  return result;
}

unint64_t sub_181FF181C()
{
  result = qword_1EA839AE0;
  if (!qword_1EA839AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AE0);
  }

  return result;
}

unint64_t sub_181FF1874()
{
  result = qword_1EA839AE8;
  if (!qword_1EA839AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AE8);
  }

  return result;
}

unint64_t sub_181FF18CC()
{
  result = qword_1EA839AF0;
  if (!qword_1EA839AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AF0);
  }

  return result;
}

unint64_t sub_181FF1924()
{
  result = qword_1EA839AF8;
  if (!qword_1EA839AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839AF8);
  }

  return result;
}

unint64_t sub_181FF197C()
{
  result = qword_1EA839B00;
  if (!qword_1EA839B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B00);
  }

  return result;
}

unint64_t sub_181FF19D4()
{
  result = qword_1EA839B08;
  if (!qword_1EA839B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B08);
  }

  return result;
}

unint64_t sub_181FF1A2C()
{
  result = qword_1EA839B10;
  if (!qword_1EA839B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B10);
  }

  return result;
}

unint64_t sub_181FF1A84()
{
  result = qword_1EA839B18;
  if (!qword_1EA839B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B18);
  }

  return result;
}

uint64_t sub_181FF1AD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44676E6972696170 && a2 == 0xEB00000000617461;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000182BD7990 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x56676E6972696170 && a2 == 0xEC00000065756C61 || (sub_182AD4268() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000182BD79B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_182AD4268();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_181FF1C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HTTPField.DynamicTableIndexingStrategy.hashValue.getter()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t HTTPField.init(name:value:)@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v7 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  *(a4 + 32) = 0;
  *a4 = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  if ((sub_181CA4798(a2, a3) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
    sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8, &qword_182AEF830, MEMORY[0x1E69E6CC8]);
    sub_182AD30A8();

    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v10 = sub_181CA1930(v5, v4);
  v12 = v11;

  *(a4 + 40) = v10;
  *(a4 + 48) = v12;
  return result;
}

uint64_t sub_181FF1F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  v16 = *(v14 + 2);
  v17 = *(v14 + 3);
  *(a6 + 32) = 0;
  *a6 = v15;
  *(a6 + 16) = v16;
  *(a6 + 24) = v17;
  (*(v11 + 16))(v13);
  v18 = sub_18228717C(v13, a3, a4);
  v19 = a5(v18);
  v21 = v20;

  result = (*(v11 + 8))(a2, a3);
  *(a6 + 40) = v19;
  *(a6 + 48) = v21;
  return result;
}

double HTTPField.name.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

__n128 HTTPField.name.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

unint64_t HTTPField.value.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  if ((sub_181CA4798(v1, v2) & 1) == 0)
  {
    return sub_182287700(v1, v2);
  }

  return v1;
}

uint64_t HTTPField.value.setter(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  if ((sub_181CA4798(a1, a2) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
    sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8, &qword_182AEF830, MEMORY[0x1E69E6CC8]);
    sub_182AD30A8();

    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6 = sub_181CA1930(v5, v4);
  v8 = v7;

  *(v3 + 40) = v6;
  *(v3 + 48) = v8;
  return result;
}

void (*HTTPField.value.modify(uint64_t *a1))(unint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v3 + 56) = v6;
  if (sub_181CA4798(v5, v6))
  {
  }

  else
  {
    v5 = sub_182287700(v5, v6);
    v6 = v7;
  }

  v4[8] = 0;
  v4[4] = v5;
  v4[5] = v6;
  return sub_181FF235C;
}

void sub_181FF235C(unint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = sub_181CA4798(v4, v5);
  if (a2)
  {
    if (v6)
    {
    }

    else
    {
      *v3 = v4;
      v3[1] = v5;
      v3[2] = sub_1822876F4;
      v3[3] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
      sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8, &qword_182AEF830, MEMORY[0x1E69E6CC8]);
      sub_182AD30A8();
      v4 = 0;
      v5 = 0xE000000000000000;
    }

    v11 = v3[6];
    v12 = sub_181CA1930(v4, v5);
    v14 = v13;

    *(v11 + 40) = v12;
    *(v11 + 48) = v14;
  }

  else
  {
    if ((v6 & 1) == 0)
    {
      *v3 = v4;
      v3[1] = v5;
      v3[2] = sub_1822876F4;
      v3[3] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838ED8, &qword_182AEF830);
      sub_181AB3DCC(&qword_1EA838EE0, &qword_1EA838ED8, &qword_182AEF830, MEMORY[0x1E69E6CC8]);
      sub_182AD30A8();

      v4 = 0;
      v5 = 0xE000000000000000;
    }

    v7 = v3[6];
    v8 = sub_181CA1930(v4, v5);
    v10 = v9;

    *(v7 + 40) = v8;
    *(v7 + 48) = v10;
  }

  free(v3);
}

BOOL sub_181FF2584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v16[-v11];
  (*(v5 + 16))(v7, a1, a2, v10);
  sub_182AD3268();
  swift_getAssociatedConformanceWitness();
  sub_182AD3A08();
  if (v18)
  {
    (*(v9 + 8))(v12, AssociatedTypeWitness);
    return 1;
  }

  else
  {
    v14 = v17;
    if (v17 != 9 && v17 != 32)
    {
      while (v14 == 9 || v14 == 32 || (v14 & 0x80) != 0 || (v14 - 127) > 0xFFFFFFA1)
      {
        sub_182AD3A08();
        if (v16[13] == 1)
        {
          (*(v9 + 8))(v12, AssociatedTypeWitness);
          return v14 != 32 && v14 != 9;
        }

        v14 = v16[12];
      }
    }

    (*(v9 + 8))(v12, AssociatedTypeWitness);
    return 0;
  }
}

char *sub_181FF27F8@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if ((v2 - 127) >= 0xA2u || v2 <= -1)
  {
    v4 = *result;
  }

  else
  {
    v4 = 32;
  }

  if (v2 == 32)
  {
    v4 = 32;
  }

  if (v2 != 9)
  {
    LOBYTE(v2) = v4;
  }

  *a2 = v2;
  return result;
}

unsigned __int8 *sub_181FF2830@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 == 10 || v2 == 13)
  {
    LOBYTE(v2) = 32;
  }

  *a2 = v2;
  return result;
}

uint64_t HTTPField.hash(into:)(uint64_t a1, __n128 a2)
{
  sub_182AD30E8();
  sub_182AD4518();

  return sub_182AD30E8();
}

uint64_t HTTPField.hashValue.getter()
{
  sub_182AD44E8();
  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_181FF293C()
{
  sub_182AD44E8();
  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_181FF29BC(uint64_t a1, __n128 a2)
{
  sub_182AD30E8();
  sub_182AD4518();

  return sub_182AD30E8();
}

uint64_t sub_181FF2A1C(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD30E8();
  sub_182AD4518();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t HTTPField.description.getter()
{
  v2 = v0[5];
  v1 = v0[6];
  v5 = *v0;

  MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  if (sub_181CA4798(v2, v1))
  {
  }

  else
  {
    v2 = sub_182287700(v2, v1);
    v1 = v3;
  }

  MEMORY[0x1865D9CA0](v2, v1);

  return v5;
}

uint64_t sub_181FF2B38()
{
  v2 = v0[5];
  v1 = v0[6];
  v5 = *v0;

  MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  if (sub_181CA4798(v2, v1))
  {
  }

  else
  {
    v2 = sub_182287700(v2, v1);
    v1 = v3;
  }

  MEMORY[0x1865D9CA0](v2, v1);

  return v5;
}

uint64_t HTTPField.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v4 = v1[5];
  v3 = v1[6];
  v7 = *v1;
  v8 = v1[1];

  MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  if (sub_181CA4798(v4, v3))
  {
  }

  else
  {
    v4 = sub_182287700(v4, v3);
    v3 = v5;
  }

  MEMORY[0x1865D9CA0](v4, v3);

  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_181FF2C8C@<X0>(void *a1@<X8>)
{
  v4 = v1[5];
  v3 = v1[6];
  v7 = *v1;
  v8 = v1[1];

  MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  if (sub_181CA4798(v4, v3))
  {
  }

  else
  {
    v4 = sub_182287700(v4, v3);
    v3 = v5;
  }

  MEMORY[0x1865D9CA0](v4, v3);

  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_181FF2D44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65756C6176;
  v5 = 0x8000000182BD4570;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000182BD4570;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1701667182;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0x65756C6176;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_182AD4268();
  }

  return v11 & 1;
}

uint64_t sub_181FF2E30()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181FF2ECC(uint64_t a1, __n128 a2)
{
  sub_182AD30E8();
}

uint64_t sub_181FF2F54(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

unint64_t sub_181FF2FEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_181FF3B88(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_181FF301C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x8000000182BD4570;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_181FF3074()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_181FF30C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_181FF3B88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_181FF30F0(uint64_t a1)
{
  v2 = sub_181FF3810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FF312C(uint64_t a1)
{
  v2 = sub_181FF3810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HTTPField.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839B20, &qword_182AEF838);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v15 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v23 = *(v1 + 32);
  v10 = v1[6];
  v15[2] = v1[5];
  v16 = v8;
  v15[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF3810();

  sub_182AD4638();
  v19 = v6;
  v20 = v7;
  v21 = v16;
  v22 = v9;
  v24 = 0;
  sub_181FF3864();
  v11 = v17;
  sub_182AD4118();

  if (v11)
  {
    return (*(v18 + 8))(v5, v3);
  }

  v13 = v23;
  v14 = v18;
  LOBYTE(v19) = 1;
  sub_182AD40E8();
  if (v13)
  {
    LOBYTE(v19) = 2;
    sub_182AD4158();
  }

  return (*(v14 + 8))(v5, v3);
}

uint64_t HTTPField.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839B38, &qword_182AEF840);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FF3810();
  sub_182AD45E8();
  if (!v2)
  {
    v31 = 0;
    sub_181FF38B8();
    sub_182AD3FF8();
    v9 = v28;
    v10 = v30;
    v25 = v29;
    v26 = v27;
    LOBYTE(v27) = 1;
    v11 = sub_182AD3FC8();
    v23 = v10;
    v24 = v9;
    v22 = v11;
    v14 = v12;
    if (_s7Network9HTTPFieldV12isValidValueySbSSFZ_0(v11, v12))
    {
      LOBYTE(v27) = 2;
      v15 = sub_182AD3FB8();
      v16 = v23;
      v17 = v15;
      (*(v6 + 8))(v8, v5);
      if ((v17 & 0x1FC) != 0)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      v20 = v24;
      v19 = v25;
      *a2 = v26;
      *(a2 + 8) = v20;
      *(a2 + 16) = v19;
      *(a2 + 24) = v16;
      *(a2 + 32) = v18;
      *(a2 + 40) = v22;
      *(a2 + 48) = v14;
    }

    else
    {

      v31 = 1;
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_182AD3BA8();

      v27 = 0xD000000000000012;
      v28 = 0x8000000182BD79D0;
      MEMORY[0x1865D9CA0](v22, v14);

      MEMORY[0x1865D9CA0](0xD00000000000001DLL, 0x8000000182BD79F0);
      sub_182AD3C98();
      swift_allocError();
      sub_181AB3DCC(&qword_1EA839B48, &qword_1EA839B38, &qword_182AEF840, MEMORY[0x1E69E6F50]);
      sub_182AD3C78();

      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s7Network9HTTPFieldV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    if (v2 != v5)
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_182AD4268();
    result = 0;
    if ((v9 & 1) == 0 || v2 != v5)
    {
      return result;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_182AD4268();
}

unint64_t sub_181FF3810()
{
  result = qword_1EA839B28;
  if (!qword_1EA839B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B28);
  }

  return result;
}

unint64_t sub_181FF3864()
{
  result = qword_1EA839B30;
  if (!qword_1EA839B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B30);
  }

  return result;
}

unint64_t sub_181FF38B8()
{
  result = qword_1EA839B40;
  if (!qword_1EA839B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B40);
  }

  return result;
}

unint64_t sub_181FF3910()
{
  result = qword_1EA839B50;
  if (!qword_1EA839B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B50);
  }

  return result;
}

unint64_t sub_181FF3968()
{
  result = qword_1EA839B58;
  if (!qword_1EA839B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B58);
  }

  return result;
}

uint64_t sub_181FF39BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_181FF3A04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_181FF3A84()
{
  result = qword_1EA839B60;
  if (!qword_1EA839B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B60);
  }

  return result;
}

unint64_t sub_181FF3ADC()
{
  result = qword_1EA839B68;
  if (!qword_1EA839B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B68);
  }

  return result;
}

unint64_t sub_181FF3B34()
{
  result = qword_1EA839B70;
  if (!qword_1EA839B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839B70);
  }

  return result;
}

unint64_t sub_181FF3B88(uint64_t a1, uint64_t a2)
{
  v2 = sub_182AD3F48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_181FF3BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394D0, &unk_182B00DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_181FF3C94()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v1 + 16) && (v2 = sub_18225BD68(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = 0;
  }

  swift_endAccess();
  return v4;
}

uint64_t sub_181FF3D0C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_181FF3D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_18201D068();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_181FF3DD0()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    return sub_181FF3C94();
  }

  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1EA843418);
    v4 = swift_allocObject();
    *(v4 + 16) = "findSentPacketEntry(packetNumber:)";
    *(v4 + 24) = 34;
    *(v4 + 32) = 2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_181F8C724;
    *(v5 + 24) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = 1564427099;
    *(v6 + 24) = 0xE400000000000000;
    v7 = swift_allocObject();
    *(v7 + 16) = 0xD000000000000020;
    *(v7 + 24) = 0x8000000182BD8430;
    v8 = sub_182AD2678();
    v9 = sub_182AD38A8();
    v10 = swift_allocObject();
    *(v10 + 16) = 32;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_181F8C71C;
    *(v11 + 24) = v5;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_181F8C718;
    *(v12 + 24) = v11;
    v22 = swift_allocObject();
    *(v22 + 16) = 32;
    v23 = swift_allocObject();
    *(v23 + 16) = 8;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_181F8C720;
    *(v13 + 24) = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_181F8C718;
    *(v14 + 24) = v13;
    v24 = swift_allocObject();
    *(v24 + 16) = 32;
    v25 = swift_allocObject();
    *(v25 + 16) = 8;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_181F8C720;
    *(v15 + 24) = v7;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_181F8C718;
    *(v16 + 24) = v15;
    v17 = v9;
    v18 = v8;
    if (os_log_type_enabled(v8, v9))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      v29 = 0;
      *v19 = 770;
      v30 = v19 + 2;
      v26 = sub_181F8C728;
      v27 = v10;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C728;
      v27 = v21;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C714;
      v27 = v12;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C728;
      v27 = v22;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C728;
      v27 = v23;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C714;
      v27 = v14;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C728;
      v27 = v24;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C728;
      v27 = v25;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      v26 = sub_181F8C714;
      v27 = v16;
      sub_181F73AE0(&v26, &v30, &v29, &v28);

      _os_log_impl(&dword_181A37000, v18, v17, "%s %s %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v20, -1, -1);
      MEMORY[0x1865DF520](v19, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

int64x2_t sub_181FF44FC()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  *(v1 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();

  *(v1 + 24) = *sub_182AD2388();
  swift_endAccess();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = -1;
  *(v0 + 24) = -1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;

  v2 = sub_182AD3428();
  *(v2 + 16) = 64;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0u;
  *(v2 + 496) = 0u;
  *(v2 + 512) = 0u;
  *(v2 + 528) = 0u;

  *(v0 + 48) = 0;
  *(v0 + 56) = v2;
  v3 = sub_182AD3428();
  *(v3 + 16) = 64;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  *(v3 + 352) = 0u;
  *(v3 + 368) = 0u;
  *(v3 + 384) = 0u;
  *(v3 + 400) = 0u;
  *(v3 + 416) = 0u;
  *(v3 + 432) = 0u;
  *(v3 + 448) = 0u;
  *(v3 + 464) = 0u;
  *(v3 + 480) = 0u;
  *(v3 + 496) = 0u;
  *(v3 + 512) = 0u;
  *(v3 + 528) = 0u;

  *(v0 + 64) = 0;
  *(v0 + 72) = v3;
  *(v0 + 80) = xmmword_182AEFBC0;
  *(v0 + 96) = xmmword_182AEFBC0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  result = vdupq_n_s64(3uLL);
  *(v0 + 128) = result;
  return result;
}

uint64_t sub_181FF468C(uint64_t a1, __int16 a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  sub_182016DA8(v28);
  v6 = v28[7];
  *(v3 + 120) = v28[6];
  *(v3 + 136) = v6;
  *(v3 + 152) = v28[8];
  v7 = v28[3];
  *(v3 + 56) = v28[2];
  *(v3 + 72) = v7;
  v8 = v28[5];
  *(v3 + 88) = v28[4];
  *(v3 + 104) = v8;
  v9 = v28[1];
  *(v3 + 24) = v28[0];
  *(v3 + 168) = v29;
  *(v3 + 40) = v9;
  sub_182016DA8(v30);
  v10 = v30[7];
  *(v3 + 272) = v30[6];
  *(v3 + 288) = v10;
  *(v3 + 304) = v30[8];
  *(v3 + 320) = v31;
  v11 = v30[3];
  *(v3 + 208) = v30[2];
  *(v3 + 224) = v11;
  v12 = v30[5];
  *(v3 + 240) = v30[4];
  *(v3 + 256) = v12;
  v13 = v30[1];
  *(v3 + 176) = v30[0];
  *(v3 + 192) = v13;
  sub_182016DA8(v32);
  v14 = v32[7];
  *(v3 + 424) = v32[6];
  *(v3 + 440) = v14;
  *(v3 + 456) = v32[8];
  *(v3 + 472) = v33;
  v15 = v32[3];
  *(v3 + 360) = v32[2];
  *(v3 + 376) = v15;
  v16 = v32[5];
  *(v3 + 392) = v32[4];
  *(v3 + 408) = v16;
  v17 = v32[1];
  *(v3 + 328) = v32[0];
  *(v3 + 344) = v17;
  *(v3 + 480) = 256;
  *(v3 + 484) = 0;
  *(v3 + 16) = a1;

  *(v3 + 480) = a2;
  *(v3 + 481) = HIBYTE(a2) & 1;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v18 = sub_182AD2698();
    __swift_project_value_buffer(v18, qword_1EA843418);
    v19 = sub_182AD2678();
    v20 = sub_182AD38A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315650;
      v23 = sub_182AD3BF8();
      v25 = sub_181C64FFC(v23, v24, &v27);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v27);
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_181C64FFC(0xD000000000000015, 0x8000000182BD87F0, &v27);
      _os_log_impl(&dword_181A37000, v19, v20, "%s %s %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v22, -1, -1);
      MEMORY[0x1865DF520](v21, -1, -1);
    }
  }

  return v3;
}

uint64_t sub_181FF499C(__int128 *a1, NSObject *a2, unint64_t a3)
{
  v262 = *a1;
  v4 = *(a1 + 2);
  *&v263[8] = *(a1 + 24);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  *&v264[8] = *(a1 + 56);
  *&v264[24] = *(a1 + 72);
  *&v264[40] = *(a1 + 88);
  v7 = *(a1 + 104);
  *&v264[57] = *(a1 + 105);
  *&v264[60] = *(a1 + 27);
  v9 = *(a1 + 14);
  v8 = *(a1 + 15);
  v10 = *(a1 + 16);
  v281 = *(a1 + 136);
  v280 = *(a1 + 137);
  *&v266[10] = *(a1 + 138);
  *&v266[26] = *(a1 + 154);
  *&v266[42] = *(a1 + 85);
  *v263 = v4;
  *&v263[24] = v5;
  *v264 = v6;
  v264[56] = v7;
  *&v265 = v9;
  *(&v265 + 1) = v8;
  *v266 = v10;
  v266[8] = v281;
  v266[9] = v280;
  if (!v10)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1EA843418);
    v16 = sub_182AD2678();
    v17 = sub_182AD38C8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v249 = v19;
      *v18 = 136315650;
      v20 = sub_182AD3BF8();
      v22 = sub_181C64FFC(v20, v21, &v249);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v249);
      *(v18 + 22) = 2080;
      *(v18 + 24) = sub_181C64FFC(0xD00000000000001FLL, 0x8000000182BD8540, &v249);
      _os_log_impl(&dword_181A37000, v16, v17, "%s %s %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v19, -1, -1);
      MEMORY[0x1865DF520](v18, -1, -1);
    }

    v257 = *v266;
    *v258 = *&v266[16];
    *&v258[12] = *&v266[28];
    v253 = *&v264[16];
    v254 = *&v264[32];
    v256 = v265;
    v255 = *&v264[48];
    v249 = v262;
    v250 = *v263;
    v252 = *v264;
    v251 = *&v263[16];
    return sub_181F843A0(&v249);
  }

  v11 = v3;
  v13 = qword_1EA837250;

  if (v13 != -1)
  {
    swift_once();
  }

  v160 = byte_1EA843430;
  v162 = a3;
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    *&v249 = 0;
    *(&v249 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BD85B0);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](32, 0xE100000000000000);
    *&v235 = v9;
    v24 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v24);

    v25 = v249;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v26 = sub_182AD2698();
    __swift_project_value_buffer(v26, qword_1EA843418);
    v27 = swift_allocObject();
    *(v27 + 16) = "sentPacket(_:time:connection:)";
    *(v27 + 24) = 30;
    *(v27 + 32) = 2;
    v154 = swift_allocObject();
    *(v154 + 16) = sub_181F8C724;
    *(v154 + 24) = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = 1564427099;
    *(v28 + 24) = 0xE400000000000000;
    v143 = swift_allocObject();
    *(v143 + 16) = v25;

    oslog = sub_182AD2678();
    v29 = sub_182AD38A8();
    v144 = swift_allocObject();
    *(v144 + 16) = 32;
    v145 = swift_allocObject();
    *(v145 + 16) = 8;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_181F8C71C;
    *(v30 + 24) = v154;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_181F8C718;
    *(v31 + 24) = v30;
    v146 = v31;
    v147 = swift_allocObject();
    *(v147 + 16) = 32;
    v148 = swift_allocObject();
    *(v148 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_181F8C720;
    *(v32 + 24) = v28;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_181F8C718;
    *(v33 + 24) = v32;
    v150 = v33;
    v153 = swift_allocObject();
    *(v153 + 16) = 32;
    v34 = swift_allocObject();
    *(v34 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_181F8C720;
    *(v35 + 24) = v143;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_181F8C718;
    *(v36 + 24) = v35;
    v37 = v36;
    if (os_log_type_enabled(oslog, v29))
    {
      v141 = v37;
      v38 = swift_slowAlloc();
      *&v221 = 0;
      v142 = swift_slowAlloc();
      *v38 = 770;
      *&v219[0] = v142;
      *&v235 = v38 + 2;
      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v144;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v145;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C714;
      *(&v249 + 1) = v146;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v147;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v148;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C714;
      *(&v249 + 1) = v150;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v153;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v34;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C714;
      *(&v249 + 1) = v141;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      _os_log_impl(&dword_181A37000, oslog, v29, "%s %s %s", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v142, -1, -1);
      MEMORY[0x1865DF520](v38, -1, -1);

      if (v7)
      {
LABEL_7:
        if (v7 == 1)
        {
          swift_beginAccess();
          v14 = *(v11 + 192);
          if (v14 != -1 && v9 < v14)
          {
            goto LABEL_71;
          }

          *(v11 + 192) = v9;
        }

        else
        {
          swift_beginAccess();
          v14 = *(v11 + 344);
          if (v14 != -1 && v9 < v14)
          {
            goto LABEL_71;
          }

          *(v11 + 344) = v9;
        }

        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  if (v7)
  {
    goto LABEL_7;
  }

LABEL_23:
  swift_beginAccess();
  v14 = *(v11 + 40);
  if (v14 != -1 && v9 < v14)
  {
    goto LABEL_71;
  }

  *(v11 + 40) = v9;
  while (1)
  {
LABEL_26:
    swift_endAccess();
    v39 = v4 + v6;
    if (__OFADD__(v4, v6))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v14 = v39 + v5;
    if (__OFADD__(v39, v5))
    {
      goto LABEL_69;
    }

    *&v264[8] = v39 + v5;
    v40 = *(v10 + 984);
    v9 = a2;
    if (!v40)
    {
      goto LABEL_33;
    }

    v41 = *(v40 + 40);
    v42 = __OFSUB__(1280, v41);
    v43 = 1280 - v41;
    if (!v42)
    {
      break;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    *&v235 = 0;
    *(&v235 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD8590);
    *&v221 = v9;
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0x7020726574666120, 0xEE002074656B6361);
    *&v221 = v14;
    sub_182AD3E18();
    oslog = *(&v235 + 1);
    v153 = v235;
    if (qword_1EA837248 != -1)
    {
      goto LABEL_81;
    }

LABEL_72:
    v134 = sub_182AD2698();
    __swift_project_value_buffer(v134, qword_1EA843418);
    v9 = oslog;

    v135 = sub_182AD2678();
    v14 = sub_182AD38C8();

    v152 = v14;
    loga = v135;
    if (os_log_type_enabled(v135, v14))
    {
      v136 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *&v235 = v149;
      *v136 = 136315650;
      v137 = sub_182AD3BF8();
      v139 = sub_181C64FFC(v137, v138, &v235);

      *(v136 + 4) = v139;
      *(v136 + 12) = 2080;
      *(v136 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v235);
      *(v136 + 22) = 2080;
      v140 = sub_181C64FFC(v153, oslog, &v235);

      *(v136 + 24) = v140;
      v14 = loga;
      _os_log_impl(&dword_181A37000, loga, v152, "%s %s %s", v136, 0x20u);
      v9 = v149;
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v149, -1, -1);
      MEMORY[0x1865DF520](v136, -1, -1);
    }

    else
    {
    }
  }

  if (v43 < v14 && *(v10 + 1072) >= v14)
  {
    v264[16] = 1;
  }

LABEL_33:
  v4 = v281;
  v5 = v280;
  sub_181FF6728(v10, &v262, a2);
  if (!v7)
  {
    goto LABEL_42;
  }

  if (v7 == 1)
  {
    swift_beginAccess();
    if (!v5)
    {
      goto LABEL_59;
    }

    if (v4)
    {
      *(v11 + 184) = a2;
      v44 = *(v11 + 176);
      v42 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (!v42)
      {
        *(v11 + 176) = v45;
        goto LABEL_39;
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      swift_once();
      goto LABEL_72;
    }

LABEL_39:
    v46 = *(v10 + 912);
    *&v258[16] = *(v10 + 896);
    v259 = v46;
    v260 = *(v10 + 928);
    v261 = *(v10 + 944);
    v47 = *(v10 + 848);
    v255 = *(v10 + 832);
    v256 = v47;
    v48 = *(v10 + 880);
    v257 = *(v10 + 864);
    *v258 = v48;
    v49 = *(v10 + 784);
    v251 = *(v10 + 768);
    v252 = v49;
    v50 = *(v10 + 816);
    v253 = *(v10 + 800);
    v254 = v50;
    v51 = *(v10 + 752);
    v249 = *(v10 + 736);
    v250 = v51;
    if (sub_182015D6C(&v249) == 1)
    {
      goto LABEL_59;
    }

    v52 = *(v10 + 912);
    v53 = *(v10 + 880);
    v231 = *(v10 + 896);
    v232 = v52;
    v54 = *(v10 + 912);
    v233 = *(v10 + 928);
    v55 = *(v10 + 848);
    v56 = *(v10 + 816);
    v227 = *(v10 + 832);
    v228 = v55;
    v57 = *(v10 + 848);
    v58 = *(v10 + 880);
    v229 = *(v10 + 864);
    v230 = v58;
    v59 = *(v10 + 784);
    v60 = *(v10 + 752);
    v223 = *(v10 + 768);
    v224 = v59;
    v61 = *(v10 + 784);
    v62 = *(v10 + 816);
    v225 = *(v10 + 800);
    v226 = v62;
    v63 = *(v10 + 752);
    v221 = *(v10 + 736);
    v222 = v63;
    v245 = v231;
    v246 = v54;
    v247 = *(v10 + 928);
    v241 = v227;
    v242 = v57;
    v243 = v229;
    v244 = v53;
    v237 = v223;
    v238 = v61;
    v239 = v225;
    v240 = v56;
    v234 = *(v10 + 944);
    v248 = *(v10 + 944);
    v235 = v221;
    v236 = v60;
    if (sub_182015D6C(&v235) != 1)
    {
      goto LABEL_55;
    }

    __break(1u);
LABEL_42:
    swift_beginAccess();
    if (!v5)
    {
      goto LABEL_59;
    }

    if (v4)
    {
      *(v11 + 32) = a2;
      v64 = *(v11 + 24);
      v42 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v42)
      {
        goto LABEL_79;
      }

      *(v11 + 24) = v65;
    }

    v66 = *(v10 + 912);
    *&v258[16] = *(v10 + 896);
    v259 = v66;
    v260 = *(v10 + 928);
    v261 = *(v10 + 944);
    v67 = *(v10 + 848);
    v255 = *(v10 + 832);
    v256 = v67;
    v68 = *(v10 + 880);
    v257 = *(v10 + 864);
    *v258 = v68;
    v69 = *(v10 + 784);
    v251 = *(v10 + 768);
    v252 = v69;
    v70 = *(v10 + 816);
    v253 = *(v10 + 800);
    v254 = v70;
    v71 = *(v10 + 752);
    v249 = *(v10 + 736);
    v250 = v71;
    if (sub_182015D6C(&v249) == 1)
    {
      goto LABEL_59;
    }

    v72 = *(v10 + 912);
    v73 = *(v10 + 880);
    v231 = *(v10 + 896);
    v232 = v72;
    v74 = *(v10 + 912);
    v233 = *(v10 + 928);
    v75 = *(v10 + 848);
    v76 = *(v10 + 816);
    v227 = *(v10 + 832);
    v228 = v75;
    v77 = *(v10 + 848);
    v78 = *(v10 + 880);
    v229 = *(v10 + 864);
    v230 = v78;
    v79 = *(v10 + 784);
    v80 = *(v10 + 752);
    v223 = *(v10 + 768);
    v224 = v79;
    v81 = *(v10 + 784);
    v82 = *(v10 + 816);
    v225 = *(v10 + 800);
    v226 = v82;
    v83 = *(v10 + 752);
    v221 = *(v10 + 736);
    v222 = v83;
    v245 = v231;
    v246 = v74;
    v247 = *(v10 + 928);
    v241 = v227;
    v242 = v77;
    v243 = v229;
    v244 = v73;
    v237 = v223;
    v238 = v81;
    v239 = v225;
    v240 = v76;
    v234 = *(v10 + 944);
    v248 = *(v10 + 944);
    v235 = v221;
    v236 = v80;
    if (sub_182015D6C(&v235) != 1)
    {
      goto LABEL_55;
    }

    __break(1u);
  }

  swift_beginAccess();
  if (!v5)
  {
    goto LABEL_59;
  }

  if (!v4)
  {
    goto LABEL_53;
  }

  *(v11 + 336) = a2;
  v84 = *(v11 + 328);
  v42 = __OFADD__(v84, 1);
  v85 = v84 + 1;
  if (v42)
  {
    goto LABEL_80;
  }

  *(v11 + 328) = v85;
LABEL_53:
  v86 = *(v10 + 912);
  *&v258[16] = *(v10 + 896);
  v259 = v86;
  v260 = *(v10 + 928);
  v261 = *(v10 + 944);
  v87 = *(v10 + 848);
  v255 = *(v10 + 832);
  v256 = v87;
  v88 = *(v10 + 880);
  v257 = *(v10 + 864);
  *v258 = v88;
  v89 = *(v10 + 784);
  v251 = *(v10 + 768);
  v252 = v89;
  v90 = *(v10 + 816);
  v253 = *(v10 + 800);
  v254 = v90;
  v91 = *(v10 + 752);
  v249 = *(v10 + 736);
  v250 = v91;
  if (sub_182015D6C(&v249) != 1)
  {
    v92 = *(v10 + 912);
    v93 = *(v10 + 880);
    v231 = *(v10 + 896);
    v232 = v92;
    v94 = *(v10 + 912);
    v233 = *(v10 + 928);
    v95 = *(v10 + 848);
    v96 = *(v10 + 816);
    v227 = *(v10 + 832);
    v228 = v95;
    v97 = *(v10 + 848);
    v98 = *(v10 + 880);
    v229 = *(v10 + 864);
    v230 = v98;
    v99 = *(v10 + 784);
    v100 = *(v10 + 752);
    v223 = *(v10 + 768);
    v224 = v99;
    v101 = *(v10 + 784);
    v102 = *(v10 + 816);
    v225 = *(v10 + 800);
    v226 = v102;
    v103 = *(v10 + 752);
    v221 = *(v10 + 736);
    v222 = v103;
    v245 = v231;
    v246 = v94;
    v247 = *(v10 + 928);
    v241 = v227;
    v242 = v97;
    v243 = v229;
    v244 = v93;
    v237 = v223;
    v238 = v101;
    v239 = v225;
    v240 = v96;
    v234 = *(v10 + 944);
    v248 = *(v10 + 944);
    v235 = v221;
    v236 = v100;
    if (sub_182015D6C(&v235) != 1)
    {
LABEL_55:
      v219[10] = v245;
      v219[11] = v246;
      v219[12] = v247;
      v220 = v248;
      v219[6] = v241;
      v219[7] = v242;
      v219[8] = v243;
      v219[9] = v244;
      v219[2] = v237;
      v219[3] = v238;
      v219[4] = v239;
      v219[5] = v240;
      v219[0] = v235;
      v219[1] = v236;
      if (sub_182015D80(v219) == 1)
      {
        nullsub_41();
        v178 = v104[6];
        v180 = v104[7];
        v182 = v104[8];
        v184 = v104[9];
        v170 = v104[2];
        v172 = v104[3];
        v174 = v104[4];
        v176 = v104[5];
        v166 = *v104;
        v168 = v104[1];
        v189 = v221;
        v190 = v222;
        v193 = v225;
        v194 = v226;
        v191 = v223;
        v192 = v224;
        v197 = v229;
        v198 = v230;
        v195 = v227;
        v196 = v228;
        v202 = v234;
        v200 = v232;
        v201 = v233;
        v199 = v231;
        sub_18201A394(&v221, v217);
        sub_182015D94(&v189, v217);
        sub_182013B20(v14);
        v273 = v178;
        v274 = v180;
        v275 = v182;
        v276 = v184;
        v269 = v170;
        v270 = v172;
        v271 = v174;
        v272 = v176;
        v267 = v166;
        v268 = v168;
        sub_182016600();
        sub_182015DF0(&v221);
        v209 = v178;
        v210 = v180;
        v211 = v182;
        v212 = v184;
        v205 = v170;
        v206 = v172;
        v207 = v174;
        v208 = v176;
        v203 = v166;
        v204 = v168;
        sub_182015D88(&v203);
      }

      else
      {
        nullsub_41();
        v186 = v105[10];
        v187 = v105[11];
        v188 = v105[12];
        v179 = v105[6];
        v181 = v105[7];
        v183 = v105[8];
        v185 = v105[9];
        v171 = v105[2];
        v173 = v105[3];
        v175 = v105[4];
        v177 = v105[5];
        v167 = *v105;
        v169 = v105[1];
        v189 = v221;
        v190 = v222;
        v193 = v225;
        v194 = v226;
        v191 = v223;
        v192 = v224;
        v197 = v229;
        v198 = v230;
        v195 = v227;
        v196 = v228;
        v202 = v234;
        v200 = v232;
        v201 = v233;
        v199 = v231;
        sub_18201A394(&v221, v217);
        sub_182015D94(&v189, v217);
        sub_182014334(v14);
        v277 = v186;
        v278 = v187;
        v279 = v188;
        v273 = v179;
        v274 = v181;
        v276 = v185;
        v275 = v183;
        v269 = v171;
        v270 = v173;
        v272 = v177;
        v271 = v175;
        v268 = v169;
        v267 = v167;
        sub_182015E58();
        sub_182015DF0(&v221);
        v213 = v186;
        v214 = v187;
        v215 = v188;
        v209 = v179;
        v210 = v181;
        v211 = v183;
        v212 = v185;
        v205 = v171;
        v206 = v173;
        v207 = v175;
        v208 = v177;
        v203 = v167;
        v204 = v169;
        sub_18201A508(&v203);
      }

      v217[10] = v213;
      v217[11] = v214;
      v217[12] = v215;
      v218 = v216;
      v217[6] = v209;
      v217[7] = v210;
      v217[8] = v211;
      v217[9] = v212;
      v217[2] = v205;
      v217[3] = v206;
      v217[4] = v207;
      v217[5] = v208;
      v217[0] = v203;
      v217[1] = v204;
      v199 = v213;
      v200 = v214;
      v201 = v215;
      v202 = v216;
      v195 = v209;
      v196 = v210;
      v197 = v211;
      v198 = v212;
      v191 = v205;
      v192 = v206;
      v193 = v207;
      v194 = v208;
      v189 = v203;
      v190 = v204;
      nullsub_41();
      v106 = *(v10 + 912);
      v213 = *(v10 + 896);
      v214 = v106;
      v215 = *(v10 + 928);
      v216 = *(v10 + 944);
      v107 = *(v10 + 848);
      v209 = *(v10 + 832);
      v210 = v107;
      v108 = *(v10 + 880);
      v211 = *(v10 + 864);
      v212 = v108;
      v109 = *(v10 + 784);
      v205 = *(v10 + 768);
      v206 = v109;
      v110 = *(v10 + 816);
      v207 = *(v10 + 800);
      v208 = v110;
      v111 = *(v10 + 752);
      v203 = *(v10 + 736);
      v204 = v111;
      v112 = v200;
      *(v10 + 896) = v199;
      *(v10 + 912) = v112;
      *(v10 + 928) = v201;
      *(v10 + 944) = v202;
      v113 = v196;
      *(v10 + 832) = v195;
      *(v10 + 848) = v113;
      v114 = v198;
      *(v10 + 864) = v197;
      *(v10 + 880) = v114;
      v115 = v192;
      *(v10 + 768) = v191;
      *(v10 + 784) = v115;
      v116 = v194;
      *(v10 + 800) = v193;
      *(v10 + 816) = v116;
      v117 = v190;
      *(v10 + 736) = v189;
      *(v10 + 752) = v117;
      sub_182015DF0(&v203);
      goto LABEL_59;
    }

    __break(1u);
LABEL_83:
    swift_once();
LABEL_63:
    v118 = sub_182AD2698();
    __swift_project_value_buffer(v118, qword_1EA843418);
    v119 = swift_allocObject();
    *(v119 + 16) = "sentPacket(_:time:connection:)";
    *(v119 + 24) = 30;
    *(v119 + 32) = 2;
    v120 = swift_allocObject();
    *(v120 + 16) = sub_181F8C724;
    *(v120 + 24) = v119;
    v121 = swift_allocObject();
    *(v121 + 16) = 1564427099;
    *(v121 + 24) = 0xE400000000000000;
    v122 = swift_allocObject();
    *(v122 + 16) = 0xD000000000000023;
    *(v122 + 24) = v4;
    v123 = sub_182AD2678();
    v124 = sub_182AD38A8();
    log = swift_allocObject();
    LOBYTE(log[2].isa) = 32;
    osloga = swift_allocObject();
    LOBYTE(osloga[2].isa) = 8;
    v125 = swift_allocObject();
    *(v125 + 16) = sub_181F8C71C;
    *(v125 + 24) = v120;
    v126 = swift_allocObject();
    *(v126 + 16) = sub_181F8C718;
    *(v126 + 24) = v125;
    v161 = swift_allocObject();
    *(v161 + 16) = 32;
    v163 = swift_allocObject();
    *(v163 + 16) = 8;
    v127 = swift_allocObject();
    *(v127 + 16) = sub_181F8C720;
    *(v127 + 24) = v121;
    v128 = swift_allocObject();
    *(v128 + 16) = sub_181F8C718;
    *(v128 + 24) = v127;
    v155 = swift_allocObject();
    *(v155 + 16) = 32;
    v165 = swift_allocObject();
    *(v165 + 16) = 8;
    v129 = swift_allocObject();
    *(v129 + 16) = sub_181F8C720;
    *(v129 + 24) = v122;
    v130 = swift_allocObject();
    *(v130 + 16) = sub_181F8C718;
    *(v130 + 24) = v129;
    v131 = v124;
    if (os_log_type_enabled(v123, v124))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *&v221 = 0;
      *v132 = 770;
      v151 = v133;
      *&v219[0] = v133;
      *&v235 = v132 + 2;
      *&v249 = sub_181F8C728;
      *(&v249 + 1) = log;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = osloga;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C714;
      *(&v249 + 1) = v126;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v161;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v163;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C714;
      *(&v249 + 1) = v128;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v155;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C728;
      *(&v249 + 1) = v165;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      *&v249 = sub_181F8C714;
      *(&v249 + 1) = v130;
      sub_181F73AE0(&v249, &v235, &v221, v219);

      _os_log_impl(&dword_181A37000, v123, v131, "%s %s %s", v132, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v151, -1, -1);
      MEMORY[0x1865DF520](v132, -1, -1);
    }

    else
    {
    }
  }

LABEL_59:
  swift_endAccess();
  if ((*(v11 + 482) & 1) == 0)
  {
    sub_181FF7470(v162);
  }

  if ((v160 & 1) != 0 && __nwlog_is_datapath_logging_enabled())
  {
    v4 = 0x8000000182BD8560;
    if (qword_1EA837248 != -1)
    {
      goto LABEL_83;
    }

    goto LABEL_63;
  }
}

uint64_t sub_181FF6728(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = a2[2];
  v82 = a2[3];
  v7 = a2[5];
  v83 = a2[4];
  v84 = v7;
  v8 = a2[1];
  v79 = *a2;
  v85 = *(a2 + 12);
  v80 = v8;
  v81 = v6;
  v9 = *(a2 + 104);
  v10 = *(a2 + 105);
  *(v78 + 3) = *(a2 + 27);
  v78[0] = v10;
  v11 = *(a2 + 14);
  v12 = *(a2 + 15);
  v13 = *(a2 + 16);
  v77 = *(a2 + 42);
  v14 = *(a2 + 152);
  v75 = *(a2 + 136);
  v76 = v14;
  if (!v13)
  {
    goto LABEL_34;
  }

  if (*(v13 + 16) == *(a1 + 16))
  {
    v5 = a3;
    if (qword_1EA837250 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    v66 = v3;
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0x7020676E69646441, 0xEA0000000000206ELL);
    v72[0] = v11;
    v43 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v43);

    MEMORY[0x1865D9CA0](0x63617073206E6920, 0xEA00000000002065);
    LOBYTE(v72[0]) = v9;
    sub_182AD3E18();
    v4 = 0;
    v68 = 0xE000000000000000;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

  v4 = 0;
  while (1)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

    if (v9 != 1)
    {
      goto LABEL_19;
    }

    swift_beginAccess();
    v15 = v3[40];
    type metadata accessor for PacketContainerEntry();
    v16 = swift_allocObject();
    *(v16 + 200) = 0;
    *(v16 + 208) = 0;
    swift_beginAccess();
    v17 = v82;
    v18 = v84;
    *(v16 + 80) = v83;
    *(v16 + 96) = v18;
    v19 = v80;
    *(v16 + 16) = v79;
    *(v16 + 32) = v19;
    *(v16 + 48) = v81;
    *(v16 + 64) = v17;
    v20 = v76;
    *(v16 + 152) = v75;
    *(v16 + 112) = v85;
    *(v16 + 120) = 1;
    *(v16 + 124) = *(v78 + 3);
    *(v16 + 121) = v78[0];
    *(v16 + 128) = v11;
    *(v16 + 136) = v12;
    *(v16 + 144) = v13;
    *(v16 + 168) = v20;
    *(v16 + 184) = v77;
    *(v16 + 192) = v5;
    swift_beginAccess();
    if (*(*(v15 + 16) + 16))
    {
      sub_18225BD68();
      if (v21)
      {
        goto LABEL_26;
      }
    }

    swift_endAccess();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v15 + 16);
    *(v15 + 16) = 0x8000000000000000;
    v3 = &v70;
    sub_1822598E0(v16, v11, isUniquelyReferenced_nonNull_native);
    *(v15 + 16) = v70;
    swift_endAccess();
    swift_beginAccess();
    v23 = *(*(v15 + 24) + 24);
    v5 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      break;
    }

    __break(1u);
LABEL_14:
    swift_beginAccess();
    v15 = v3[21];
    type metadata accessor for PacketContainerEntry();
    v24 = swift_allocObject();
    *(v24 + 200) = 0;
    *(v24 + 208) = 0;
    swift_beginAccess();
    v25 = v82;
    v26 = v84;
    *(v24 + 80) = v83;
    *(v24 + 96) = v26;
    v27 = v80;
    *(v24 + 16) = v79;
    *(v24 + 32) = v27;
    *(v24 + 48) = v81;
    *(v24 + 64) = v25;
    v28 = v76;
    *(v24 + 152) = v75;
    *(v24 + 112) = v85;
    *(v24 + 120) = 0;
    *(v24 + 124) = *(v78 + 3);
    *(v24 + 121) = v78[0];
    *(v24 + 128) = v11;
    *(v24 + 136) = v12;
    *(v24 + 144) = v13;
    *(v24 + 168) = v28;
    *(v24 + 184) = v77;
    *(v24 + 192) = v5;
    swift_beginAccess();
    if (*(*(v15 + 16) + 16))
    {
      sub_18225BD68();
      if (v29)
      {
        goto LABEL_26;
      }
    }

    swift_endAccess();
    swift_beginAccess();

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v15 + 16);
    *(v15 + 16) = 0x8000000000000000;
    v3 = &v70;
    sub_1822598E0(v24, v11, v30);
    *(v15 + 16) = v70;
    swift_endAccess();
    swift_beginAccess();
    v31 = *(*(v15 + 24) + 24);
    v5 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      break;
    }

    __break(1u);
LABEL_19:
    swift_beginAccess();
    v15 = v3[59];
    type metadata accessor for PacketContainerEntry();
    v32 = swift_allocObject();
    *(v32 + 200) = 0;
    *(v32 + 208) = 0;
    swift_beginAccess();
    v33 = v82;
    v34 = v84;
    *(v32 + 80) = v83;
    *(v32 + 96) = v34;
    v35 = v80;
    *(v32 + 16) = v79;
    *(v32 + 32) = v35;
    *(v32 + 48) = v81;
    *(v32 + 64) = v33;
    v36 = v76;
    *(v32 + 152) = v75;
    *(v32 + 112) = v85;
    *(v32 + 120) = 2;
    *(v32 + 124) = *(v78 + 3);
    *(v32 + 121) = v78[0];
    *(v32 + 128) = v11;
    *(v32 + 136) = v12;
    *(v32 + 144) = v13;
    *(v32 + 168) = v36;
    *(v32 + 184) = v77;
    *(v32 + 192) = v5;
    swift_beginAccess();
    if (*(*(v15 + 16) + 16))
    {
      sub_18225BD68();
      if (v37)
      {
        goto LABEL_26;
      }
    }

    swift_endAccess();
    swift_beginAccess();

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v15 + 16);
    *(v15 + 16) = 0x8000000000000000;
    sub_1822598E0(v32, v11, v38);
    *(v15 + 16) = v70;
    swift_endAccess();
    swift_beginAccess();
    v39 = *(*(v15 + 24) + 24);
    v5 = v39 + 1;
    if (!__OFADD__(v39, 1))
    {
      break;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
LABEL_30:
    v44 = sub_182AD2698();
    __swift_project_value_buffer(v44, qword_1EA843418);
    v45 = swift_allocObject();
    *(v45 + 16) = "insertSentPacket(path:sentPacket:sentTime:)";
    *(v45 + 24) = 43;
    *(v45 + 32) = 2;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_181F8C724;
    *(v46 + 24) = v45;
    v47 = swift_allocObject();
    *(v47 + 16) = 1564427099;
    *(v47 + 24) = 0xE400000000000000;
    v58 = swift_allocObject();
    *(v58 + 16) = v4;
    *(v58 + 24) = v68;

    oslog = sub_182AD2678();
    v67 = sub_182AD38A8();
    v60 = swift_allocObject();
    *(v60 + 16) = 32;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_181F8C71C;
    *(v48 + 24) = v46;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_181F8C718;
    *(v49 + 24) = v48;
    v62 = v49;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_181F8C720;
    *(v50 + 24) = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_181F8C718;
    *(v51 + 24) = v50;
    v65 = swift_allocObject();
    *(v65 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_181F8C720;
    *(v53 + 24) = v58;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_181F8C718;
    *(v54 + 24) = v53;
    if (os_log_type_enabled(oslog, v67))
    {
      v59 = v54;
      v55 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71[0] = 0;
      v56 = v70;
      buf = v55;
      *v55 = 770;
      v72[0] = v55 + 2;
      v73 = sub_181F8C728;
      v74 = v60;
      v4 = 0;
      sub_181F73AE0(&v73, v72, v71, &v70);
      v3 = v66;

      v73 = sub_181F8C728;
      v74 = v61;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C714;
      v74 = v62;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C728;
      v74 = v63;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C728;
      v74 = v64;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C714;
      v74 = v51;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C728;
      v74 = v65;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C728;
      v74 = v52;
      sub_181F73AE0(&v73, v72, v71, &v70);

      v73 = sub_181F8C714;
      v74 = v59;
      sub_181F73AE0(&v73, v72, v71, &v70);

      _os_log_impl(&dword_181A37000, oslog, v67, "%s %s %s", buf, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v56, -1, -1);
      MEMORY[0x1865DF520](buf, -1, -1);
    }

    else
    {

      v4 = 0;
      v3 = v66;
    }
  }

  v40 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v15 + 24);
  if (*(v41 + 16) < v5 || (v40 & 1) == 0)
  {
    sub_181F46758(v40, v5, 0);
    v41 = *(v15 + 24);
  }

  sub_181F46C5C((v41 + 16), v41 + 40, v11);
LABEL_26:
  swift_endAccess();

  return swift_endAccess();
}

void sub_181FF7470(unint64_t a1)
{
  v5 = v1;
  swift_beginAccess();
  v7 = *(v1 + 24);
  v8 = swift_beginAccess();
  v9 = *(v5 + 176);
  v10 = __OFADD__(v7, v9);
  v11 = v7 + v9;
  if (v10)
  {
    __break(1u);
    goto LABEL_77;
  }

  v8 = swift_beginAccess();
  v12 = *(v5 + 328);
  v10 = __OFADD__(v11, v12);
  v13 = v11 + v12;
  if (v10)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (!v13 && ((*(a1 + 1024) & 1) != 0 || (*(a1 + 1125) & 1) != 0 || (*(v5 + 483) & 1) != 0 || *(v5 + 484) == 1))
  {
    if (qword_1EA837250 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_84;
  }

  v4 = 0;
  while (1)
  {
    v8 = mach_continuous_time();
    if (qword_1EA837030 != -1)
    {
LABEL_78:
      v59 = v8;
      swift_once();
      v8 = v59;
    }

    v32 = qword_1EA8387E8;
    if (is_mul_ok(v8, qword_1EA8387E8))
    {
      if (qword_1EA837038 == -1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    v60 = v8;
    swift_once();
    v8 = v60;
LABEL_27:
    v33 = qword_1EA8387F0;
    if (qword_1EA8387F0)
    {
      if (qword_1EA837010 == -1)
      {
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    v61 = v8;
    swift_once();
    v8 = v61;
LABEL_29:
    if (qword_1EA8431F0)
    {
      break;
    }

    __break(1u);
LABEL_84:
    swift_once();
LABEL_10:
    if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_12;
    }

    v2 = 0x8000000182BD80F0;
    if (qword_1EA837248 != -1)
    {
LABEL_118:
      swift_once();
    }

    v62 = sub_182AD2698();
    __swift_project_value_buffer(v62, qword_1EA843418);
    v63 = swift_allocObject();
    *(v63 + 16) = "resetTimer(connection:)";
    *(v63 + 24) = 23;
    *(v63 + 32) = 2;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_181F8C724;
    *(v64 + 24) = v63;
    v65 = swift_allocObject();
    *(v65 + 16) = 1564427099;
    *(v65 + 24) = 0xE400000000000000;
    v66 = swift_allocObject();
    *(v66 + 16) = 0xD000000000000034;
    *(v66 + 24) = v2;
    v67 = sub_182AD2678();
    v68 = sub_182AD38A8();
    v113 = swift_allocObject();
    *(v113 + 16) = 32;
    v116 = swift_allocObject();
    *(v116 + 16) = 8;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_181F8C71C;
    *(v69 + 24) = v64;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_181F8C718;
    *(v3 + 24) = v69;
    v119 = swift_allocObject();
    *(v119 + 16) = 32;
    v122 = swift_allocObject();
    *(v122 + 16) = 8;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_181F8C720;
    *(v70 + 24) = v65;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_181F8C718;
    *(v71 + 24) = v70;
    v125 = swift_allocObject();
    *(v125 + 16) = 32;
    v129 = swift_allocObject();
    *(v129 + 16) = 8;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_181F8C720;
    *(v72 + 24) = v66;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_181F8C718;
    *(v73 + 24) = v72;
    v2 = v67;
    if (!os_log_type_enabled(v67, v68))
    {

LABEL_12:
      v4 = 0;
      goto LABEL_13;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v148 = v75;
    v149 = 0;
    *v74 = 770;
    v110 = v75;
    *&v131[0] = v74 + 2;
    *&v133 = sub_181F8C728;
    *(&v133 + 1) = v113;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C728;
    *(&v133 + 1) = v116;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C714;
    *(&v133 + 1) = v3;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C728;
    *(&v133 + 1) = v119;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C728;
    *(&v133 + 1) = v122;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C714;
    *(&v133 + 1) = v71;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C728;
    *(&v133 + 1) = v125;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C728;
    *(&v133 + 1) = v129;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    *&v133 = sub_181F8C714;
    *(&v133 + 1) = v73;
    sub_181F73AE0(&v133, v131, &v149, &v148);

    _os_log_impl(&dword_181A37000, v2, v68, "%s %s %s", v74, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v110, -1, -1);
    MEMORY[0x1865DF520](v74, -1, -1);

    v4 = 0;
LABEL_13:
    sub_182016F14(0);
    v14 = *(a1 + 952);
    if (!v14)
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v15 = *(v14 + 912);
    v142 = *(v14 + 896);
    v143 = v15;
    v144 = *(v14 + 928);
    v145 = *(v14 + 944);
    v16 = *(v14 + 848);
    *&v138[16] = *(v14 + 832);
    v139 = v16;
    v17 = *(v14 + 880);
    v140 = *(v14 + 864);
    v141 = v17;
    v18 = *(v14 + 784);
    v135 = *(v14 + 768);
    v136 = v18;
    v19 = *(v14 + 816);
    v137 = *(v14 + 800);
    *v138 = v19;
    v20 = *(v14 + 752);
    v133 = *(v14 + 736);
    v134 = v20;
    if (sub_182015D6C(&v133) == 1)
    {
      goto LABEL_115;
    }

    v131[10] = v142;
    v131[11] = v143;
    v131[12] = v144;
    v132 = v145;
    v131[6] = *&v138[16];
    v131[7] = v139;
    v131[8] = v140;
    v131[9] = v141;
    v131[2] = v135;
    v131[3] = v136;
    v131[4] = v137;
    v131[5] = *v138;
    v131[0] = v133;
    v131[1] = v134;
    sub_182015D80(v131);
    nullsub_41();
    if (*(v14 + 33) == 8 && (*(a1 + 1124) & 1) == 0)
    {
      v22 = *(v21 + 8);
      if (v22)
      {
        v149 = 0;
        v150 = 0xE000000000000000;

        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD00000000000003CLL, 0x8000000182BD80B0);
        v148 = v14;
        type metadata accessor for QUICPath();
        sub_182AD3E18();
        MEMORY[0x1865D9CA0](544434464, 0xE400000000000000);
        v148 = v22;
        v23 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v23);

        MEMORY[0x1865D9CA0](0x6F6E20646E61202CLL, 0xEB00000000302074);
        v24 = v149;
        v2 = v150;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v25 = sub_182AD2698();
        __swift_project_value_buffer(v25, qword_1EA843418);

        v26 = sub_182AD2678();
        v27 = sub_182AD38C8();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v149 = v128;
          *v28 = 136315650;
          v29 = sub_182AD3BF8();
          v31 = sub_181C64FFC(v29, v30, &v149);

          *(v28 + 4) = v31;
          v4 = 0;
          *(v28 + 12) = 2080;
          *(v28 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v149);
          *(v28 + 22) = 2080;
          v3 = sub_181C64FFC(v24, v2, &v149);

          *(v28 + 24) = v3;
          _os_log_impl(&dword_181A37000, v26, v27, "%s %s %s", v28, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v128, -1, -1);
          MEMORY[0x1865DF520](v28, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  v34 = v8 * v32 / v33 / qword_1EA8431F0;
  v35 = sub_182005A28(0, a1);
  if (!v35)
  {
    v37 = sub_182005A28(1, a1);
    v39 = *(a1 + 952);
    if (!v39)
    {
      return;
    }

    v2 = v37;
    if (v38 == 2 && (*(a1 + 1125) & 1) == 0)
    {
      v58 = qword_1EA837250;

      if (v58 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
      {
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v94 = sub_182AD2698();
        __swift_project_value_buffer(v94, qword_1EA843418);
        v95 = swift_allocObject();
        *(v95 + 16) = "resetTimer(connection:)";
        *(v95 + 24) = 23;
        *(v95 + 32) = 2;
        v96 = swift_allocObject();
        *(v96 + 16) = sub_181F8C724;
        *(v96 + 24) = v95;
        v97 = swift_allocObject();
        *(v97 + 16) = 1564427099;
        *(v97 + 24) = 0xE400000000000000;
        v98 = swift_allocObject();
        *(v98 + 16) = 0xD000000000000029;
        *(v98 + 24) = 0x8000000182BD8080;
        v2 = sub_182AD2678();
        v99 = sub_182AD38A8();
        v118 = swift_allocObject();
        *(v118 + 16) = 32;
        v121 = swift_allocObject();
        *(v121 + 16) = 8;
        v100 = swift_allocObject();
        *(v100 + 16) = sub_181F8C71C;
        *(v100 + 24) = v96;
        v101 = swift_allocObject();
        *(v101 + 16) = sub_181F8C718;
        *(v101 + 24) = v100;
        v115 = swift_allocObject();
        *(v115 + 16) = 32;
        v124 = swift_allocObject();
        *(v124 + 16) = 8;
        v102 = swift_allocObject();
        *(v102 + 16) = sub_181F8C720;
        *(v102 + 24) = v97;
        v103 = swift_allocObject();
        *(v103 + 16) = sub_181F8C718;
        *(v103 + 24) = v102;
        v127 = swift_allocObject();
        *(v127 + 16) = 32;
        v130 = swift_allocObject();
        *(v130 + 16) = 8;
        v104 = swift_allocObject();
        *(v104 + 16) = sub_181F8C720;
        *(v104 + 24) = v98;
        a1 = swift_allocObject();
        *(a1 + 16) = sub_181F8C718;
        *(a1 + 24) = v104;
        v112 = v99;
        v105 = v2;
        if (os_log_type_enabled(v2, v99))
        {
          v2 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v148 = v106;
          v149 = 0;
          LOWORD(v2->isa) = 770;
          *&v131[0] = &v2->isa + 2;
          *&v133 = sub_181F8C728;
          *(&v133 + 1) = v118;
          sub_181F73AE0(&v133, v131, &v149, &v148);
          if (v4)
          {

            while (1)
            {

              __break(1u);
            }
          }

          *&v133 = sub_181F8C728;
          *(&v133 + 1) = v121;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C714;
          *(&v133 + 1) = v101;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C728;
          *(&v133 + 1) = v115;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C728;
          *(&v133 + 1) = v124;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C714;
          *(&v133 + 1) = v103;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C728;
          *(&v133 + 1) = v127;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C728;
          *(&v133 + 1) = v130;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          *&v133 = sub_181F8C714;
          *(&v133 + 1) = a1;
          sub_181F73AE0(&v133, v131, &v149, &v148);

          _os_log_impl(&dword_181A37000, v105, v112, "%s %s %s", v2, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v106, -1, -1);
          MEMORY[0x1865DF520](v2, -1, -1);
        }

        else
        {
        }
      }

      sub_182016F14(0);
      if (*(v39 + 1016))
      {
        goto LABEL_117;
      }

      *(v39 + 1000) = 0;
      goto LABEL_74;
    }

    v40 = &v133;
    swift_beginAccess();
    if (*(v39 + 256) != 1)
    {
      goto LABEL_48;
    }

    v41 = *(v39 + 168);
    v42 = *(v39 + 232);
    v43 = *(v39 + 200);
    v137 = *(v39 + 216);
    *v138 = v42;
    *&v138[9] = *(v39 + 241);
    v133 = *(v39 + 152);
    v134 = v41;
    v135 = *(v39 + 184);
    v136 = v43;
    a1 = *(&v41 + 1);
    if (*(&v41 + 1) >> 62)
    {
      __break(1u);
      goto LABEL_92;
    }

    v3 = v134;
    v40 = *v138;

    sub_18201A404(&v133, v131);
    if (qword_1EA837020 != -1)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v44 = qword_1EA843200;
      sub_18201A460(&v133);
      if (v44 < 0)
      {
        __break(1u);
        goto LABEL_95;
      }

      v45 = 4 * a1;
      v46 = 2 * v44;
      if (2 * v44 > 4 * a1)
      {
        v45 = 2 * v44;
      }

      v47 = __CFADD__(v3, v45);
      v48 = v3 + v45;
      if (v47)
      {
        goto LABEL_97;
      }

      v47 = __CFADD__(v48, v40);
      v48 += v40;
      if (!v47)
      {
        goto LABEL_54;
      }

      __break(1u);
LABEL_48:
      v49 = *(v39 + 200);
      v50 = *(v39 + 232);
      v137 = *(v39 + 216);
      *v138 = v50;
      *(v40 + 89) = *(v39 + 241);
      v51 = *(v39 + 168);
      v133 = *(v39 + 152);
      v134 = v51;
      v135 = *(v39 + 184);
      v136 = v49;

      sub_18201A404(&v133, v131);
      v40 = sub_182163B40();
      a1 = v52;
      sub_18201A460(&v133);
      if (!(a1 >> 62))
      {
        break;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      swift_once();
    }

    if (qword_1EA837020 == -1)
    {
      goto LABEL_50;
    }

LABEL_95:
    swift_once();
LABEL_50:
    v48 = qword_1EA843200;
    if (qword_1EA843200 < 0)
    {
      __break(1u);
LABEL_97:
      __break(1u);
    }

    else
    {
      v46 = 4 * a1;
      v53 = 2 * qword_1EA843200;
      if (2 * qword_1EA843200 <= 4 * a1)
      {
        v53 = 4 * a1;
      }

      v47 = __CFADD__(v40, v53);
      v48 = v40 + v53;
      if (!v47)
      {
LABEL_54:
        if (*(v39 + 1016))
        {
          goto LABEL_116;
        }

        v46 = *(v39 + 992);
        if (v46 - 65 < 0xFFFFFFFFFFFFFF7FLL)
        {
          goto LABEL_56;
        }

        if ((v46 & 0x8000000000000000) == 0)
        {
          v54 = v48 >> v46;
          if (v46 >= 0x40)
          {
            v54 = 0;
          }

          goto LABEL_60;
        }

LABEL_99:
        if (v46 <= 0xFFFFFFFFFFFFFFC0)
        {
LABEL_56:
          v54 = 0;
          goto LABEL_60;
        }

        v54 = v48 << -v46;
LABEL_60:
        *(v39 + 1000) = v54;
        v55 = v2 + v54;
        if (__CFADD__(v2, v54))
        {
          __break(1u);
        }

        else
        {
          v56 = v55 > v34;
          v57 = &v55[-v34];
          if (v56)
          {
            a1 = v57;
          }

          else
          {
            a1 = v54;
          }

          if (qword_1EA837250 == -1)
          {
            goto LABEL_65;
          }
        }

        swift_once();
LABEL_65:
        if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
        {
          v108 = v4;
          *&v131[0] = 0;
          *(&v131[0] + 1) = 0xE000000000000000;
          sub_182AD3BA8();

          *&v131[0] = 0xD00000000000001CLL;
          *(&v131[0] + 1) = 0x8000000182BD8060;
          v148 = a1;
          v76 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v76);

          MEMORY[0x1865D9CA0](7566624, 0xE300000000000000);
          v77 = v131[0];
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v78 = sub_182AD2698();
          __swift_project_value_buffer(v78, qword_1EA843418);
          v79 = swift_allocObject();
          *(v79 + 16) = "resetTimer(connection:)";
          *(v79 + 24) = 23;
          *(v79 + 32) = 2;
          v80 = swift_allocObject();
          *(v80 + 16) = sub_181F8C724;
          *(v80 + 24) = v79;
          v81 = swift_allocObject();
          *(v81 + 16) = 1564427099;
          *(v81 + 24) = 0xE400000000000000;
          v82 = swift_allocObject();
          *(v82 + 16) = v77;

          v83 = sub_182AD2678();
          v84 = sub_182AD38A8();
          v111 = swift_allocObject();
          *(v111 + 16) = 32;
          v114 = swift_allocObject();
          *(v114 + 16) = 8;
          v85 = swift_allocObject();
          *(v85 + 16) = sub_181F8C71C;
          *(v85 + 24) = v80;
          v86 = swift_allocObject();
          *(v86 + 16) = sub_181F8C718;
          *(v86 + 24) = v85;
          v109 = swift_allocObject();
          *(v109 + 16) = 32;
          v117 = swift_allocObject();
          *(v117 + 16) = 8;
          v87 = swift_allocObject();
          *(v87 + 16) = sub_181F8C720;
          *(v87 + 24) = v81;
          v88 = swift_allocObject();
          *(v88 + 16) = sub_181F8C718;
          *(v88 + 24) = v87;
          v120 = swift_allocObject();
          *(v120 + 16) = 32;
          v126 = swift_allocObject();
          *(v126 + 16) = 8;
          v89 = swift_allocObject();
          *(v89 + 16) = sub_181F8C720;
          *(v89 + 24) = v82;
          v90 = swift_allocObject();
          *(v90 + 16) = sub_181F8C718;
          *(v90 + 24) = v89;
          v123 = v90;
          v107 = v84;
          v91 = v83;
          if (os_log_type_enabled(v83, v84))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v146 = v93;
            v147 = 0;
            *v92 = 770;
            v148 = (v92 + 2);
            *&v131[0] = sub_181F8C728;
            *(&v131[0] + 1) = v111;
            sub_181F73AE0(v131, &v148, &v147, &v146);
            if (v108)
            {

              while (1)
              {

                __break(1u);
              }
            }

            *&v131[0] = sub_181F8C728;
            *(&v131[0] + 1) = v114;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C714;
            *(&v131[0] + 1) = v86;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C728;
            *(&v131[0] + 1) = v109;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C728;
            *(&v131[0] + 1) = v117;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C714;
            *(&v131[0] + 1) = v88;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C728;
            *(&v131[0] + 1) = v120;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C728;
            *(&v131[0] + 1) = v126;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            *&v131[0] = sub_181F8C714;
            *(&v131[0] + 1) = v123;
            sub_181F73AE0(v131, &v148, &v147, &v146);

            _os_log_impl(&dword_181A37000, v91, v107, "%s %s %s", v92, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v93, -1, -1);
            MEMORY[0x1865DF520](v92, -1, -1);
          }

          else
          {
          }
        }

        sub_182016F14(a1);
LABEL_74:

        return;
      }
    }

    __break(1u);
    goto LABEL_99;
  }

  if (v35 <= v34)
  {
    v36 = 1000;
  }

  else
  {
    v36 = v35 - v34;
  }

  sub_182016F14(v36);
}

uint64_t sub_181FF912C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  if (*(a2 + 200))
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  if (*(v5 + 153) != 1)
  {
    goto LABEL_20;
  }

  if (*(v5 + 152) == 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_12;
      }

      v7 = (v3 + 176);
      swift_beginAccess();
      v8 = *(v3 + 176);
      v9 = __OFSUB__(v8, 1);
      v10 = v8 - 1;
      if (!v9)
      {
LABEL_13:
        *v7 = v10;
        goto LABEL_14;
      }

      __break(1u);
    }

    v7 = (v3 + 24);
    swift_beginAccess();
    v11 = *(v3 + 24);
    v9 = __OFSUB__(v11, 1);
    v10 = v11 - 1;
    if (!v9)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    v7 = (v3 + 328);
    result = swift_beginAccess();
    v13 = *(v3 + 328);
    v9 = __OFSUB__(v13, 1);
    v10 = v13 - 1;
    if (v9)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    goto LABEL_13;
  }

LABEL_14:
  v14 = *(a1 + 912);
  v174 = *(a1 + 896);
  v175 = v14;
  v176 = *(a1 + 928);
  v15 = *(a1 + 848);
  v170 = *(a1 + 832);
  v171 = v15;
  v16 = *(a1 + 880);
  v172 = *(a1 + 864);
  v173 = v16;
  v17 = *(a1 + 784);
  v166 = *(a1 + 768);
  v167 = v17;
  v18 = *(a1 + 816);
  v168 = *(a1 + 800);
  v169 = v18;
  v19 = *(a1 + 752);
  v164 = *(a1 + 736);
  v177 = *(a1 + 944);
  v165 = v19;
  if (sub_182015D6C(&v164) != 1)
  {
    v20 = *(a1 + 880);
    v146 = *(a1 + 896);
    v21 = *(a1 + 896);
    v147 = *(a1 + 912);
    v22 = *(a1 + 912);
    v148 = *(a1 + 928);
    v23 = *(a1 + 816);
    v142 = *(a1 + 832);
    v24 = *(a1 + 832);
    v143 = *(a1 + 848);
    v25 = *(a1 + 848);
    v144 = *(a1 + 864);
    v26 = *(a1 + 864);
    v145 = *(a1 + 880);
    v27 = *(a1 + 752);
    v138 = *(a1 + 768);
    v28 = *(a1 + 768);
    v139 = *(a1 + 784);
    v29 = *(a1 + 784);
    v140 = *(a1 + 800);
    v30 = *(a1 + 800);
    v141 = *(a1 + 816);
    v136 = *(a1 + 736);
    v31 = *(a1 + 736);
    v137 = *(a1 + 752);
    v160 = v21;
    v161 = v22;
    v162 = *(a1 + 928);
    v156 = v24;
    v157 = v25;
    v158 = v26;
    v159 = v20;
    v152 = v28;
    v153 = v29;
    v154 = v30;
    v155 = v23;
    v150 = v31;
    v149 = *(a1 + 944);
    v163 = *(a1 + 944);
    v151 = v27;
    result = sub_182015D6C(&v150);
    if (result == 1)
    {
LABEL_90:
      __break(1u);
      return result;
    }

    v32 = *(v5 + 72);
    v33 = *(v5 + 192);
    v134[10] = v160;
    v134[11] = v161;
    v134[12] = v162;
    v135 = v163;
    v134[6] = v156;
    v134[7] = v157;
    v134[8] = v158;
    v134[9] = v159;
    v134[2] = v152;
    v134[3] = v153;
    v134[4] = v154;
    v134[5] = v155;
    v134[0] = v150;
    v134[1] = v151;
    if (sub_182015D80(v134) == 1)
    {
      nullsub_41();
      v95 = v34[7];
      v97 = v34[8];
      v99 = v34[9];
      v85 = v34[2];
      v87 = v34[3];
      v89 = v34[4];
      v91 = v34[5];
      v93 = v34[6];
      v81 = *v34;
      v83 = v34[1];
      v104 = v136;
      v105 = v137;
      v108 = v140;
      v109 = v141;
      v106 = v138;
      v107 = v139;
      v112 = v144;
      v113 = v145;
      v110 = v142;
      v111 = v143;
      v117 = v149;
      v115 = v147;
      v116 = v148;
      v114 = v146;
      sub_182015D94(&v104, v132);
      sub_18201158C(v32, v33);
      v124 = v93;
      v125 = v95;
      v126 = v97;
      v127 = v99;
      v120 = v85;
      v121 = v87;
      v122 = v89;
      v123 = v91;
      v118 = v81;
      v119 = v83;
      sub_182015D88(&v118);
    }

    else
    {
      nullsub_41();
      v100 = v35[9];
      v101 = v35[10];
      v102 = v35[11];
      v103 = v35[12];
      v96 = v35[7];
      v98 = v35[8];
      v86 = v35[2];
      v88 = v35[3];
      v92 = v35[5];
      v94 = v35[6];
      v90 = v35[4];
      v82 = *v35;
      v84 = v35[1];
      v104 = v136;
      v105 = v137;
      v108 = v140;
      v109 = v141;
      v106 = v138;
      v107 = v139;
      v112 = v144;
      v113 = v145;
      v110 = v142;
      v111 = v143;
      v117 = v149;
      v115 = v147;
      v116 = v148;
      v114 = v146;
      sub_182015D94(&v104, v132);
      sub_182010E38(v32, v33);
      v128 = v101;
      v129 = v102;
      v130 = v103;
      v124 = v94;
      v125 = v96;
      v126 = v98;
      v127 = v100;
      v120 = v86;
      v121 = v88;
      v122 = v90;
      v123 = v92;
      v118 = v82;
      v119 = v84;
      sub_18201A508(&v118);
    }

    v132[10] = v128;
    v132[11] = v129;
    v132[12] = v130;
    v133 = v131;
    v132[6] = v124;
    v132[7] = v125;
    v132[8] = v126;
    v132[9] = v127;
    v132[2] = v120;
    v132[3] = v121;
    v132[4] = v122;
    v132[5] = v123;
    v132[0] = v118;
    v132[1] = v119;
    v114 = v128;
    v115 = v129;
    v116 = v130;
    v117 = v131;
    v110 = v124;
    v111 = v125;
    v112 = v126;
    v113 = v127;
    v106 = v120;
    v107 = v121;
    v108 = v122;
    v109 = v123;
    v104 = v118;
    v105 = v119;
    nullsub_41();
    v36 = *(a1 + 912);
    v128 = *(a1 + 896);
    v129 = v36;
    v130 = *(a1 + 928);
    v131 = *(a1 + 944);
    v37 = *(a1 + 848);
    v124 = *(a1 + 832);
    v125 = v37;
    v38 = *(a1 + 880);
    v126 = *(a1 + 864);
    v127 = v38;
    v39 = *(a1 + 784);
    v120 = *(a1 + 768);
    v121 = v39;
    v40 = *(a1 + 816);
    v122 = *(a1 + 800);
    v123 = v40;
    v41 = *(a1 + 752);
    v118 = *(a1 + 736);
    v119 = v41;
    v42 = v115;
    *(a1 + 896) = v114;
    *(a1 + 912) = v42;
    *(a1 + 928) = v116;
    *(a1 + 944) = v117;
    v43 = v111;
    *(a1 + 832) = v110;
    *(a1 + 848) = v43;
    v44 = v113;
    *(a1 + 864) = v112;
    *(a1 + 880) = v44;
    v45 = v107;
    *(a1 + 768) = v106;
    *(a1 + 784) = v45;
    v46 = v109;
    *(a1 + 800) = v108;
    *(a1 + 816) = v46;
    v47 = v105;
    *(a1 + 736) = v104;
    *(a1 + 752) = v47;
    sub_182015DF0(&v118);
  }

LABEL_20:
  if (!v4)
  {
LABEL_38:
    swift_beginAccess();
    v57 = *(v3 + 168);
    swift_beginAccess();
    v58 = *(v5 + 128);
    swift_beginAccess();
    if (!*(*(v57 + 16) + 16))
    {
      goto LABEL_70;
    }

    sub_18225BD68();
    if ((v59 & 1) == 0)
    {
      goto LABEL_70;
    }

    v80 = v5;
    swift_endAccess();
    swift_beginAccess();

    sub_1822501BC(v58);
    swift_endAccess();

    result = swift_beginAccess();
    v61 = *(v57 + 24);
    v62 = v61[4];
    v63 = v61[3] + v62;
    if (v61[2] < v63)
    {
      v63 = v61[2];
    }

    *&v150 = *(v57 + 24);
    *(&v150 + 1) = v62;
    *&v151 = v63;
    v55 = -1;
    do
    {
      if (v62 == v151)
      {
        result = sub_181AC81FC(v60);
        if ((result & 1) == 0)
        {
          goto LABEL_71;
        }

        v62 = *(&v150 + 1);
      }

      *(&v150 + 1) = v62 + 1;
      v5 = v55 + 2;
      if (__OFADD__(v55 + 1, 1))
      {
        __break(1u);
        goto LABEL_80;
      }

      v64 = *(v150 + 8 * v62 + 40);
      ++v55;
      ++v62;
    }

    while (v64 != v58);
    result = swift_beginAccess();
    if (v55 >= *(*(v57 + 24) + 24))
    {
      goto LABEL_82;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1820E6310();
    }

    v3 = *(v57 + 24);
    if (v55 >= *(v3 + 24))
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (v5 >= v55)
    {
      goto LABEL_69;
    }

    __break(1u);
LABEL_54:
    swift_beginAccess();
    v65 = *(v3 + 472);
    swift_beginAccess();
    v66 = *(v5 + 128);
    swift_beginAccess();
    if (!*(*(v65 + 16) + 16))
    {
      goto LABEL_70;
    }

    sub_18225BD68();
    if ((v67 & 1) == 0)
    {
      goto LABEL_70;
    }

    v80 = v5;
    swift_endAccess();
    swift_beginAccess();

    sub_1822501BC(v66);
    swift_endAccess();

    result = swift_beginAccess();
    v69 = *(v65 + 24);
    v70 = v69[4];
    v71 = v69[3] + v70;
    if (v69[2] < v71)
    {
      v71 = v69[2];
    }

    *&v150 = *(v65 + 24);
    *(&v150 + 1) = v70;
    *&v151 = v71;
    v55 = -1;
    while (1)
    {
      if (v70 == v151)
      {
        result = sub_181AC81FC(v68);
        if ((result & 1) == 0)
        {
          goto LABEL_71;
        }

        v70 = *(&v150 + 1);
      }

      *(&v150 + 1) = v70 + 1;
      v5 = v55 + 2;
      if (__OFADD__(v55 + 1, 1))
      {
        break;
      }

      v72 = *(v150 + 8 * v70 + 40);
      ++v55;
      ++v70;
      if (v72 == v66)
      {
        result = swift_beginAccess();
        if (v55 >= *(*(v65 + 24) + 24))
        {
          goto LABEL_84;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1820E6310();
        }

        v3 = *(v65 + 24);
        if (v55 >= *(v3 + 24))
        {
          goto LABEL_87;
        }

        if (v5 < v55)
        {
          goto LABEL_88;
        }

        goto LABEL_69;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v4 != 1)
  {
    goto LABEL_54;
  }

  swift_beginAccess();
  v48 = *(v3 + 320);
  swift_beginAccess();
  v49 = *(v5 + 128);
  swift_beginAccess();
  if (*(*(v48 + 16) + 16))
  {
    sub_18225BD68();
    if (v50)
    {
      v80 = v5;
      swift_endAccess();
      swift_beginAccess();

      sub_1822501BC(v49);
      swift_endAccess();

      result = swift_beginAccess();
      v52 = *(v48 + 24);
      v53 = v52[4];
      v54 = v52[3] + v53;
      if (v52[2] < v54)
      {
        v54 = v52[2];
      }

      *&v150 = *(v48 + 24);
      *(&v150 + 1) = v53;
      *&v151 = v54;
      v55 = -1;
      do
      {
        if (v53 == v151)
        {
          result = sub_181AC81FC(v51);
          if ((result & 1) == 0)
          {
LABEL_71:

LABEL_72:
            v5 = v80;

            goto LABEL_73;
          }

          v53 = *(&v150 + 1);
        }

        *(&v150 + 1) = v53 + 1;
        v5 = v55 + 2;
        if (__OFADD__(v55 + 1, 1))
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v56 = *(v150 + 8 * v53 + 40);
        ++v55;
        ++v53;
      }

      while (v56 != v49);
      result = swift_beginAccess();
      if (v55 >= *(*(v48 + 24) + 24))
      {
        goto LABEL_83;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1820E6310();
      }

      v3 = *(v48 + 24);
      if (v55 < *(v3 + 24))
      {
        if (v5 < v55)
        {
          __break(1u);
          goto LABEL_38;
        }

LABEL_69:
        sub_181D8977C(v55, v5, (v3 + 16), v3 + 40, v134);

        sub_18226EC18(v55, v5, (v3 + 16), (v3 + 40));
        swift_endAccess();

        goto LABEL_72;
      }

      goto LABEL_86;
    }
  }

LABEL_70:
  swift_endAccess();
LABEL_73:
  swift_endAccess();
  result = swift_beginAccess();
  v73 = *(v5 + 136);
  v74 = *(v73 + 16);
  if (v74)
  {

    v75 = v74 - 1;
    for (i = 32; ; i += 80)
    {
      v164 = *(v73 + i);
      v77 = *(v73 + i + 16);
      v78 = *(v73 + i + 32);
      v79 = *(v73 + i + 48);
      v168 = *(v73 + i + 64);
      v167 = v79;
      v166 = v78;
      v165 = v77;
      v151 = *(v73 + i + 16);
      v152 = *(v73 + i + 32);
      v153 = *(v73 + i + 48);
      v154 = *(v73 + i + 64);
      v150 = *(v73 + i);
      sub_181F842F0(&v164, &v136);
      sub_182065D0C(&v150, v4);
      sub_181F8434C(&v164);
      if (!v75)
      {
        break;
      }

      --v75;
    }
  }

  return result;
}

void sub_181FF9CF0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v8 = *(a1 + 144);
  swift_beginAccess();
  v9 = *(v8 + 24);
  v10 = *(v9 + 24);
  if (!v10)
  {
LABEL_14:
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (v10 < 1)
  {
    __break(1u);
LABEL_25:
    *&v79[0] = 0;
    *(&v79[0] + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000028, 0x8000000182BD8390);
    LOBYTE(v76[0]) = *(a2 + 9);
    sub_182AD3E18();
    v25 = v79[0];
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v26 = sub_182AD2698();
    __swift_project_value_buffer(v26, qword_1EA843418);
    v27 = swift_allocObject();
    *(v27 + 16) = "buildNewlyAckedPacketsArray(ackFrame:path:)";
    *(v27 + 24) = 43;
    *(v27 + 32) = 2;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_181F8C724;
    *(v28 + 24) = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = 1564427099;
    *(v29 + 24) = 0xE400000000000000;
    v30 = swift_allocObject();
    *(v30 + 16) = v25;

    v31 = sub_182AD2678();
    v32 = sub_182AD38A8();
    v65 = swift_allocObject();
    *(v65 + 16) = 32;
    v67 = swift_allocObject();
    *(v67 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_181F8C71C;
    *(v33 + 24) = v28;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_181F8C718;
    *(v34 + 24) = v33;
    v35 = swift_allocObject();
    *(v35 + 16) = 32;
    v69 = swift_allocObject();
    *(v69 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_181F8C720;
    *(v36 + 24) = v29;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_181F8C718;
    *(v37 + 24) = v36;
    v71 = swift_allocObject();
    *(v71 + 16) = 32;
    v73 = swift_allocObject();
    *(v73 + 16) = 8;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_181F8C720;
    *(v38 + 24) = v30;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_181F8C718;
    *(v39 + 24) = v38;
    v63 = v32;
    v40 = v31;
    if (os_log_type_enabled(v31, v32))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v77[0] = 0;
      *v41 = 770;
      v78 = v42;
      v76[0] = v41 + 2;
      *&v79[0] = sub_181F8C728;
      *(&v79[0] + 1) = v65;
      sub_181F73AE0(v79, v76, v77, &v78);

      *&v79[0] = sub_181F8C728;
      *(&v79[0] + 1) = v67;
      sub_181F73AE0(v79, v76, v77, &v78);

      *&v79[0] = sub_181F8C714;
      *(&v79[0] + 1) = v34;
      sub_181F73AE0(v79, v76, v77, &v78);

      *&v79[0] = sub_181F8C728;
      *(&v79[0] + 1) = v35;
      sub_181F73AE0(v79, v76, v77, &v78);

      *&v79[0] = sub_181F8C728;
      *(&v79[0] + 1) = v69;
      sub_181F73AE0(v79, v76, v77, &v78);

      *&v79[0] = sub_181F8C714;
      *(&v79[0] + 1) = v37;
      sub_181F73AE0(v79, v76, v77, &v78);

      *&v79[0] = sub_181F8C728;
      *(&v79[0] + 1) = v71;
      sub_181F73AE0(v79, v76, v77, &v78);

      *&v79[0] = sub_181F8C728;
      *(&v79[0] + 1) = v73;
      sub_181F73AE0(v79, v76, v77, &v78);

      *&v79[0] = sub_181F8C714;
      *(&v79[0] + 1) = v39;
      sub_181F73AE0(v79, v76, v77, &v78);

      _os_log_impl(&dword_181A37000, v40, v63, "%s %s %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v42, -1, -1);
      MEMORY[0x1865DF520](v41, -1, -1);
    }

    else
    {
    }

    goto LABEL_18;
  }

  swift_beginAccess();
  v11 = *(v8 + 16);
  if (!*(v11 + 16) || (v12 = sub_18225BD68(), (v13 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_14;
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  swift_endAccess();
  swift_beginAccess();
  v15 = *(v14 + 128);
  v16 = *(a2 + 32);
  if (v15 >= 1 && v16 < v15)
  {
    v24 = qword_1EA837250;

    if (v24 == -1)
    {
LABEL_21:
      if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
      {
LABEL_23:

LABEL_18:
        v23 = 0;
        goto LABEL_19;
      }

LABEL_33:
      *&v79[0] = 0;
      *(&v79[0] + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD83C0);
      v76[0] = *(v14 + 128);
      v43 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v43);

      MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BD83E0);
      v76[0] = v16;
      v44 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v44);

      MEMORY[0x1865D9CA0](0x6970706F7473202CLL, 0xEA0000000000676ELL);
      v45 = v79[0];
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v46 = sub_182AD2698();
      __swift_project_value_buffer(v46, qword_1EA843418);
      v47 = swift_allocObject();
      *(v47 + 16) = "buildNewlyAckedPacketsArray(ackFrame:path:)";
      *(v47 + 24) = 43;
      *(v47 + 32) = 2;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_181F8C724;
      *(v48 + 24) = v47;
      v49 = swift_allocObject();
      *(v49 + 16) = 1564427099;
      *(v49 + 24) = 0xE400000000000000;
      v50 = swift_allocObject();
      *(v50 + 16) = v45;

      v51 = sub_182AD2678();
      v52 = sub_182AD38A8();
      v66 = swift_allocObject();
      *(v66 + 16) = 32;
      v68 = swift_allocObject();
      *(v68 + 16) = 8;
      v53 = swift_allocObject();
      *(v53 + 16) = sub_181F8C71C;
      *(v53 + 24) = v48;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_181F8C718;
      *(v54 + 24) = v53;
      v64 = swift_allocObject();
      *(v64 + 16) = 32;
      v70 = swift_allocObject();
      *(v70 + 16) = 8;
      v55 = swift_allocObject();
      *(v55 + 16) = sub_181F8C720;
      *(v55 + 24) = v49;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_181F8C718;
      *(v56 + 24) = v55;
      v72 = swift_allocObject();
      *(v72 + 16) = 32;
      v74 = swift_allocObject();
      *(v74 + 16) = 8;
      v57 = swift_allocObject();
      *(v57 + 16) = sub_181F8C720;
      *(v57 + 24) = v50;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_181F8C718;
      *(v58 + 24) = v57;
      v62 = v52;
      v59 = v51;
      if (os_log_type_enabled(v51, v52))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v78 = 0;
        *v60 = 770;
        v75 = v61;
        v76[0] = v60 + 2;
        *&v79[0] = sub_181F8C728;
        *(&v79[0] + 1) = v66;
        sub_181F73AE0(v79, v76, &v78, &v75);

        *&v79[0] = sub_181F8C728;
        *(&v79[0] + 1) = v68;
        sub_181F73AE0(v79, v76, &v78, &v75);

        *&v79[0] = sub_181F8C714;
        *(&v79[0] + 1) = v54;
        sub_181F73AE0(v79, v76, &v78, &v75);

        *&v79[0] = sub_181F8C728;
        *(&v79[0] + 1) = v64;
        sub_181F73AE0(v79, v76, &v78, &v75);

        *&v79[0] = sub_181F8C728;
        *(&v79[0] + 1) = v70;
        sub_181F73AE0(v79, v76, &v78, &v75);

        *&v79[0] = sub_181F8C714;
        *(&v79[0] + 1) = v56;
        sub_181F73AE0(v79, v76, &v78, &v75);

        *&v79[0] = sub_181F8C728;
        *(&v79[0] + 1) = v72;
        sub_181F73AE0(v79, v76, &v78, &v75);

        *&v79[0] = sub_181F8C728;
        *(&v79[0] + 1) = v74;
        sub_181F73AE0(v79, v76, &v78, &v75);

        *&v79[0] = sub_181F8C714;
        *(&v79[0] + 1) = v58;
        sub_181F73AE0(v79, v76, &v78, &v75);

        _os_log_impl(&dword_181A37000, v59, v62, "%s %s %s", v60, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v61, -1, -1);
        MEMORY[0x1865DF520](v60, -1, -1);
      }

      else
      {
      }

      goto LABEL_23;
    }

LABEL_31:
    swift_once();
    goto LABEL_21;
  }

  if (v15 >> 62)
  {
    __break(1u);
    goto LABEL_31;
  }

  v18 = *(a1 + 112);
  v79[6] = *(a1 + 96);
  v79[7] = v18;
  v79[8] = *(a1 + 128);
  v80 = *(a1 + 144);
  v19 = *(a1 + 48);
  v79[2] = *(a1 + 32);
  v79[3] = v19;
  v20 = *(a1 + 80);
  v79[4] = *(a1 + 64);
  v79[5] = v20;
  v21 = *(a1 + 16);
  v79[0] = *a1;
  v79[1] = v21;

  sub_18201C7A8(v79, v76);
  sub_18229FEEC(a2, v15);
  v22 = *(v14 + 128);
  if (v22 >> 62)
  {
    __break(1u);
    goto LABEL_33;
  }

  sub_18201C7A8(v79, v76);
  sub_18229FFD0((a1 + 48), v22, v16, (a1 + 64), v79, a3);
  sub_182010E08(v79);

  sub_182010E08(v79);
  v23 = 1;
LABEL_19:
  *a4 = v23;
}

uint64_t sub_181FFAD8C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a1 + 9);
  v9 = sub_182017920(a1);
  v10 = v9;
  if (v9 >> 62)
  {
LABEL_20:
    v11 = sub_182AD3EB8();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      v62 = v10 & 0xC000000000000001;
      v55 = v10 & 0xFFFFFFFFFFFFFF8;
      v56 = v11;
      v59 = v8;
      v57 = v10;
      v58 = a4;
      do
      {
        if (v62)
        {
          v13 = MEMORY[0x1865DA790](v12, v10);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v12 >= *(v55 + 16))
          {
            goto LABEL_19;
          }

          v13 = *(v10 + 8 * v12 + 32);

          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }
        }

        v63 = v14;
        if (*(v13 + 200))
        {
          swift_beginAccess();
          if (*(v13 + 144))
          {
            v61 = v12;
            v15 = *(v13 + 144);
            swift_beginAccess();
            v16 = *(v15 + 168);
            v17 = *(v15 + 152);
            v18 = v5;
            v19 = *(v13 + 128);
            v20 = *(v13 + 192);
            v21 = *(v13 + 120);

            v22 = v19;
            v5 = v18;
            sub_1820179D8(v22, v21, v20, a3, v16, v17);
            if (*(v13 + 208) == 1)
            {
              v23 = *(a2 + 912);
              v24 = *(a2 + 880);
              v91 = *(a2 + 896);
              v92 = v23;
              v25 = *(a2 + 912);
              v93 = *(a2 + 928);
              v26 = *(a2 + 848);
              v27 = *(a2 + 816);
              v87 = *(a2 + 832);
              v88 = v26;
              v28 = *(a2 + 848);
              v29 = *(a2 + 880);
              v89 = *(a2 + 864);
              v90 = v29;
              v30 = *(a2 + 784);
              v31 = *(a2 + 752);
              v83 = *(a2 + 768);
              v84 = v30;
              v32 = *(a2 + 784);
              v33 = *(a2 + 816);
              v85 = *(a2 + 800);
              v86 = v33;
              v34 = *(a2 + 752);
              v82[0] = *(a2 + 736);
              v82[1] = v34;
              v105 = v91;
              v106 = v25;
              v107 = *(a2 + 928);
              v101 = v87;
              v102 = v28;
              v103 = v89;
              v104 = v24;
              v97 = v83;
              v98 = v32;
              v99 = v85;
              v100 = v27;
              v94 = *(a2 + 944);
              v108 = *(a2 + 944);
              v95 = v82[0];
              v96 = v31;
              result = sub_182015D6C(&v95);
              if (result == 1)
              {
                __break(1u);
                return result;
              }

              v119 = v105;
              v120 = v106;
              v121 = v107;
              v122 = v108;
              v115 = v101;
              v116 = v102;
              v117 = v103;
              v118 = v104;
              v111 = v97;
              v112 = v98;
              v113 = v99;
              v114 = v100;
              v109 = v95;
              v110 = v96;
              sub_18201A394(v82, v80);
              sub_182285284(v64);

              sub_182015DF0(v82);
              v76 = v64[10];
              v77 = v64[11];
              v78 = v64[12];
              v79 = v65;
              v72 = v64[6];
              v73 = v64[7];
              v74 = v64[8];
              v75 = v64[9];
              v68 = v64[2];
              v69 = v64[3];
              v70 = v64[4];
              v71 = v64[5];
              v66 = v64[0];
              v67 = v64[1];
              nullsub_41();
              v36 = *(a2 + 912);
              v80[10] = *(a2 + 896);
              v80[11] = v36;
              v80[12] = *(a2 + 928);
              v81 = *(a2 + 944);
              v37 = *(a2 + 848);
              v80[6] = *(a2 + 832);
              v80[7] = v37;
              v38 = *(a2 + 880);
              v80[8] = *(a2 + 864);
              v80[9] = v38;
              v39 = *(a2 + 784);
              v80[2] = *(a2 + 768);
              v80[3] = v39;
              v40 = *(a2 + 816);
              v80[4] = *(a2 + 800);
              v80[5] = v40;
              v41 = *(a2 + 752);
              v80[0] = *(a2 + 736);
              v80[1] = v41;
              v42 = v77;
              *(a2 + 896) = v76;
              *(a2 + 912) = v42;
              *(a2 + 928) = v78;
              *(a2 + 944) = v79;
              v43 = v73;
              *(a2 + 832) = v72;
              *(a2 + 848) = v43;
              v44 = v75;
              *(a2 + 864) = v74;
              *(a2 + 880) = v44;
              v45 = v69;
              *(a2 + 768) = v68;
              *(a2 + 784) = v45;
              v46 = v71;
              *(a2 + 800) = v70;
              *(a2 + 816) = v46;
              v47 = v67;
              *(a2 + 736) = v66;
              *(a2 + 752) = v47;
              sub_182015DF0(v80);
            }

            else
            {
            }

            v8 = v59;
            v10 = v57;
            a4 = v58;
            v11 = v56;
            v12 = v61;
          }
        }

        sub_181FF912C(a2, v13, v8);

        ++v12;
      }

      while (v63 != v11);
    }
  }

  if (v8)
  {
    swift_beginAccess();
    if (v8 == 1)
    {
      v48 = 232;
      v49 = 248;
      v50 = 224;
      v51 = 240;
    }

    else
    {
      v48 = 384;
      v49 = 400;
      v50 = 376;
      v51 = 392;
    }
  }

  else
  {
    swift_beginAccess();
    v48 = 80;
    v49 = 96;
    v50 = 72;
    v51 = 88;
  }

  v52 = *(v5 + v51);
  v53 = *(v5 + v49);
  v54 = *(v5 + v48);
  *(v5 + v51) = *(v5 + v50);
  *(v5 + v49) = v54;
  *(v5 + v50) = v52;
  *(v5 + v48) = v53;
  return 1;
}

uint64_t sub_181FFB210(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = a1;
  swift_beginAccess();
  if (*(a2 + 168) <= *(a2 + 152))
  {
    v9 = *(a2 + 152);
  }

  else
  {
    v9 = *(a2 + 168);
  }

  if (!v8)
  {
    swift_beginAccess();
    v20 = *(v4 + 136);
    v73 = *(v4 + 120);
    v74 = v20;
    v75 = *(v4 + 152);
    v76 = *(v4 + 168);
    v21 = *(v4 + 72);
    v69 = *(v4 + 56);
    v70 = v21;
    v22 = *(v4 + 104);
    v71 = *(v4 + 88);
    v72 = v22;
    v23 = *(v4 + 40);
    v67 = *(v4 + 24);
    v68 = v23;

    sub_18201C7A8(&v67, v66);
    if (qword_1EA837020 != -1)
    {
      goto LABEL_70;
    }

    goto LABEL_23;
  }

  if (v8 != 1)
  {
    goto LABEL_36;
  }

  swift_beginAccess();
  v10 = *(v4 + 288);
  v73 = *(v4 + 272);
  v74 = v10;
  v75 = *(v4 + 304);
  v76 = *(v4 + 320);
  v11 = *(v4 + 224);
  v69 = *(v4 + 208);
  v70 = v11;
  v12 = *(v4 + 256);
  v71 = *(v4 + 240);
  v72 = v12;
  v13 = *(v4 + 192);
  v67 = *(v4 + 176);
  v68 = v13;

  sub_18201C7A8(&v67, v66);
  if (qword_1EA837020 != -1)
  {
    goto LABEL_68;
  }

  while (1)
  {
    v14 = qword_1EA843200;
    sub_182010E08(&v67);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = v9 >> SBYTE8(v75);
      if (*(&v75 + 1) >= 0x40uLL)
      {
        v15 = 0;
      }

      v16 = v9 << -BYTE8(v75);
      if (*(&v75 + 1) <= 0xFFFFFFFFFFFFFFC0)
      {
        v16 = 0;
      }

      if (v75 < 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      if ((*(&v75 + 1) - 65) <= 0xFFFFFFFFFFFFFF7ELL)
      {
        v17 = 0;
      }

      v18 = __CFADD__(v9, v17);
      v19 = v9 + v17;
      if (v18)
      {
        __break(1u);
        return 0;
      }

      goto LABEL_48;
    }

    __break(1u);
LABEL_70:
    swift_once();
LABEL_23:
    v14 = qword_1EA843200;
    sub_182010E08(&v67);
    if (v14 < 0)
    {
      __break(1u);
    }

    else
    {
      v24 = v9 >> SBYTE8(v75);
      if (*(&v75 + 1) >= 0x40uLL)
      {
        v24 = 0;
      }

      v25 = v9 << -BYTE8(v75);
      if (*(&v75 + 1) <= 0xFFFFFFFFFFFFFFC0)
      {
        v25 = 0;
      }

      if (v75 < 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      if ((*(&v75 + 1) - 65) <= 0xFFFFFFFFFFFFFF7ELL)
      {
        v26 = 0;
      }

      v18 = __CFADD__(v9, v26);
      v19 = v9 + v26;
      if (!v18)
      {
        goto LABEL_48;
      }

      __break(1u);
LABEL_36:
      swift_beginAccess();
      v27 = *(v4 + 440);
      v73 = *(v4 + 424);
      v74 = v27;
      v75 = *(v4 + 456);
      v76 = *(v4 + 472);
      v28 = *(v4 + 376);
      v69 = *(v4 + 360);
      v70 = v28;
      v29 = *(v4 + 408);
      v71 = *(v4 + 392);
      v72 = v29;
      v30 = *(v4 + 344);
      v67 = *(v4 + 328);
      v68 = v30;

      sub_18201C7A8(&v67, v66);
      if (qword_1EA837020 == -1)
      {
        goto LABEL_37;
      }
    }

    swift_once();
LABEL_37:
    v14 = qword_1EA843200;
    sub_182010E08(&v67);
    if (v14 < 0)
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      *&v67 = 0;
      *(&v67 + 1) = 0xE000000000000000;
      sub_182AD3BA8();

      *&v67 = 0x20646E756F46;
      *(&v67 + 1) = 0xE600000000000000;
      v65 = *(v9 + 16);
      v38 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v38);

      MEMORY[0x1865D9CA0](0x61702074736F6C20, 0xED00007374656B63);
      v39 = *(&v67 + 1);
      v61 = v67;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v40 = sub_182AD2698();
      __swift_project_value_buffer(v40, qword_1EA843418);
      v41 = swift_allocObject();
      *(v41 + 16) = "findLostPacketInner(pnSpace:path:timeNow:connection:)";
      *(v41 + 24) = 53;
      *(v41 + 32) = 2;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_181F8C724;
      *(v42 + 24) = v41;
      v43 = swift_allocObject();
      *(v43 + 16) = 1564427099;
      *(v43 + 24) = 0xE400000000000000;
      v44 = swift_allocObject();
      *(v44 + 16) = v61;
      *(v44 + 24) = v39;

      oslog = sub_182AD2678();
      v59 = sub_182AD38A8();
      v54 = swift_allocObject();
      *(v54 + 16) = 32;
      v55 = swift_allocObject();
      *(v55 + 16) = 8;
      v45 = swift_allocObject();
      *(v45 + 16) = sub_181F8C71C;
      *(v45 + 24) = v42;
      v46 = swift_allocObject();
      *(v46 + 16) = sub_181F8C718;
      *(v46 + 24) = v45;
      v56 = swift_allocObject();
      *(v56 + 16) = 32;
      v57 = swift_allocObject();
      *(v57 + 16) = 8;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_181F8C720;
      *(v47 + 24) = v43;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_181F8C718;
      *(v48 + 24) = v47;
      v58 = swift_allocObject();
      *(v58 + 16) = 32;
      v60 = swift_allocObject();
      *(v60 + 16) = 8;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_181F8C720;
      *(v49 + 24) = v44;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_181F8C718;
      *(v50 + 24) = v49;
      v62 = v50;
      if (os_log_type_enabled(oslog, v59))
      {
        v51 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = 0;
        v52 = v63;
        *v51 = 770;
        v65 = v51 + 2;
        *&v67 = sub_181F8C728;
        *(&v67 + 1) = v54;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C728;
        *(&v67 + 1) = v55;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C714;
        *(&v67 + 1) = v46;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C728;
        *(&v67 + 1) = v56;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C728;
        *(&v67 + 1) = v57;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C714;
        *(&v67 + 1) = v48;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C728;
        *(&v67 + 1) = v58;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C728;
        *(&v67 + 1) = v60;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        *&v67 = sub_181F8C714;
        *(&v67 + 1) = v62;
        sub_181F73AE0(&v67, &v65, &v64, &v63);

        _os_log_impl(&dword_181A37000, oslog, v59, "%s %s %s", v51, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v52, -1, -1);
        MEMORY[0x1865DF520](v51, -1, -1);
      }

      else
      {
      }

LABEL_64:
      sub_18201AEC0(v9, v8, a4);
      goto LABEL_65;
    }

    v31 = v9 >> SBYTE8(v75);
    if (*(&v75 + 1) >= 0x40uLL)
    {
      v31 = 0;
    }

    v32 = v9 << -BYTE8(v75);
    if (*(&v75 + 1) <= 0xFFFFFFFFFFFFFFC0)
    {
      v32 = 0;
    }

    if (v75 < 0)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    if ((*(&v75 + 1) - 65) <= 0xFFFFFFFFFFFFFF7ELL)
    {
      v33 = 0;
    }

    v18 = __CFADD__(v9, v33);
    v19 = v9 + v33;
    if (v18)
    {
      goto LABEL_74;
    }

LABEL_48:
    if (v19 <= 2 * v14)
    {
      v34 = 2 * v14;
    }

    else
    {
      v34 = v19;
    }

    if (*(a2 + 1016))
    {
      goto LABEL_54;
    }

    if ((v34 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_68:
    swift_once();
  }

  *(a2 + 1008) = v34;
LABEL_54:
  v66[0] = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    swift_beginAccess();
    if (v8 == 1)
    {
      v35 = (v4 + 176);
    }

    else
    {
      v35 = (v4 + 328);
    }
  }

  else
  {
    swift_beginAccess();
    v35 = (v4 + 24);
  }

  sub_181FFBDA8(v35, a3, v34, v66);
  swift_endAccess();
  v9 = v66[0];
  v36 = *(v66[0] + 2);
  v14 = v36 != 0;
  if (v36)
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
    {
      goto LABEL_64;
    }

    goto LABEL_75;
  }

LABEL_65:

  return v14;
}

uint64_t sub_181FFBDA8(void *a1, unint64_t a2, unint64_t a3, char **a4)
{
  a1[5] = 0;
  v8 = a1[18];
  swift_beginAccess();
  v9 = *(v8 + 16);
  v12 = *(v9 + 64);
  v11 = v9 + 64;
  v10 = v12;
  v13 = 1 << *(*(v8 + 16) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v113 = a2 - a3;
  v114 = a2;
  v111 = a2 < a3;

  v18 = a1;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  while (1)
  {
    while (1)
    {
      if (!v15)
      {
        while (1)
        {
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v22 >= v16)
          {
          }

          v15 = *(v11 + 8 * v22);
          ++v19;
          if (v15)
          {
            v19 = v22;
            goto LABEL_9;
          }
        }

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

        while (1)
        {

          __break(1u);
        }
      }

LABEL_9:
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v24 = (v19 << 9) | (8 * v23);
      v25 = *(*(v17 + 56) + v24);
      if (!*(v25 + 200))
      {
        v26 = *(*(v17 + 48) + v24);
        v27 = v18[3];
        if (v27 >= v26)
        {
          v28 = *(v25 + 192);
          if (v28 <= v114)
          {
            break;
          }
        }
      }
    }

    v107 = v21;
    v109 = v17;
    v110 = v20;
    v112 = v18;
    swift_beginAccess();
    v108 = a3;
    if (!*(v25 + 144))
    {
      a3 = -1;
LABEL_26:
      v33 = qword_1EA837250;

      if (v33 != -1)
      {
        swift_once();
      }

      if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
      {
        v105 = a4;
        v118 = 0;
        v119 = 0xE000000000000000;
        sub_182AD3BA8();
        MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BD7FE0);
        v117 = v26;
        sub_182AD3E18();
        MEMORY[0x1865D9CA0](544106784, 0xE400000000000000);
        LOBYTE(v117) = *(v25 + 120);
        sub_182AD3E18();
        MEMORY[0x1865D9CA0](0x7420746E6573202CLL, 0xEC00000020656D69);
        v117 = *(v25 + 192);
        v42 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v42);

        MEMORY[0x1865D9CA0](540884000, 0xE400000000000000);
        v117 = a3;
        v43 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v43);

        MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BD8000);
        v117 = v27;
        a3 = &type metadata for PacketNumber;
        sub_182AD3E18();
        MEMORY[0x1865D9CA0](540884512, 0xE400000000000000);
        v44 = v112[16];
        v30 = __OFADD__(v26, v44);
        v45 = v26 + v44;
        if (v30)
        {
          goto LABEL_59;
        }

        v117 = v45;
        sub_182AD3E18();
        v46 = v118;
        v47 = v119;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v48 = sub_182AD2698();
        __swift_project_value_buffer(v48, qword_1EA843418);
        v49 = swift_allocObject();
        *(v49 + 16) = "findLostPacketInner(pnSpace:path:timeNow:connection:)";
        *(v49 + 24) = 53;
        *(v49 + 32) = 2;
        v50 = swift_allocObject();
        *(v50 + 16) = sub_181F8C724;
        *(v50 + 24) = v49;
        v101 = swift_allocObject();
        *(v101 + 16) = 1564427099;
        *(v101 + 24) = 0xE400000000000000;
        v82 = swift_allocObject();
        *(v82 + 16) = v46;
        *(v82 + 24) = v47;

        a3 = sub_182AD2678();
        v51 = sub_182AD38A8();
        v86 = swift_allocObject();
        *(v86 + 16) = 32;
        v88 = swift_allocObject();
        *(v88 + 16) = 8;
        v52 = swift_allocObject();
        *(v52 + 16) = sub_181F8C71C;
        *(v52 + 24) = v50;
        v53 = swift_allocObject();
        *(v53 + 16) = sub_181F8C718;
        *(v53 + 24) = v52;
        v90 = v53;
        v92 = swift_allocObject();
        *(v92 + 16) = 32;
        v94 = swift_allocObject();
        *(v94 + 16) = 8;
        v54 = swift_allocObject();
        *(v54 + 16) = sub_181F8C720;
        *(v54 + 24) = v101;
        v55 = swift_allocObject();
        *(v55 + 16) = sub_181F8C718;
        *(v55 + 24) = v54;
        v96 = v55;
        v98 = swift_allocObject();
        *(v98 + 16) = 32;
        v102 = swift_allocObject();
        *(v102 + 16) = 8;
        v56 = swift_allocObject();
        *(v56 + 16) = sub_181F8C720;
        *(v56 + 24) = v82;
        v57 = swift_allocObject();
        *(v57 + 16) = sub_181F8C718;
        *(v57 + 24) = v56;
        v83 = v51;
        v58 = v51;
        v59 = a3;
        if (os_log_type_enabled(a3, v58))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v115 = v61;
          v116 = 0;
          *v60 = 770;
          v62 = v61;
          v117 = (v60 + 2);
          v118 = sub_181F8C728;
          v119 = v86;
          a3 = v107;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C728;
          v119 = v88;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C714;
          v119 = v90;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C728;
          v119 = v92;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C728;
          v119 = v94;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C714;
          v119 = v96;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C728;
          v119 = v98;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C728;
          v119 = v102;
          sub_181F73AE0(&v118, &v117, &v116, &v115);

          v118 = sub_181F8C714;
          v119 = v57;
          sub_181F73AE0(&v118, &v117, &v116, &v115);
          v107 = 0;

          _os_log_impl(&dword_181A37000, v59, v83, "%s %s %s", v60, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v62, -1, -1);
          MEMORY[0x1865DF520](v60, -1, -1);
        }

        else
        {
        }

        a4 = v105;
      }

      *(v25 + 200) = v114;
      if (*(v25 + 152) == 1)
      {
        if (__OFSUB__(*v112, 1))
        {
          goto LABEL_56;
        }

        --*v112;
      }

      v104 = *(v25 + 120);
      v34 = *(v25 + 128);
      v35 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v35;
      if (isUniquelyReferenced_nonNull_native)
      {
        v37 = a4;
      }

      else
      {
        v35 = sub_181F5A588(0, *(v35 + 2) + 1, 1, v35);
        v37 = a4;
        *a4 = v35;
      }

      v39 = *(v35 + 2);
      v38 = *(v35 + 3);
      if (v39 >= v38 >> 1)
      {
        *v37 = sub_181F5A588((v38 > 1), v39 + 1, 1, v35);
      }

      v40 = *v37;
      *(v40 + 2) = v39 + 1;
      v41 = &v40[16 * v39];
      a4 = v37;
      v41[32] = v104;
      *(v41 + 5) = v34;
      goto LABEL_38;
    }

    if (v111)
    {
      goto LABEL_55;
    }

    a3 = v113;
    if (v113 >= v28)
    {
      goto LABEL_26;
    }

    if (v27 != -1)
    {
      v29 = v112[16];
      v30 = __OFADD__(v26, v29);
      v31 = v26 + v29;
      if (v30)
      {
        goto LABEL_58;
      }

      a3 = v113;
      if (v27 >= v31)
      {
        goto LABEL_26;
      }
    }

    a3 = v108;
    if (v110)
    {
    }

    if (__CFADD__(v28, v108))
    {
      goto LABEL_57;
    }

    v110 = v28 + v108;
    v112[5] = v28 + v108;
    v32 = qword_1EA837250;

    if (v32 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
    {

      goto LABEL_39;
    }

    v106 = a4;
    v118 = 0;
    v119 = 0xE000000000000000;
    sub_182AD3BA8();

    v118 = 0xD000000000000012;
    v119 = 0x8000000182BD8020;
    v117 = v110;
    v63 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v63);

    v64 = v118;
    v103 = v119;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v65 = sub_182AD2698();
    __swift_project_value_buffer(v65, qword_1EA843418);
    v66 = swift_allocObject();
    *(v66 + 16) = "findLostPacketInner(pnSpace:path:timeNow:connection:)";
    *(v66 + 24) = 53;
    *(v66 + 32) = 2;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_181F8C724;
    *(v67 + 24) = v66;
    v68 = swift_allocObject();
    *(v68 + 16) = 1564427099;
    *(v68 + 24) = 0xE400000000000000;
    v99 = swift_allocObject();
    *(v99 + 16) = v64;
    *(v99 + 24) = v103;

    v69 = sub_182AD2678();
    v70 = sub_182AD38A8();
    v84 = swift_allocObject();
    *(v84 + 16) = 32;
    v85 = swift_allocObject();
    *(v85 + 16) = 8;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_181F8C71C;
    *(v71 + 24) = v67;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_181F8C718;
    *(v72 + 24) = v71;
    v87 = v72;
    v89 = swift_allocObject();
    *(v89 + 16) = 32;
    v91 = swift_allocObject();
    *(v91 + 16) = 8;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_181F8C720;
    *(v73 + 24) = v68;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_181F8C718;
    *(v74 + 24) = v73;
    v93 = v74;
    v95 = swift_allocObject();
    *(v95 + 16) = 32;
    v97 = swift_allocObject();
    *(v97 + 16) = 8;
    v75 = swift_allocObject();
    *(v75 + 16) = sub_181F8C720;
    *(v75 + 24) = v99;
    v76 = swift_allocObject();
    *(v76 + 16) = sub_181F8C718;
    *(v76 + 24) = v75;
    v100 = v76;
    v77 = v69;
    if (os_log_type_enabled(v69, v70))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v115 = v79;
      v116 = 0;
      *v78 = 770;
      v80 = v79;
      v117 = (v78 + 2);
      v118 = sub_181F8C728;
      v119 = v84;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C728;
      v119 = v85;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C714;
      v119 = v87;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C728;
      v119 = v89;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C728;
      v119 = v91;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C714;
      v119 = v93;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C728;
      v119 = v95;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C728;
      v119 = v97;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      v118 = sub_181F8C714;
      v119 = v100;
      sub_181F73AE0(&v118, &v117, &v116, &v115);

      _os_log_impl(&dword_181A37000, v77, v70, "%s %s %s", v78, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v80, -1, -1);
      MEMORY[0x1865DF520](v78, -1, -1);

      a4 = v106;
      a3 = v108;
      v17 = v109;
      v18 = v112;
      v20 = v110;
      v21 = 0;
    }

    else
    {

      a4 = v106;
LABEL_38:
      a3 = v108;
LABEL_39:
      v18 = v112;
      v17 = v109;
      v20 = v110;
      v21 = v107;
    }
  }
}

uint64_t sub_181FFD0CC(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (!a4)
  {
    swift_beginAccess();
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    v9 = byte_1EA843430;
    if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
    {
      *&v714 = 0;
      *(&v714 + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD7DC0);
      *&v700 = a2;
      type metadata accessor for QUICPath();
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BD7DF0);
      *&v700 = v4[14];
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0x6E65732073617720, 0xED00002074612074);
      *&v700 = v4[15];
      v260 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v260);

      v261 = v714;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v262 = sub_182AD2698();
      __swift_project_value_buffer(v262, qword_1EA843418);
      v263 = swift_allocObject();
      *(v263 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
      *(v263 + 24) = 54;
      *(v263 + 32) = 2;
      v264 = swift_allocObject();
      *(v264 + 16) = sub_181F8C258;
      *(v264 + 24) = v263;
      v265 = swift_allocObject();
      *(v265 + 16) = 1564427099;
      *(v265 + 24) = 0xE400000000000000;
      v414 = swift_allocObject();
      *(v414 + 16) = v261;

      v428 = sub_182AD2678();
      v509 = sub_182AD38A8();
      v440 = swift_allocObject();
      *(v440 + 16) = 32;
      v452 = swift_allocObject();
      *(v452 + 16) = 8;
      v266 = swift_allocObject();
      *(v266 + 16) = sub_181F8C264;
      *(v266 + 24) = v264;
      v267 = swift_allocObject();
      *(v267 + 16) = sub_181F8C718;
      *(v267 + 24) = v266;
      v464 = swift_allocObject();
      *(v464 + 16) = 32;
      v5 = 32;
      v476 = swift_allocObject();
      *(v476 + 16) = 8;
      v268 = swift_allocObject();
      *(v268 + 16) = sub_181F8C26C;
      *(v268 + 24) = v265;
      v269 = swift_allocObject();
      *(v269 + 16) = sub_181F8C718;
      *(v269 + 24) = v268;
      v488 = v269;
      v500 = swift_allocObject();
      *(v500 + 16) = 32;
      v517 = swift_allocObject();
      *(v517 + 16) = 8;
      v270 = swift_allocObject();
      *(v270 + 16) = sub_181F8C26C;
      *(v270 + 24) = v414;
      v271 = swift_allocObject();
      *(v271 + 16) = sub_181F8C718;
      *(v271 + 24) = v270;
      if (os_log_type_enabled(v428, v509))
      {
        v5 = swift_slowAlloc();
        v272 = swift_slowAlloc();
        *&v686 = 0;
        *v5 = 770;
        v415 = v272;
        *&v672 = v272;
        *&v700 = v5 + 2;
        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v440;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v452;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = v267;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v464;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v476;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = v488;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v500;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v517;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = v271;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        _os_log_impl(&dword_181A37000, v428, v509, "%s %s %s", v5, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v415, -1, -1);
        MEMORY[0x1865DF520](v5, -1, -1);
      }

      else
      {
      }

      v4 = v518;
    }

    v27 = *(a2 + 912);
    v28 = *(a2 + 880);
    v696 = *(a2 + 896);
    v697 = v27;
    v29 = *(a2 + 912);
    v698 = *(a2 + 928);
    v30 = *(a2 + 848);
    v31 = *(a2 + 816);
    v692 = *(a2 + 832);
    v693 = v30;
    v32 = *(a2 + 848);
    v33 = *(a2 + 880);
    v694 = *(a2 + 864);
    v695 = v33;
    v34 = *(a2 + 784);
    v35 = *(a2 + 752);
    v688 = *(a2 + 768);
    v689 = v34;
    v36 = *(a2 + 784);
    v37 = *(a2 + 816);
    v690 = *(a2 + 800);
    v691 = v37;
    v38 = *(a2 + 752);
    v686 = *(a2 + 736);
    v687 = v38;
    v710 = v696;
    v711 = v29;
    v712 = *(a2 + 928);
    v706 = v692;
    v707 = v32;
    v708 = v694;
    v709 = v28;
    v702 = v688;
    v703 = v36;
    v704 = v690;
    v705 = v31;
    v699 = *(a2 + 944);
    v713 = *(a2 + 944);
    v700 = v686;
    v701 = v35;
    if (sub_182015D6C(&v700) == 1)
    {
      goto LABEL_212;
    }

    isa = v4[15].isa;
    v39 = *(a2 + 1072);
    v682 = v710;
    v683 = v711;
    v684 = v712;
    v685 = v713;
    v678 = v706;
    v679 = v707;
    v680 = v708;
    v681 = v709;
    v674 = v702;
    v675 = v703;
    v676 = v704;
    v677 = v705;
    v672 = v700;
    v673 = v701;
    if (sub_182015D80(&v672) == 1)
    {
      nullsub_41();
      v41 = *(v40 + 8);
      v636 = v40[6];
      v637 = v40[7];
      v638 = v40[8];
      v639 = v40[9];
      v632 = v40[2];
      v633 = v40[3];
      v634 = v40[4];
      v635 = v40[5];
      v630 = *v40;
      v631 = v40[1];
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_153;
      }

      v724 = v696;
      v725 = v697;
      v726 = v698;
      v727 = v699;
      v720 = v692;
      v721 = v693;
      v722 = v694;
      v723 = v695;
      v716 = v688;
      v717 = v689;
      v718 = v690;
      v719 = v691;
      v714 = v686;
      v715 = v687;
      sub_18201A394(&v686, &v658);
      sub_182015D94(&v714, &v658);
      v4 = &v630;
      sub_182014B48(a3);
      v26 = v41 >= isa;
      v5 = v41 < isa;
      if (!v26)
      {
        v4 = &v630;
        sub_182177F1C(v39);
      }

      sub_182015DF0(&v686);
      v650 = v636;
      v651 = v637;
      v652 = v638;
      v653 = v639;
      v646 = v632;
      v647 = v633;
      v648 = v634;
      v649 = v635;
      v644 = v630;
      v645 = v631;
      sub_182015D88(&v644);
    }

    else
    {
      nullsub_41();
      v97 = *(v96 + 8);
      v639 = v96[9];
      v640 = v96[10];
      v641 = v96[11];
      v642 = v96[12];
      v635 = v96[5];
      v636 = v96[6];
      v637 = v96[7];
      v638 = v96[8];
      v631 = v96[1];
      v632 = v96[2];
      v633 = v96[3];
      v634 = v96[4];
      v630 = *v96;
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_154;
      }

      v724 = v696;
      v725 = v697;
      v726 = v698;
      v727 = v699;
      v720 = v692;
      v721 = v693;
      v722 = v694;
      v723 = v695;
      v716 = v688;
      v717 = v689;
      v718 = v690;
      v719 = v691;
      v714 = v686;
      v715 = v687;
      sub_18201A394(&v686, &v658);
      sub_182015D94(&v714, &v658);
      v4 = &v630;
      sub_1820152EC(a3);
      v26 = v97 >= isa;
      v5 = v97 < isa;
      if (!v26)
      {
        v4 = &v630;
        sub_18228418C(v39);
      }

      sub_182015DF0(&v686);
      v654 = v640;
      v655 = v641;
      v656 = v642;
      v650 = v636;
      v651 = v637;
      v653 = v639;
      v652 = v638;
      v646 = v632;
      v647 = v633;
      v649 = v635;
      v648 = v634;
      v645 = v631;
      v644 = v630;
      sub_18201A508(&v644);
    }

    v668 = v654;
    v669 = v655;
    v670 = v656;
    v671 = v657;
    v664 = v650;
    v665 = v651;
    v666 = v652;
    v667 = v653;
    v660 = v646;
    v661 = v647;
    v662 = v648;
    v663 = v649;
    v658 = v644;
    v659 = v645;
    v640 = v654;
    v641 = v655;
    v642 = v656;
    v643 = v657;
    v636 = v650;
    v637 = v651;
    v638 = v652;
    v639 = v653;
    v632 = v646;
    v633 = v647;
    v634 = v648;
    v635 = v649;
    v630 = v644;
    v631 = v645;
    nullsub_41();
    v98 = *(a2 + 912);
    v654 = *(a2 + 896);
    v655 = v98;
    v656 = *(a2 + 928);
    v657 = *(a2 + 944);
    v99 = *(a2 + 848);
    v650 = *(a2 + 832);
    v651 = v99;
    v100 = *(a2 + 880);
    v652 = *(a2 + 864);
    v653 = v100;
    v101 = *(a2 + 784);
    v646 = *(a2 + 768);
    v647 = v101;
    v102 = *(a2 + 816);
    v648 = *(a2 + 800);
    v649 = v102;
    v103 = *(a2 + 752);
    v644 = *(a2 + 736);
    v645 = v103;
    v104 = v641;
    *(a2 + 896) = v640;
    *(a2 + 912) = v104;
    *(a2 + 928) = v642;
    *(a2 + 944) = v643;
    v105 = v637;
    *(a2 + 832) = v636;
    *(a2 + 848) = v105;
    v106 = v639;
    *(a2 + 864) = v638;
    *(a2 + 880) = v106;
    v107 = v633;
    *(a2 + 768) = v632;
    *(a2 + 784) = v107;
    v108 = v635;
    *(a2 + 800) = v634;
    *(a2 + 816) = v108;
    v109 = v631;
    *(a2 + 736) = v630;
    *(a2 + 752) = v109;
    sub_182015DF0(&v644);
    LODWORD(v517) = v5;
    if ((v9 & v5) == 1 && __nwlog_is_datapath_logging_enabled())
    {
      *&v714 = 0;
      *(&v714 + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x2074656B636170, 0xE700000000000000);
      *&v610 = a1;
      v301 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v301);

      MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD7D70);
      *&v610 = *(a2 + 16);
      v302 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v302);

      MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BD7D90);
      v303 = v714;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v304 = sub_182AD2698();
      __swift_project_value_buffer(v304, qword_1EA843418);
      v305 = swift_allocObject();
      *(v305 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
      *(v305 + 24) = 54;
      *(v305 + 32) = 2;
      v306 = swift_allocObject();
      *(v306 + 16) = sub_181F8C724;
      *(v306 + 24) = v305;
      v307 = swift_allocObject();
      *(v307 + 16) = 1564427099;
      *(v307 + 24) = 0xE400000000000000;
      v420 = swift_allocObject();
      *(v420 + 16) = v303;

      v431 = sub_182AD2678();
      v308 = sub_182AD38A8();
      v443 = swift_allocObject();
      *(v443 + 16) = 32;
      v455 = swift_allocObject();
      *(v455 + 16) = 8;
      v309 = swift_allocObject();
      *(v309 + 16) = sub_181F8C71C;
      *(v309 + 24) = v306;
      v310 = swift_allocObject();
      *(v310 + 16) = sub_181F8C718;
      *(v310 + 24) = v309;
      v467 = swift_allocObject();
      *(v467 + 16) = 32;
      v479 = swift_allocObject();
      *(v479 + 16) = 8;
      v311 = swift_allocObject();
      *(v311 + 16) = sub_181F8C720;
      *(v311 + 24) = v307;
      v312 = swift_allocObject();
      *(v312 + 16) = sub_181F8C27C;
      *(v312 + 24) = v311;
      v491 = v312;
      v503 = swift_allocObject();
      *(v503 + 16) = 32;
      v512 = swift_allocObject();
      *(v512 + 16) = 8;
      v313 = swift_allocObject();
      *(v313 + 16) = sub_181F8C720;
      *(v313 + 24) = v420;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_181F8C718;
      *(a1 + 24) = v313;
      v421 = v308;
      v4 = v431;
      if (os_log_type_enabled(v431, v308))
      {
        v314 = swift_slowAlloc();
        v315 = swift_slowAlloc();
        *&v596 = 0;
        *v314 = 770;
        *&v582 = v315;
        *&v610 = v314 + 2;
        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v443;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v455;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = v310;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v467;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v479;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C284;
        *(&v714 + 1) = v491;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v503;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v512;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = a1;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        _os_log_impl(&dword_181A37000, v431, v421, "%s %s %s", v314, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v315, -1, -1);
        MEMORY[0x1865DF520](v314, -1, -1);
      }

      else
      {
      }

      v5 = v517;
    }

    swift_beginAccess();
    *&v629[9] = *(a2 + 241);
    v110 = *(a2 + 200);
    v111 = *(a2 + 232);
    v628 = *(a2 + 216);
    *v629 = v111;
    v112 = *(a2 + 168);
    v624 = *(a2 + 152);
    v625 = v112;
    v113 = *(a2 + 184);
    v627 = v110;
    v626 = v113;
    if (v629[24] == 1)
    {
      v75 = *(&v625 + 1);
      if (*(&v625 + 1) >> 62)
      {
        goto LABEL_120;
      }

      v4 = v518[16].isa;
      v5 = v625;
      a1 = *v629;
      sub_18201A404(&v624, &v714);
      if (qword_1EA837020 != -1)
      {
        goto LABEL_124;
      }

      goto LABEL_65;
    }

    goto LABEL_118;
  }

  if (a4 != 1)
  {
    swift_beginAccess();
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    v9 = byte_1EA843430;
    if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
    {
      *&v714 = 0;
      *(&v714 + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD7DC0);
      *&v700 = a2;
      type metadata accessor for QUICPath();
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BD7DF0);
      *&v700 = v4[52];
      sub_182AD3E18();
      MEMORY[0x1865D9CA0](0x6E65732073617720, 0xED00002074612074);
      *&v700 = v4[53];
      v273 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v273);

      v274 = v714;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v275 = sub_182AD2698();
      __swift_project_value_buffer(v275, qword_1EA843418);
      v276 = swift_allocObject();
      *(v276 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
      *(v276 + 24) = 54;
      *(v276 + 32) = 2;
      v277 = swift_allocObject();
      *(v277 + 16) = sub_181F8C724;
      *(v277 + 24) = v276;
      v278 = swift_allocObject();
      *(v278 + 16) = 1564427099;
      *(v278 + 24) = 0xE400000000000000;
      v416 = swift_allocObject();
      *(v416 + 16) = v274;

      v429 = sub_182AD2678();
      v510 = sub_182AD38A8();
      v441 = swift_allocObject();
      *(v441 + 16) = 32;
      v453 = swift_allocObject();
      *(v453 + 16) = 8;
      v279 = swift_allocObject();
      *(v279 + 16) = sub_181F8C71C;
      *(v279 + 24) = v277;
      v280 = swift_allocObject();
      *(v280 + 16) = sub_181F8C718;
      *(v280 + 24) = v279;
      v465 = swift_allocObject();
      *(v465 + 16) = 32;
      v5 = 32;
      v477 = swift_allocObject();
      *(v477 + 16) = 8;
      v281 = swift_allocObject();
      *(v281 + 16) = sub_181F8C720;
      *(v281 + 24) = v278;
      v282 = swift_allocObject();
      *(v282 + 16) = sub_181F8C718;
      *(v282 + 24) = v281;
      v489 = v282;
      v501 = swift_allocObject();
      *(v501 + 16) = 32;
      v517 = swift_allocObject();
      *(v517 + 16) = 8;
      v283 = swift_allocObject();
      *(v283 + 16) = sub_181F8C720;
      *(v283 + 24) = v416;
      v284 = swift_allocObject();
      *(v284 + 16) = sub_181F8C718;
      *(v284 + 24) = v283;
      if (os_log_type_enabled(v429, v510))
      {
        v5 = swift_slowAlloc();
        v285 = swift_slowAlloc();
        *&v686 = 0;
        *v5 = 770;
        v417 = v285;
        *&v672 = v285;
        *&v700 = v5 + 2;
        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v441;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v453;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = v280;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v465;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v477;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = v489;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v501;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v517;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = v284;
        sub_181F73AE0(&v714, &v700, &v686, &v672);

        _os_log_impl(&dword_181A37000, v429, v510, "%s %s %s", v5, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v417, -1, -1);
        MEMORY[0x1865DF520](v5, -1, -1);
      }

      else
      {
      }

      v4 = v518;
    }

    v42 = *(a2 + 912);
    v43 = *(a2 + 880);
    v696 = *(a2 + 896);
    v697 = v42;
    v44 = *(a2 + 912);
    v698 = *(a2 + 928);
    v45 = *(a2 + 848);
    v46 = *(a2 + 816);
    v692 = *(a2 + 832);
    v693 = v45;
    v47 = *(a2 + 848);
    v48 = *(a2 + 880);
    v694 = *(a2 + 864);
    v695 = v48;
    v49 = *(a2 + 784);
    v50 = *(a2 + 752);
    v688 = *(a2 + 768);
    v689 = v49;
    v51 = *(a2 + 784);
    v52 = *(a2 + 816);
    v690 = *(a2 + 800);
    v691 = v52;
    v53 = *(a2 + 752);
    v686 = *(a2 + 736);
    v687 = v53;
    v710 = v696;
    v711 = v44;
    v712 = *(a2 + 928);
    v706 = v692;
    v707 = v47;
    v708 = v694;
    v709 = v43;
    v702 = v688;
    v703 = v51;
    v704 = v690;
    v705 = v46;
    v699 = *(a2 + 944);
    v713 = *(a2 + 944);
    v700 = v686;
    v701 = v50;
    if (sub_182015D6C(&v700) == 1)
    {
      goto LABEL_213;
    }

    isa = v4[53].isa;
    v54 = *(a2 + 1072);
    v682 = v710;
    v683 = v711;
    v684 = v712;
    v685 = v713;
    v678 = v706;
    v679 = v707;
    v680 = v708;
    v681 = v709;
    v674 = v702;
    v675 = v703;
    v676 = v704;
    v677 = v705;
    v672 = v700;
    v673 = v701;
    if (sub_182015D80(&v672) == 1)
    {
      nullsub_41();
      v56 = *(v55 + 8);
      v636 = v55[6];
      v637 = v55[7];
      v638 = v55[8];
      v639 = v55[9];
      v632 = v55[2];
      v633 = v55[3];
      v634 = v55[4];
      v635 = v55[5];
      v630 = *v55;
      v631 = v55[1];
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_155;
      }

      v724 = v696;
      v725 = v697;
      v726 = v698;
      v727 = v699;
      v720 = v692;
      v721 = v693;
      v722 = v694;
      v723 = v695;
      v716 = v688;
      v717 = v689;
      v718 = v690;
      v719 = v691;
      v714 = v686;
      v715 = v687;
      sub_18201A394(&v686, &v658);
      sub_182015D94(&v714, &v658);
      v4 = &v630;
      sub_182014B48(a3);
      v26 = v56 >= isa;
      v5 = v56 < isa;
      if (!v26)
      {
        v4 = &v630;
        sub_182177F1C(v54);
      }

      sub_182015DF0(&v686);
      v650 = v636;
      v651 = v637;
      v652 = v638;
      v653 = v639;
      v646 = v632;
      v647 = v633;
      v648 = v634;
      v649 = v635;
      v644 = v630;
      v645 = v631;
      sub_182015D88(&v644);
    }

    else
    {
      nullsub_41();
      v135 = *(v134 + 8);
      v639 = v134[9];
      v640 = v134[10];
      v641 = v134[11];
      v642 = v134[12];
      v635 = v134[5];
      v636 = v134[6];
      v637 = v134[7];
      v638 = v134[8];
      v631 = v134[1];
      v632 = v134[2];
      v633 = v134[3];
      v634 = v134[4];
      v630 = *v134;
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_156;
      }

      v724 = v696;
      v725 = v697;
      v726 = v698;
      v727 = v699;
      v720 = v692;
      v721 = v693;
      v722 = v694;
      v723 = v695;
      v716 = v688;
      v717 = v689;
      v718 = v690;
      v719 = v691;
      v714 = v686;
      v715 = v687;
      sub_18201A394(&v686, &v658);
      sub_182015D94(&v714, &v658);
      v4 = &v630;
      sub_1820152EC(a3);
      v26 = v135 >= isa;
      v5 = v135 < isa;
      if (!v26)
      {
        v4 = &v630;
        sub_18228418C(v54);
      }

      sub_182015DF0(&v686);
      v654 = v640;
      v655 = v641;
      v656 = v642;
      v650 = v636;
      v651 = v637;
      v653 = v639;
      v652 = v638;
      v646 = v632;
      v647 = v633;
      v649 = v635;
      v648 = v634;
      v645 = v631;
      v644 = v630;
      sub_18201A508(&v644);
    }

    v668 = v654;
    v669 = v655;
    v670 = v656;
    v671 = v657;
    v664 = v650;
    v665 = v651;
    v666 = v652;
    v667 = v653;
    v660 = v646;
    v661 = v647;
    v662 = v648;
    v663 = v649;
    v658 = v644;
    v659 = v645;
    v640 = v654;
    v641 = v655;
    v642 = v656;
    v643 = v657;
    v636 = v650;
    v637 = v651;
    v638 = v652;
    v639 = v653;
    v632 = v646;
    v633 = v647;
    v634 = v648;
    v635 = v649;
    v630 = v644;
    v631 = v645;
    nullsub_41();
    v136 = *(a2 + 912);
    v654 = *(a2 + 896);
    v655 = v136;
    v656 = *(a2 + 928);
    v657 = *(a2 + 944);
    v137 = *(a2 + 848);
    v650 = *(a2 + 832);
    v651 = v137;
    v138 = *(a2 + 880);
    v652 = *(a2 + 864);
    v653 = v138;
    v139 = *(a2 + 784);
    v646 = *(a2 + 768);
    v647 = v139;
    v140 = *(a2 + 816);
    v648 = *(a2 + 800);
    v649 = v140;
    v141 = *(a2 + 752);
    v644 = *(a2 + 736);
    v645 = v141;
    v142 = v641;
    *(a2 + 896) = v640;
    *(a2 + 912) = v142;
    *(a2 + 928) = v642;
    *(a2 + 944) = v643;
    v143 = v637;
    *(a2 + 832) = v636;
    *(a2 + 848) = v143;
    v144 = v639;
    *(a2 + 864) = v638;
    *(a2 + 880) = v144;
    v145 = v633;
    *(a2 + 768) = v632;
    *(a2 + 784) = v145;
    v146 = v635;
    *(a2 + 800) = v634;
    *(a2 + 816) = v146;
    v147 = v631;
    *(a2 + 736) = v630;
    *(a2 + 752) = v147;
    sub_182015DF0(&v644);
    LODWORD(v517) = v5;
    if ((v9 & v5) == 1 && __nwlog_is_datapath_logging_enabled())
    {
      *&v714 = 0;
      *(&v714 + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0x2074656B636170, 0xE700000000000000);
      *&v610 = a1;
      v316 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v316);

      MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD7D70);
      *&v610 = *(a2 + 16);
      v317 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v317);

      MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BD7D90);
      v318 = v714;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v319 = sub_182AD2698();
      __swift_project_value_buffer(v319, qword_1EA843418);
      v320 = swift_allocObject();
      *(v320 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
      *(v320 + 24) = 54;
      *(v320 + 32) = 2;
      v321 = swift_allocObject();
      *(v321 + 16) = sub_181F8C724;
      *(v321 + 24) = v320;
      v322 = swift_allocObject();
      *(v322 + 16) = 1564427099;
      *(v322 + 24) = 0xE400000000000000;
      v422 = swift_allocObject();
      *(v422 + 16) = v318;

      v432 = sub_182AD2678();
      v323 = sub_182AD38A8();
      v444 = swift_allocObject();
      *(v444 + 16) = 32;
      v456 = swift_allocObject();
      *(v456 + 16) = 8;
      v324 = swift_allocObject();
      *(v324 + 16) = sub_181F8C71C;
      *(v324 + 24) = v321;
      v325 = swift_allocObject();
      *(v325 + 16) = sub_181F8C718;
      *(v325 + 24) = v324;
      v468 = swift_allocObject();
      *(v468 + 16) = 32;
      v480 = swift_allocObject();
      *(v480 + 16) = 8;
      v326 = swift_allocObject();
      *(v326 + 16) = sub_181F8C720;
      *(v326 + 24) = v322;
      v327 = swift_allocObject();
      *(v327 + 16) = sub_181F8C718;
      *(v327 + 24) = v326;
      v492 = v327;
      v504 = swift_allocObject();
      *(v504 + 16) = 32;
      v513 = swift_allocObject();
      *(v513 + 16) = 8;
      v328 = swift_allocObject();
      *(v328 + 16) = sub_181F8C720;
      *(v328 + 24) = v422;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_181F8C718;
      *(a1 + 24) = v328;
      v423 = v323;
      v4 = v432;
      if (os_log_type_enabled(v432, v323))
      {
        v329 = swift_slowAlloc();
        v330 = swift_slowAlloc();
        *&v596 = 0;
        *v329 = 770;
        *&v582 = v330;
        *&v610 = v329 + 2;
        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v444;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v456;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = v325;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v468;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v480;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = v492;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v504;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v513;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = a1;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        _os_log_impl(&dword_181A37000, v432, v423, "%s %s %s", v329, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v330, -1, -1);
        MEMORY[0x1865DF520](v329, -1, -1);
      }

      else
      {
      }

      v5 = v517;
    }

    swift_beginAccess();
    *&v629[9] = *(a2 + 241);
    v148 = *(a2 + 200);
    v149 = *(a2 + 232);
    v628 = *(a2 + 216);
    *v629 = v149;
    v150 = *(a2 + 168);
    v624 = *(a2 + 152);
    v625 = v150;
    v151 = *(a2 + 184);
    v627 = v148;
    v626 = v151;
    if (v629[24] == 1)
    {
      v75 = *(&v625 + 1);
      if (*(&v625 + 1) >> 62)
      {
        goto LABEL_121;
      }

      v4 = v518[54].isa;
      v5 = v625;
      a1 = *v629;
      sub_18201A404(&v624, &v714);
      if (qword_1EA837020 != -1)
      {
        goto LABEL_126;
      }

      goto LABEL_88;
    }

    goto LABEL_118;
  }

  swift_beginAccess();
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  v9 = byte_1EA843430;
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_140;
  }

  while (1)
  {
    v10 = *(a2 + 912);
    v11 = *(a2 + 880);
    v696 = *(a2 + 896);
    v697 = v10;
    v12 = *(a2 + 912);
    v698 = *(a2 + 928);
    v13 = *(a2 + 848);
    v14 = *(a2 + 816);
    v692 = *(a2 + 832);
    v693 = v13;
    v15 = *(a2 + 848);
    v16 = *(a2 + 880);
    v694 = *(a2 + 864);
    v695 = v16;
    v17 = *(a2 + 784);
    v18 = *(a2 + 752);
    v688 = *(a2 + 768);
    v689 = v17;
    v19 = *(a2 + 784);
    v20 = *(a2 + 816);
    v690 = *(a2 + 800);
    v691 = v20;
    v21 = *(a2 + 752);
    v686 = *(a2 + 736);
    v687 = v21;
    v710 = v696;
    v711 = v12;
    v712 = *(a2 + 928);
    v706 = v692;
    v707 = v15;
    v708 = v694;
    v709 = v11;
    v702 = v688;
    v703 = v19;
    v704 = v690;
    v705 = v14;
    v699 = *(a2 + 944);
    v713 = *(a2 + 944);
    v700 = v686;
    v701 = v18;
    if (sub_182015D6C(&v700) == 1)
    {
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      swift_once();
      goto LABEL_141;
    }

    isa = v4[34].isa;
    v23 = *(a2 + 1072);
    v682 = v710;
    v683 = v711;
    v684 = v712;
    v685 = v713;
    v678 = v706;
    v679 = v707;
    v680 = v708;
    v681 = v709;
    v674 = v702;
    v675 = v703;
    v676 = v704;
    v677 = v705;
    v672 = v700;
    v673 = v701;
    if (sub_182015D80(&v672) == 1)
    {
      nullsub_41();
      v25 = *(v24 + 8);
      v636 = v24[6];
      v637 = v24[7];
      v638 = v24[8];
      v639 = v24[9];
      v632 = v24[2];
      v633 = v24[3];
      v634 = v24[4];
      v635 = v24[5];
      v630 = *v24;
      v631 = v24[1];
      if ((a3 & 0x8000000000000000) == 0)
      {
        v724 = v696;
        v725 = v697;
        v726 = v698;
        v727 = v699;
        v720 = v692;
        v721 = v693;
        v722 = v694;
        v723 = v695;
        v716 = v688;
        v717 = v689;
        v718 = v690;
        v719 = v691;
        v714 = v686;
        v715 = v687;
        sub_18201A394(&v686, &v658);
        sub_182015D94(&v714, &v658);
        v4 = &v630;
        sub_182014B48(a3);
        v26 = v25 >= isa;
        v5 = v25 < isa;
        if (!v26)
        {
          v4 = &v630;
          sub_182177F1C(v23);
        }

        sub_182015DF0(&v686);
        v650 = v636;
        v651 = v637;
        v652 = v638;
        v653 = v639;
        v646 = v632;
        v647 = v633;
        v648 = v634;
        v649 = v635;
        v644 = v630;
        v645 = v631;
        sub_182015D88(&v644);
        goto LABEL_37;
      }

      __break(1u);
    }

    else
    {
      nullsub_41();
      v58 = *(v57 + 8);
      v639 = v57[9];
      v640 = v57[10];
      v641 = v57[11];
      v642 = v57[12];
      v635 = v57[5];
      v636 = v57[6];
      v637 = v57[7];
      v638 = v57[8];
      v631 = v57[1];
      v632 = v57[2];
      v633 = v57[3];
      v634 = v57[4];
      v630 = *v57;
      if ((a3 & 0x8000000000000000) == 0)
      {
        v724 = v696;
        v725 = v697;
        v726 = v698;
        v727 = v699;
        v720 = v692;
        v721 = v693;
        v722 = v694;
        v723 = v695;
        v716 = v688;
        v717 = v689;
        v718 = v690;
        v719 = v691;
        v714 = v686;
        v715 = v687;
        sub_18201A394(&v686, &v658);
        sub_182015D94(&v714, &v658);
        v4 = &v630;
        sub_1820152EC(a3);
        v26 = v58 >= isa;
        v5 = v58 < isa;
        if (!v26)
        {
          v4 = &v630;
          sub_18228418C(v23);
        }

        sub_182015DF0(&v686);
        v654 = v640;
        v655 = v641;
        v656 = v642;
        v650 = v636;
        v651 = v637;
        v653 = v639;
        v652 = v638;
        v646 = v632;
        v647 = v633;
        v649 = v635;
        v648 = v634;
        v645 = v631;
        v644 = v630;
        sub_18201A508(&v644);
LABEL_37:
        v668 = v654;
        v669 = v655;
        v670 = v656;
        v671 = v657;
        v664 = v650;
        v665 = v651;
        v666 = v652;
        v667 = v653;
        v660 = v646;
        v661 = v647;
        v662 = v648;
        v663 = v649;
        v658 = v644;
        v659 = v645;
        v640 = v654;
        v641 = v655;
        v642 = v656;
        v643 = v657;
        v636 = v650;
        v637 = v651;
        v638 = v652;
        v639 = v653;
        v632 = v646;
        v633 = v647;
        v634 = v648;
        v635 = v649;
        v630 = v644;
        v631 = v645;
        nullsub_41();
        v59 = *(a2 + 912);
        v654 = *(a2 + 896);
        v655 = v59;
        v656 = *(a2 + 928);
        v657 = *(a2 + 944);
        v60 = *(a2 + 848);
        v650 = *(a2 + 832);
        v651 = v60;
        v61 = *(a2 + 880);
        v652 = *(a2 + 864);
        v653 = v61;
        v62 = *(a2 + 784);
        v646 = *(a2 + 768);
        v647 = v62;
        v63 = *(a2 + 816);
        v648 = *(a2 + 800);
        v649 = v63;
        v64 = *(a2 + 752);
        v644 = *(a2 + 736);
        v645 = v64;
        v65 = v641;
        *(a2 + 896) = v640;
        *(a2 + 912) = v65;
        *(a2 + 928) = v642;
        *(a2 + 944) = v643;
        v66 = v637;
        *(a2 + 832) = v636;
        *(a2 + 848) = v66;
        v67 = v639;
        *(a2 + 864) = v638;
        *(a2 + 880) = v67;
        v68 = v633;
        *(a2 + 768) = v632;
        *(a2 + 784) = v68;
        v69 = v635;
        *(a2 + 800) = v634;
        *(a2 + 816) = v69;
        v70 = v631;
        *(a2 + 736) = v630;
        *(a2 + 752) = v70;
        sub_182015DF0(&v644);
        LODWORD(v517) = v5;
        if ((v9 & v5) != 1 || !__nwlog_is_datapath_logging_enabled())
        {
          goto LABEL_39;
        }

        goto LABEL_157;
      }
    }

    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    *&v714 = 0;
    *(&v714 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0x2074656B636170, 0xE700000000000000);
    *&v610 = a1;
    v286 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v286);

    MEMORY[0x1865D9CA0](0xD000000000000017, 0x8000000182BD7D70);
    *&v610 = *(a2 + 16);
    v287 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v287);

    MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BD7D90);
    v288 = v714;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v289 = sub_182AD2698();
    __swift_project_value_buffer(v289, qword_1EA843418);
    v290 = swift_allocObject();
    *(v290 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
    *(v290 + 24) = 54;
    *(v290 + 32) = 2;
    v291 = swift_allocObject();
    *(v291 + 16) = sub_181F8C724;
    *(v291 + 24) = v290;
    v292 = swift_allocObject();
    *(v292 + 16) = 1564427099;
    *(v292 + 24) = 0xE400000000000000;
    v418 = swift_allocObject();
    *(v418 + 16) = v288;

    v430 = sub_182AD2678();
    v293 = sub_182AD38A8();
    v442 = swift_allocObject();
    *(v442 + 16) = 32;
    v454 = swift_allocObject();
    *(v454 + 16) = 8;
    v294 = swift_allocObject();
    *(v294 + 16) = sub_181F8C71C;
    *(v294 + 24) = v291;
    v295 = swift_allocObject();
    *(v295 + 16) = sub_181F8C718;
    *(v295 + 24) = v294;
    v466 = swift_allocObject();
    *(v466 + 16) = 32;
    v478 = swift_allocObject();
    *(v478 + 16) = 8;
    v296 = swift_allocObject();
    *(v296 + 16) = sub_181F8C720;
    *(v296 + 24) = v292;
    v297 = swift_allocObject();
    *(v297 + 16) = sub_181F8C718;
    *(v297 + 24) = v296;
    v490 = v297;
    v502 = swift_allocObject();
    *(v502 + 16) = 32;
    v511 = swift_allocObject();
    *(v511 + 16) = 8;
    v298 = swift_allocObject();
    *(v298 + 16) = sub_181F8C720;
    *(v298 + 24) = v418;
    a1 = swift_allocObject();
    *(a1 + 16) = sub_181F8C718;
    *(a1 + 24) = v298;
    v419 = v293;
    v4 = v430;
    if (os_log_type_enabled(v430, v293))
    {
      v299 = swift_slowAlloc();
      v300 = swift_slowAlloc();
      *&v596 = 0;
      *v299 = 770;
      *&v582 = v300;
      *&v610 = v299 + 2;
      *&v714 = sub_181F8C728;
      *(&v714 + 1) = v442;
      sub_181F73AE0(&v714, &v610, &v596, &v582);

      *&v714 = sub_181F8C728;
      *(&v714 + 1) = v454;
      sub_181F73AE0(&v714, &v610, &v596, &v582);

      *&v714 = sub_181F8C714;
      *(&v714 + 1) = v295;
      sub_181F73AE0(&v714, &v610, &v596, &v582);

      *&v714 = sub_181F8C728;
      *(&v714 + 1) = v466;
      sub_181F73AE0(&v714, &v610, &v596, &v582);

      *&v714 = sub_181F8C728;
      *(&v714 + 1) = v478;
      sub_181F73AE0(&v714, &v610, &v596, &v582);

      *&v714 = sub_181F8C714;
      *(&v714 + 1) = v490;
      sub_181F73AE0(&v714, &v610, &v596, &v582);

      *&v714 = sub_181F8C728;
      *(&v714 + 1) = v502;
      sub_181F73AE0(&v714, &v610, &v596, &v582);

      *&v714 = sub_181F8C728;
      *(&v714 + 1) = v511;
      sub_181F73AE0(&v714, &v610, &v596, &v582);

      *&v714 = sub_181F8C714;
      *(&v714 + 1) = a1;
      sub_181F73AE0(&v714, &v610, &v596, &v582);

      _os_log_impl(&dword_181A37000, v430, v419, "%s %s %s", v299, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v300, -1, -1);
      MEMORY[0x1865DF520](v299, -1, -1);
    }

    else
    {
    }

    v5 = v517;
LABEL_39:
    swift_beginAccess();
    *&v629[9] = *(a2 + 241);
    v71 = *(a2 + 200);
    v72 = *(a2 + 232);
    v628 = *(a2 + 216);
    *v629 = v72;
    v73 = *(a2 + 168);
    v624 = *(a2 + 152);
    v625 = v73;
    v74 = *(a2 + 184);
    v627 = v71;
    v626 = v74;
    if (v629[24] != 1)
    {
      goto LABEL_118;
    }

    v75 = *(&v625 + 1);
    if (*(&v625 + 1) >> 62)
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
    }

    else
    {
      v4 = v518[35].isa;
      v5 = v625;
      a1 = *v629;
      sub_18201A404(&v624, &v714);
      if (qword_1EA837020 == -1)
      {
        goto LABEL_42;
      }
    }

    swift_once();
LABEL_42:
    a3 = qword_1EA843200;
    sub_18201A460(&v624);
    if ((a3 & 0x8000000000000000) == 0)
    {
      v76 = 4 * v75;
      if (2 * a3 > 4 * v75)
      {
        v76 = 2 * a3;
      }

      v26 = __CFADD__(v5, v76);
      v77 = v5 + v76;
      if (!v26)
      {
        v26 = __CFADD__(v77, a1);
        v78 = v77 + a1;
        if (!v26)
        {
          if (is_mul_ok(v78, 3uLL))
          {
            v79 = 3 * v78;
            v26 = __CFADD__(v4, v79);
            v80 = (v4 + v79);
            if (!v26)
            {
              v5 = v517;
              if (isa < v80)
              {
                goto LABEL_118;
              }

              if (v9)
              {
                a3 = v518;
                if (__nwlog_is_datapath_logging_enabled())
                {
                  *&v714 = 0;
                  *(&v714 + 1) = 0xE000000000000000;
                  sub_182AD3BA8();
                  MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BD7D10);
                  *&v610 = *(a2 + 16);
                  v81 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v81);

                  MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD7D40);
                  v82 = v714;
                  if (qword_1EA837248 != -1)
                  {
                    swift_once();
                  }

                  v83 = sub_182AD2698();
                  __swift_project_value_buffer(v83, qword_1EA843418);
                  v84 = swift_allocObject();
                  *(v84 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
                  *(v84 + 24) = 54;
                  *(v84 + 32) = 2;
                  v85 = swift_allocObject();
                  *(v85 + 16) = sub_181F8C724;
                  *(v85 + 24) = v84;
                  v86 = swift_allocObject();
                  *(v86 + 16) = 1564427099;
                  *(v86 + 24) = 0xE400000000000000;
                  v87 = swift_allocObject();
                  *(v87 + 16) = v82;

                  oslog = sub_182AD2678();
                  v88 = sub_182AD38A8();
                  v436 = swift_allocObject();
                  *(v436 + 16) = 32;
                  v448 = swift_allocObject();
                  *(v448 + 16) = 8;
                  v89 = swift_allocObject();
                  *(v89 + 16) = sub_181F8C71C;
                  *(v89 + 24) = v85;
                  v90 = swift_allocObject();
                  *(v90 + 16) = sub_181F8C718;
                  *(v90 + 24) = v89;
                  v460 = swift_allocObject();
                  *(v460 + 16) = 32;
                  v472 = swift_allocObject();
                  *(v472 + 16) = 8;
                  v91 = swift_allocObject();
                  *(v91 + 16) = sub_181F8C720;
                  *(v91 + 24) = v86;
                  v92 = swift_allocObject();
                  *(v92 + 16) = sub_181F8C718;
                  *(v92 + 24) = v91;
                  v484 = swift_allocObject();
                  *(v484 + 16) = 32;
                  v496 = swift_allocObject();
                  *(v496 + 16) = 8;
                  v93 = swift_allocObject();
                  *(v93 + 16) = sub_181F8C720;
                  *(v93 + 24) = v87;
                  a1 = swift_allocObject();
                  *(a1 + 16) = sub_181F8C718;
                  *(a1 + 24) = v93;
                  v424 = v88;
                  if (os_log_type_enabled(oslog, v88))
                  {
                    v94 = swift_slowAlloc();
                    v95 = swift_slowAlloc();
                    *&v596 = 0;
                    *v94 = 770;
                    *&v582 = v95;
                    *&v610 = v94 + 2;
                    *&v714 = sub_181F8C728;
                    *(&v714 + 1) = v436;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C728;
                    *(&v714 + 1) = v448;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C714;
                    *(&v714 + 1) = v90;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C728;
                    *(&v714 + 1) = v460;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C728;
                    *(&v714 + 1) = v472;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C714;
                    *(&v714 + 1) = v92;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C728;
                    *(&v714 + 1) = v484;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C728;
                    *(&v714 + 1) = v496;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C714;
                    *(&v714 + 1) = a1;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    _os_log_impl(&dword_181A37000, oslog, v424, "%s %s %s", v94, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1865DF520](v95, -1, -1);
                    MEMORY[0x1865DF520](v94, -1, -1);
                  }

                  else
                  {
                  }

                  a3 = v518;
                  v5 = v517;
                }
              }

              else
              {
                a3 = v518;
              }

              v172 = *(a2 + 912);
              v173 = *(a2 + 880);
              v606 = *(a2 + 896);
              v607 = v172;
              v174 = *(a2 + 912);
              v608 = *(a2 + 928);
              v175 = *(a2 + 848);
              v176 = *(a2 + 816);
              v602 = *(a2 + 832);
              v603 = v175;
              v177 = *(a2 + 848);
              v178 = *(a2 + 880);
              v604 = *(a2 + 864);
              v605 = v178;
              v179 = *(a2 + 784);
              v180 = *(a2 + 752);
              v598 = *(a2 + 768);
              v599 = v179;
              v181 = *(a2 + 784);
              v182 = *(a2 + 816);
              v600 = *(a2 + 800);
              v601 = v182;
              v183 = *(a2 + 752);
              v596 = *(a2 + 736);
              v597 = v183;
              v620 = v606;
              v621 = v174;
              v622 = *(a2 + 928);
              v616 = v602;
              v617 = v177;
              v618 = v604;
              v619 = v173;
              v612 = v598;
              v613 = v181;
              v614 = v600;
              v615 = v176;
              v609 = *(a2 + 944);
              v623 = *(a2 + 944);
              v610 = v596;
              v611 = v180;
              if (sub_182015D6C(&v610) != 1)
              {
                v724 = v620;
                v725 = v621;
                v726 = v622;
                v727 = v623;
                v720 = v616;
                v721 = v617;
                v722 = v618;
                v723 = v619;
                v716 = v612;
                v717 = v613;
                v718 = v614;
                v719 = v615;
                v714 = v610;
                v715 = v611;
                v184 = *(a2 + 1072);
                sub_18201A394(&v596, &v582);
                sub_18228578C(v184, &v554);
                sub_182015DF0(&v596);
                v578 = v564;
                v579 = v565;
                v580 = v566;
                v581 = v567;
                v574 = v560;
                v575 = v561;
                v576 = v562;
                v577 = v563;
                v570 = v556;
                v571 = v557;
                v572 = v558;
                v573 = v559;
                v568 = v554;
                v569 = v555;
                nullsub_41();
                v185 = *(a2 + 912);
                v592 = *(a2 + 896);
                v593 = v185;
                v594 = *(a2 + 928);
                v595 = *(a2 + 944);
                v186 = *(a2 + 848);
                v588 = *(a2 + 832);
                v589 = v186;
                v187 = *(a2 + 880);
                v590 = *(a2 + 864);
                v591 = v187;
                v188 = *(a2 + 784);
                v584 = *(a2 + 768);
                v585 = v188;
                v189 = *(a2 + 816);
                v586 = *(a2 + 800);
                v587 = v189;
                v190 = *(a2 + 752);
                v582 = *(a2 + 736);
                v583 = v190;
                v191 = v579;
                *(a2 + 896) = v578;
                *(a2 + 912) = v191;
                *(a2 + 928) = v580;
                *(a2 + 944) = v581;
                v192 = v575;
                *(a2 + 832) = v574;
                *(a2 + 848) = v192;
                v193 = v577;
                *(a2 + 864) = v576;
                *(a2 + 880) = v193;
                v194 = v571;
                *(a2 + 768) = v570;
                *(a2 + 784) = v194;
                v195 = v573;
                *(a2 + 800) = v572;
                *(a2 + 816) = v195;
                v196 = v569;
                *(a2 + 736) = v568;
                *(a2 + 752) = v196;
                sub_182015DF0(&v582);
                if (!v9 || !__nwlog_is_datapath_logging_enabled())
                {
LABEL_106:
                  *(a3 + 280) = -1;
                  goto LABEL_117;
                }

                *&v524 = 0;
                *(&v524 + 1) = 0xE000000000000000;
                sub_182AD3BA8();

                v538 = 0xD00000000000001ALL;
                v539 = 0x8000000182BD7CF0;
                *&v524 = *(a2 + 16);
                v331 = sub_182AD41B8();
                MEMORY[0x1865D9CA0](v331);

                MEMORY[0x1865D9CA0](0x20776F6E20736920, 0xE800000000000000);
                v332 = *(a2 + 912);
                v550 = *(a2 + 896);
                v551 = v332;
                v552 = *(a2 + 928);
                v553 = *(a2 + 944);
                v333 = *(a2 + 848);
                v546 = *(a2 + 832);
                v547 = v333;
                v334 = *(a2 + 880);
                v548 = *(a2 + 864);
                v549 = v334;
                v335 = *(a2 + 784);
                v542 = *(a2 + 768);
                v543 = v335;
                v336 = *(a2 + 816);
                v544 = *(a2 + 800);
                v545 = v336;
                v337 = *(a2 + 752);
                v540 = *(a2 + 736);
                v541 = v337;
                if (sub_182015D6C(&v540) != 1)
                {
                  v534 = v550;
                  v535 = v551;
                  v536 = v552;
                  v537 = v553;
                  v530 = v546;
                  v531 = v547;
                  v532 = v548;
                  v533 = v549;
                  v526 = v542;
                  v527 = v543;
                  v528 = v544;
                  v529 = v545;
                  v524 = v540;
                  v525 = v541;
                  sub_182015D80(&v524);
                  nullsub_41();
                  v519 = *v352;
                  v353 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v353);

                  v354 = v538;
                  v514 = v539;
                  if (qword_1EA837248 != -1)
                  {
                    swift_once();
                  }

                  v355 = sub_182AD2698();
                  __swift_project_value_buffer(v355, qword_1EA843418);
                  v356 = swift_allocObject();
                  *(v356 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
                  *(v356 + 24) = 54;
                  *(v356 + 32) = 2;
                  v357 = swift_allocObject();
                  *(v357 + 16) = sub_181F8C724;
                  *(v357 + 24) = v356;
                  v358 = swift_allocObject();
                  *(v358 + 16) = 1564427099;
                  *(v358 + 24) = 0xE400000000000000;
                  v359 = swift_allocObject();
                  *(v359 + 16) = v354;
                  *(v359 + 24) = v514;

                  v360 = sub_182AD2678();
                  v361 = sub_182AD38A8();
                  v445 = swift_allocObject();
                  *(v445 + 16) = 32;
                  v457 = swift_allocObject();
                  *(v457 + 16) = 8;
                  v362 = swift_allocObject();
                  *(v362 + 16) = sub_181F8C71C;
                  *(v362 + 24) = v357;
                  v363 = swift_allocObject();
                  *(v363 + 16) = sub_181F8C718;
                  *(v363 + 24) = v362;
                  v469 = swift_allocObject();
                  *(v469 + 16) = 32;
                  v481 = swift_allocObject();
                  *(v481 + 16) = 8;
                  v364 = swift_allocObject();
                  *(v364 + 16) = sub_181F8C720;
                  *(v364 + 24) = v358;
                  v365 = swift_allocObject();
                  *(v365 + 16) = sub_181F8C718;
                  *(v365 + 24) = v364;
                  v493 = swift_allocObject();
                  *(v493 + 16) = 32;
                  v505 = swift_allocObject();
                  *(v505 + 16) = 8;
                  v366 = swift_allocObject();
                  *(v366 + 16) = sub_181F8C720;
                  *(v366 + 24) = v359;
                  v367 = swift_allocObject();
                  *(v367 + 16) = sub_181F8C718;
                  *(v367 + 24) = v366;
                  v368 = v361;
                  v369 = v360;
                  if (os_log_type_enabled(v360, v361))
                  {
                    v370 = swift_slowAlloc();
                    v371 = swift_slowAlloc();
                    v521 = v371;
                    v522 = 0;
                    *v370 = 770;
                    v523 = v370 + 2;
                    v519 = sub_181F8C728;
                    v520 = v445;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C728;
                    v520 = v457;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C714;
                    v520 = v363;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C728;
                    v520 = v469;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C728;
                    v520 = v481;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C714;
                    v520 = v365;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C728;
                    v520 = v493;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C728;
                    v520 = v505;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C714;
                    v520 = v367;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    _os_log_impl(&dword_181A37000, v369, v368, "%s %s %s", v370, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1865DF520](v371, -1, -1);
                    MEMORY[0x1865DF520](v370, -1, -1);
                  }

                  else
                  {
                  }

                  a3 = v518;
                  v5 = v517;
                  goto LABEL_106;
                }

                __break(1u);
                goto LABEL_219;
              }

              goto LABEL_214;
            }

LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }

          goto LABEL_134;
        }

        goto LABEL_131;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_124:
    swift_once();
LABEL_65:
    a3 = qword_1EA843200;
    sub_18201A460(&v624);
    if ((a3 & 0x8000000000000000) == 0)
    {
      v114 = 4 * v75;
      if (2 * a3 > 4 * v75)
      {
        v114 = 2 * a3;
      }

      v26 = __CFADD__(v5, v114);
      v115 = v5 + v114;
      if (!v26)
      {
        v26 = __CFADD__(v115, a1);
        v116 = v115 + a1;
        if (!v26)
        {
          if (is_mul_ok(v116, 3uLL))
          {
            v117 = 3 * v116;
            v26 = __CFADD__(v4, v117);
            v118 = (v4 + v117);
            if (!v26)
            {
              v5 = v517;
              if (isa < v118)
              {
                goto LABEL_118;
              }

              if (v9)
              {
                a3 = v518;
                if (__nwlog_is_datapath_logging_enabled())
                {
                  *&v714 = 0;
                  *(&v714 + 1) = 0xE000000000000000;
                  sub_182AD3BA8();
                  MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BD7D10);
                  *&v610 = *(a2 + 16);
                  v119 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v119);

                  MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD7D40);
                  v120 = v714;
                  if (qword_1EA837248 != -1)
                  {
                    swift_once();
                  }

                  v121 = sub_182AD2698();
                  __swift_project_value_buffer(v121, qword_1EA843418);
                  v122 = swift_allocObject();
                  *(v122 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
                  *(v122 + 24) = 54;
                  *(v122 + 32) = 2;
                  v123 = swift_allocObject();
                  *(v123 + 16) = sub_181F8C724;
                  *(v123 + 24) = v122;
                  v124 = swift_allocObject();
                  *(v124 + 16) = 1564427099;
                  *(v124 + 24) = 0xE400000000000000;
                  v125 = swift_allocObject();
                  *(v125 + 16) = v120;

                  osloga = sub_182AD2678();
                  v126 = sub_182AD38A8();
                  v437 = swift_allocObject();
                  *(v437 + 16) = 32;
                  v449 = swift_allocObject();
                  *(v449 + 16) = 8;
                  v127 = swift_allocObject();
                  *(v127 + 16) = sub_181F8C71C;
                  *(v127 + 24) = v123;
                  v128 = swift_allocObject();
                  *(v128 + 16) = sub_181F8C718;
                  *(v128 + 24) = v127;
                  v461 = swift_allocObject();
                  *(v461 + 16) = 32;
                  v473 = swift_allocObject();
                  *(v473 + 16) = 8;
                  v129 = swift_allocObject();
                  *(v129 + 16) = sub_181F8C720;
                  *(v129 + 24) = v124;
                  v130 = swift_allocObject();
                  *(v130 + 16) = sub_181F8C718;
                  *(v130 + 24) = v129;
                  v485 = swift_allocObject();
                  *(v485 + 16) = 32;
                  v497 = swift_allocObject();
                  *(v497 + 16) = 8;
                  v131 = swift_allocObject();
                  *(v131 + 16) = sub_181F8C720;
                  *(v131 + 24) = v125;
                  a1 = swift_allocObject();
                  *(a1 + 16) = sub_181F8C718;
                  *(a1 + 24) = v131;
                  v425 = v126;
                  if (os_log_type_enabled(osloga, v126))
                  {
                    v132 = swift_slowAlloc();
                    v133 = swift_slowAlloc();
                    *&v596 = 0;
                    *v132 = 770;
                    *&v582 = v133;
                    *&v610 = v132 + 2;
                    *&v714 = sub_181F8C728;
                    *(&v714 + 1) = v437;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C728;
                    *(&v714 + 1) = v449;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C714;
                    *(&v714 + 1) = v128;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C728;
                    *(&v714 + 1) = v461;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C728;
                    *(&v714 + 1) = v473;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C714;
                    *(&v714 + 1) = v130;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C728;
                    *(&v714 + 1) = v485;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C728;
                    *(&v714 + 1) = v497;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    *&v714 = sub_181F8C714;
                    *(&v714 + 1) = a1;
                    sub_181F73AE0(&v714, &v610, &v596, &v582);

                    _os_log_impl(&dword_181A37000, osloga, v425, "%s %s %s", v132, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1865DF520](v133, -1, -1);
                    MEMORY[0x1865DF520](v132, -1, -1);
                  }

                  else
                  {
                  }

                  a3 = v518;
                  v5 = v517;
                }
              }

              else
              {
                a3 = v518;
              }

              v197 = *(a2 + 912);
              v198 = *(a2 + 880);
              v606 = *(a2 + 896);
              v607 = v197;
              v199 = *(a2 + 912);
              v608 = *(a2 + 928);
              v200 = *(a2 + 848);
              v201 = *(a2 + 816);
              v602 = *(a2 + 832);
              v603 = v200;
              v202 = *(a2 + 848);
              v203 = *(a2 + 880);
              v604 = *(a2 + 864);
              v605 = v203;
              v204 = *(a2 + 784);
              v205 = *(a2 + 752);
              v598 = *(a2 + 768);
              v599 = v204;
              v206 = *(a2 + 784);
              v207 = *(a2 + 816);
              v600 = *(a2 + 800);
              v601 = v207;
              v208 = *(a2 + 752);
              v596 = *(a2 + 736);
              v597 = v208;
              v620 = v606;
              v621 = v199;
              v622 = *(a2 + 928);
              v616 = v602;
              v617 = v202;
              v618 = v604;
              v619 = v198;
              v612 = v598;
              v613 = v206;
              v614 = v600;
              v615 = v201;
              v609 = *(a2 + 944);
              v623 = *(a2 + 944);
              v610 = v596;
              v611 = v205;
              if (sub_182015D6C(&v610) != 1)
              {
                v724 = v620;
                v725 = v621;
                v726 = v622;
                v727 = v623;
                v720 = v616;
                v721 = v617;
                v722 = v618;
                v723 = v619;
                v716 = v612;
                v717 = v613;
                v718 = v614;
                v719 = v615;
                v714 = v610;
                v715 = v611;
                v209 = *(a2 + 1072);
                sub_18201A394(&v596, &v582);
                sub_18228578C(v209, &v554);
                sub_182015DF0(&v596);
                v578 = v564;
                v579 = v565;
                v580 = v566;
                v581 = v567;
                v574 = v560;
                v575 = v561;
                v576 = v562;
                v577 = v563;
                v570 = v556;
                v571 = v557;
                v572 = v558;
                v573 = v559;
                v568 = v554;
                v569 = v555;
                nullsub_41();
                v210 = *(a2 + 912);
                v592 = *(a2 + 896);
                v593 = v210;
                v594 = *(a2 + 928);
                v595 = *(a2 + 944);
                v211 = *(a2 + 848);
                v588 = *(a2 + 832);
                v589 = v211;
                v212 = *(a2 + 880);
                v590 = *(a2 + 864);
                v591 = v212;
                v213 = *(a2 + 784);
                v584 = *(a2 + 768);
                v585 = v213;
                v214 = *(a2 + 816);
                v586 = *(a2 + 800);
                v587 = v214;
                v215 = *(a2 + 752);
                v582 = *(a2 + 736);
                v583 = v215;
                v216 = v579;
                *(a2 + 896) = v578;
                *(a2 + 912) = v216;
                *(a2 + 928) = v580;
                *(a2 + 944) = v581;
                v217 = v575;
                *(a2 + 832) = v574;
                *(a2 + 848) = v217;
                v218 = v577;
                *(a2 + 864) = v576;
                *(a2 + 880) = v218;
                v219 = v571;
                *(a2 + 768) = v570;
                *(a2 + 784) = v219;
                v220 = v573;
                *(a2 + 800) = v572;
                *(a2 + 816) = v220;
                v221 = v569;
                *(a2 + 736) = v568;
                *(a2 + 752) = v221;
                sub_182015DF0(&v582);
                if (v9 && __nwlog_is_datapath_logging_enabled())
                {
                  *&v524 = 0;
                  *(&v524 + 1) = 0xE000000000000000;
                  sub_182AD3BA8();

                  v538 = 0xD00000000000001ALL;
                  v539 = 0x8000000182BD7CF0;
                  *&v524 = *(a2 + 16);
                  v338 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v338);

                  MEMORY[0x1865D9CA0](0x20776F6E20736920, 0xE800000000000000);
                  v339 = *(a2 + 912);
                  v550 = *(a2 + 896);
                  v551 = v339;
                  v552 = *(a2 + 928);
                  v553 = *(a2 + 944);
                  v340 = *(a2 + 848);
                  v546 = *(a2 + 832);
                  v547 = v340;
                  v341 = *(a2 + 880);
                  v548 = *(a2 + 864);
                  v549 = v341;
                  v342 = *(a2 + 784);
                  v542 = *(a2 + 768);
                  v543 = v342;
                  v343 = *(a2 + 816);
                  v544 = *(a2 + 800);
                  v545 = v343;
                  v344 = *(a2 + 752);
                  v540 = *(a2 + 736);
                  v541 = v344;
                  if (sub_182015D6C(&v540) == 1)
                  {
LABEL_219:
                    __break(1u);
                    goto LABEL_220;
                  }

                  v534 = v550;
                  v535 = v551;
                  v536 = v552;
                  v537 = v553;
                  v530 = v546;
                  v531 = v547;
                  v532 = v548;
                  v533 = v549;
                  v526 = v542;
                  v527 = v543;
                  v528 = v544;
                  v529 = v545;
                  v524 = v540;
                  v525 = v541;
                  sub_182015D80(&v524);
                  nullsub_41();
                  v519 = *v372;
                  v373 = sub_182AD41B8();
                  MEMORY[0x1865D9CA0](v373);

                  v374 = v538;
                  v515 = v539;
                  if (qword_1EA837248 != -1)
                  {
                    swift_once();
                  }

                  v375 = sub_182AD2698();
                  __swift_project_value_buffer(v375, qword_1EA843418);
                  v376 = swift_allocObject();
                  *(v376 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
                  *(v376 + 24) = 54;
                  *(v376 + 32) = 2;
                  v377 = swift_allocObject();
                  *(v377 + 16) = sub_181F8C724;
                  *(v377 + 24) = v376;
                  v378 = swift_allocObject();
                  *(v378 + 16) = 1564427099;
                  *(v378 + 24) = 0xE400000000000000;
                  v379 = swift_allocObject();
                  *(v379 + 16) = v374;
                  *(v379 + 24) = v515;

                  v380 = sub_182AD2678();
                  v381 = sub_182AD38A8();
                  v446 = swift_allocObject();
                  *(v446 + 16) = 32;
                  v458 = swift_allocObject();
                  *(v458 + 16) = 8;
                  v382 = swift_allocObject();
                  *(v382 + 16) = sub_181F8C71C;
                  *(v382 + 24) = v377;
                  v383 = swift_allocObject();
                  *(v383 + 16) = sub_181F8C718;
                  *(v383 + 24) = v382;
                  v470 = swift_allocObject();
                  *(v470 + 16) = 32;
                  v482 = swift_allocObject();
                  *(v482 + 16) = 8;
                  v384 = swift_allocObject();
                  *(v384 + 16) = sub_181F8C720;
                  *(v384 + 24) = v378;
                  v385 = swift_allocObject();
                  *(v385 + 16) = sub_181F8C718;
                  *(v385 + 24) = v384;
                  v494 = swift_allocObject();
                  *(v494 + 16) = 32;
                  v506 = swift_allocObject();
                  *(v506 + 16) = 8;
                  v386 = swift_allocObject();
                  *(v386 + 16) = sub_181F8C720;
                  *(v386 + 24) = v379;
                  v387 = swift_allocObject();
                  *(v387 + 16) = sub_181F8C718;
                  *(v387 + 24) = v386;
                  v388 = v381;
                  v389 = v380;
                  if (os_log_type_enabled(v380, v381))
                  {
                    v390 = swift_slowAlloc();
                    v391 = swift_slowAlloc();
                    v521 = v391;
                    v522 = 0;
                    *v390 = 770;
                    v523 = v390 + 2;
                    v519 = sub_181F8C728;
                    v520 = v446;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C728;
                    v520 = v458;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C714;
                    v520 = v383;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C728;
                    v520 = v470;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C728;
                    v520 = v482;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C714;
                    v520 = v385;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C728;
                    v520 = v494;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C728;
                    v520 = v506;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    v519 = sub_181F8C714;
                    v520 = v387;
                    sub_181F73AE0(&v519, &v523, &v522, &v521);

                    _os_log_impl(&dword_181A37000, v389, v388, "%s %s %s", v390, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1865DF520](v391, -1, -1);
                    MEMORY[0x1865DF520](v390, -1, -1);
                  }

                  else
                  {
                  }

                  a3 = v518;
                  v5 = v517;
                }

                *(a3 + 128) = -1;
                goto LABEL_117;
              }

              goto LABEL_215;
            }

            goto LABEL_138;
          }

          goto LABEL_135;
        }

        goto LABEL_132;
      }

      goto LABEL_129;
    }

    __break(1u);
LABEL_126:
    swift_once();
LABEL_88:
    a3 = qword_1EA843200;
    sub_18201A460(&v624);
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v152 = 4 * v75;
    if (2 * a3 > 4 * v75)
    {
      v152 = 2 * a3;
    }

    v26 = __CFADD__(v5, v152);
    v153 = v5 + v152;
    if (v26)
    {
      goto LABEL_130;
    }

    v26 = __CFADD__(v153, a1);
    v154 = v153 + a1;
    if (v26)
    {
      goto LABEL_133;
    }

    if (!is_mul_ok(v154, 3uLL))
    {
      goto LABEL_136;
    }

    v155 = 3 * v154;
    v26 = __CFADD__(v4, v155);
    v156 = (v4 + v155);
    if (!v26)
    {
      break;
    }

LABEL_139:
    __break(1u);
LABEL_140:
    *&v714 = 0;
    *(&v714 + 1) = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD7DC0);
    *&v700 = a2;
    type metadata accessor for QUICPath();
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0xD000000000000016, 0x8000000182BD7DF0);
    *&v700 = v4[33];
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](0x6E65732073617720, 0xED00002074612074);
    *&v700 = v4[34];
    v248 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v248);

    v5 = *(&v714 + 1);
    v517 = v714;
    if (qword_1EA837248 != -1)
    {
      goto LABEL_217;
    }

LABEL_141:
    v249 = sub_182AD2698();
    __swift_project_value_buffer(v249, qword_1EA843418);
    v250 = swift_allocObject();
    *(v250 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
    *(v250 + 24) = 54;
    *(v250 + 32) = 2;
    v251 = swift_allocObject();
    *(v251 + 16) = sub_181F8C724;
    *(v251 + 24) = v250;
    v252 = swift_allocObject();
    *(v252 + 16) = 1564427099;
    *(v252 + 24) = 0xE400000000000000;
    v412 = swift_allocObject();
    *(v412 + 16) = v517;
    *(v412 + 24) = v5;

    v427 = sub_182AD2678();
    v508 = sub_182AD38A8();
    v439 = swift_allocObject();
    *(v439 + 16) = 32;
    v451 = swift_allocObject();
    *(v451 + 16) = 8;
    v253 = swift_allocObject();
    *(v253 + 16) = sub_181F8C71C;
    *(v253 + 24) = v251;
    v254 = swift_allocObject();
    *(v254 + 16) = sub_181F8C718;
    *(v254 + 24) = v253;
    v463 = swift_allocObject();
    *(v463 + 16) = 32;
    v5 = 32;
    v475 = swift_allocObject();
    *(v475 + 16) = 8;
    v255 = swift_allocObject();
    *(v255 + 16) = sub_181F8C720;
    *(v255 + 24) = v252;
    v256 = swift_allocObject();
    *(v256 + 16) = sub_181F8C718;
    *(v256 + 24) = v255;
    v487 = v256;
    v499 = swift_allocObject();
    *(v499 + 16) = 32;
    v517 = swift_allocObject();
    *(v517 + 16) = 8;
    v257 = swift_allocObject();
    *(v257 + 16) = sub_181F8C720;
    *(v257 + 24) = v412;
    v258 = swift_allocObject();
    *(v258 + 16) = sub_181F8C718;
    *(v258 + 24) = v257;
    if (os_log_type_enabled(v427, v508))
    {
      v5 = swift_slowAlloc();
      v259 = swift_slowAlloc();
      *&v686 = 0;
      *v5 = 770;
      v413 = v259;
      *&v672 = v259;
      *&v700 = v5 + 2;
      *&v714 = sub_181F8C728;
      *(&v714 + 1) = v439;
      sub_181F73AE0(&v714, &v700, &v686, &v672);

      *&v714 = sub_181F8C728;
      *(&v714 + 1) = v451;
      sub_181F73AE0(&v714, &v700, &v686, &v672);

      *&v714 = sub_181F8C714;
      *(&v714 + 1) = v254;
      sub_181F73AE0(&v714, &v700, &v686, &v672);

      *&v714 = sub_181F8C728;
      *(&v714 + 1) = v463;
      sub_181F73AE0(&v714, &v700, &v686, &v672);

      *&v714 = sub_181F8C728;
      *(&v714 + 1) = v475;
      sub_181F73AE0(&v714, &v700, &v686, &v672);

      *&v714 = sub_181F8C714;
      *(&v714 + 1) = v487;
      sub_181F73AE0(&v714, &v700, &v686, &v672);

      *&v714 = sub_181F8C728;
      *(&v714 + 1) = v499;
      sub_181F73AE0(&v714, &v700, &v686, &v672);

      *&v714 = sub_181F8C728;
      *(&v714 + 1) = v517;
      sub_181F73AE0(&v714, &v700, &v686, &v672);

      *&v714 = sub_181F8C714;
      *(&v714 + 1) = v258;
      sub_181F73AE0(&v714, &v700, &v686, &v672);

      _os_log_impl(&dword_181A37000, v427, v508, "%s %s %s", v5, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v413, -1, -1);
      MEMORY[0x1865DF520](v5, -1, -1);
    }

    else
    {
    }

    v4 = v518;
  }

  v5 = v517;
  if (isa < v156)
  {
    goto LABEL_118;
  }

  if (v9)
  {
    a3 = v518;
    if (__nwlog_is_datapath_logging_enabled())
    {
      *&v714 = 0;
      *(&v714 + 1) = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000027, 0x8000000182BD7D10);
      *&v610 = *(a2 + 16);
      v157 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v157);

      MEMORY[0x1865D9CA0](0xD000000000000026, 0x8000000182BD7D40);
      v158 = v714;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v159 = sub_182AD2698();
      __swift_project_value_buffer(v159, qword_1EA843418);
      v160 = swift_allocObject();
      *(v160 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
      *(v160 + 24) = 54;
      *(v160 + 32) = 2;
      v161 = swift_allocObject();
      *(v161 + 16) = sub_181F8C724;
      *(v161 + 24) = v160;
      v162 = swift_allocObject();
      *(v162 + 16) = 1564427099;
      *(v162 + 24) = 0xE400000000000000;
      v163 = swift_allocObject();
      *(v163 + 16) = v158;

      oslogb = sub_182AD2678();
      v164 = sub_182AD38A8();
      v438 = swift_allocObject();
      *(v438 + 16) = 32;
      v450 = swift_allocObject();
      *(v450 + 16) = 8;
      v165 = swift_allocObject();
      *(v165 + 16) = sub_181F8C71C;
      *(v165 + 24) = v161;
      v166 = swift_allocObject();
      *(v166 + 16) = sub_181F8C718;
      *(v166 + 24) = v165;
      v462 = swift_allocObject();
      *(v462 + 16) = 32;
      v474 = swift_allocObject();
      *(v474 + 16) = 8;
      v167 = swift_allocObject();
      *(v167 + 16) = sub_181F8C720;
      *(v167 + 24) = v162;
      v168 = swift_allocObject();
      *(v168 + 16) = sub_181F8C718;
      *(v168 + 24) = v167;
      v486 = swift_allocObject();
      *(v486 + 16) = 32;
      v498 = swift_allocObject();
      *(v498 + 16) = 8;
      v169 = swift_allocObject();
      *(v169 + 16) = sub_181F8C720;
      *(v169 + 24) = v163;
      a1 = swift_allocObject();
      *(a1 + 16) = sub_181F8C718;
      *(a1 + 24) = v169;
      v426 = v164;
      if (os_log_type_enabled(oslogb, v164))
      {
        v170 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        *&v596 = 0;
        *v170 = 770;
        *&v582 = v171;
        *&v610 = v170 + 2;
        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v438;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v450;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = v166;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v462;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v474;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = v168;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v486;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C728;
        *(&v714 + 1) = v498;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        *&v714 = sub_181F8C714;
        *(&v714 + 1) = a1;
        sub_181F73AE0(&v714, &v610, &v596, &v582);

        _os_log_impl(&dword_181A37000, oslogb, v426, "%s %s %s", v170, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v171, -1, -1);
        MEMORY[0x1865DF520](v170, -1, -1);
      }

      else
      {
      }

      a3 = v518;
      v5 = v517;
    }
  }

  else
  {
    a3 = v518;
  }

  v222 = *(a2 + 912);
  v223 = *(a2 + 880);
  v606 = *(a2 + 896);
  v607 = v222;
  v224 = *(a2 + 912);
  v608 = *(a2 + 928);
  v225 = *(a2 + 848);
  v226 = *(a2 + 816);
  v602 = *(a2 + 832);
  v603 = v225;
  v227 = *(a2 + 848);
  v228 = *(a2 + 880);
  v604 = *(a2 + 864);
  v605 = v228;
  v229 = *(a2 + 784);
  v230 = *(a2 + 752);
  v598 = *(a2 + 768);
  v599 = v229;
  v231 = *(a2 + 784);
  v232 = *(a2 + 816);
  v600 = *(a2 + 800);
  v601 = v232;
  v233 = *(a2 + 752);
  v596 = *(a2 + 736);
  v597 = v233;
  v620 = v606;
  v621 = v224;
  v622 = *(a2 + 928);
  v616 = v602;
  v617 = v227;
  v618 = v604;
  v619 = v223;
  v612 = v598;
  v613 = v231;
  v614 = v600;
  v615 = v226;
  v609 = *(a2 + 944);
  v623 = *(a2 + 944);
  v610 = v596;
  v611 = v230;
  if (sub_182015D6C(&v610) == 1)
  {
    goto LABEL_216;
  }

  v724 = v620;
  v725 = v621;
  v726 = v622;
  v727 = v623;
  v720 = v616;
  v721 = v617;
  v722 = v618;
  v723 = v619;
  v716 = v612;
  v717 = v613;
  v718 = v614;
  v719 = v615;
  v714 = v610;
  v715 = v611;
  v234 = *(a2 + 1072);
  sub_18201A394(&v596, &v582);
  sub_18228578C(v234, &v554);
  sub_182015DF0(&v596);
  v578 = v564;
  v579 = v565;
  v580 = v566;
  v581 = v567;
  v574 = v560;
  v575 = v561;
  v576 = v562;
  v577 = v563;
  v570 = v556;
  v571 = v557;
  v572 = v558;
  v573 = v559;
  v568 = v554;
  v569 = v555;
  nullsub_41();
  v235 = *(a2 + 912);
  v592 = *(a2 + 896);
  v593 = v235;
  v594 = *(a2 + 928);
  v595 = *(a2 + 944);
  v236 = *(a2 + 848);
  v588 = *(a2 + 832);
  v589 = v236;
  v237 = *(a2 + 880);
  v590 = *(a2 + 864);
  v591 = v237;
  v238 = *(a2 + 784);
  v584 = *(a2 + 768);
  v585 = v238;
  v239 = *(a2 + 816);
  v586 = *(a2 + 800);
  v587 = v239;
  v240 = *(a2 + 752);
  v582 = *(a2 + 736);
  v583 = v240;
  v241 = v579;
  *(a2 + 896) = v578;
  *(a2 + 912) = v241;
  *(a2 + 928) = v580;
  *(a2 + 944) = v581;
  v242 = v575;
  *(a2 + 832) = v574;
  *(a2 + 848) = v242;
  v243 = v577;
  *(a2 + 864) = v576;
  *(a2 + 880) = v243;
  v244 = v571;
  *(a2 + 768) = v570;
  *(a2 + 784) = v244;
  v245 = v573;
  *(a2 + 800) = v572;
  *(a2 + 816) = v245;
  v246 = v569;
  *(a2 + 736) = v568;
  *(a2 + 752) = v246;
  sub_182015DF0(&v582);
  if (!v9 || !__nwlog_is_datapath_logging_enabled())
  {
    goto LABEL_116;
  }

  *&v524 = 0;
  *(&v524 + 1) = 0xE000000000000000;
  sub_182AD3BA8();

  v538 = 0xD00000000000001ALL;
  v539 = 0x8000000182BD7CF0;
  *&v524 = *(a2 + 16);
  v345 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v345);

  MEMORY[0x1865D9CA0](0x20776F6E20736920, 0xE800000000000000);
  v346 = *(a2 + 912);
  v550 = *(a2 + 896);
  v551 = v346;
  v552 = *(a2 + 928);
  v553 = *(a2 + 944);
  v347 = *(a2 + 848);
  v546 = *(a2 + 832);
  v547 = v347;
  v348 = *(a2 + 880);
  v548 = *(a2 + 864);
  v549 = v348;
  v349 = *(a2 + 784);
  v542 = *(a2 + 768);
  v543 = v349;
  v350 = *(a2 + 816);
  v544 = *(a2 + 800);
  v545 = v350;
  v351 = *(a2 + 752);
  v540 = *(a2 + 736);
  v541 = v351;
  if (sub_182015D6C(&v540) == 1)
  {
LABEL_220:
    __break(1u);

    while (1)
    {

      __break(1u);
    }
  }

  v534 = v550;
  v535 = v551;
  v536 = v552;
  v537 = v553;
  v530 = v546;
  v531 = v547;
  v532 = v548;
  v533 = v549;
  v526 = v542;
  v527 = v543;
  v528 = v544;
  v529 = v545;
  v524 = v540;
  v525 = v541;
  sub_182015D80(&v524);
  nullsub_41();
  v519 = *v392;
  v393 = sub_182AD41B8();
  MEMORY[0x1865D9CA0](v393);

  v394 = v538;
  v516 = v539;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v395 = sub_182AD2698();
  __swift_project_value_buffer(v395, qword_1EA843418);
  v396 = swift_allocObject();
  *(v396 + 16) = "notifyLossToPath(packetNumber:path:bytesLost:pnSpace:)";
  *(v396 + 24) = 54;
  *(v396 + 32) = 2;
  v397 = swift_allocObject();
  *(v397 + 16) = sub_181F8C724;
  *(v397 + 24) = v396;
  v398 = swift_allocObject();
  *(v398 + 16) = 1564427099;
  *(v398 + 24) = 0xE400000000000000;
  v399 = swift_allocObject();
  *(v399 + 16) = v394;
  *(v399 + 24) = v516;

  v400 = sub_182AD2678();
  v401 = sub_182AD38A8();
  v447 = swift_allocObject();
  *(v447 + 16) = 32;
  v459 = swift_allocObject();
  *(v459 + 16) = 8;
  v402 = swift_allocObject();
  *(v402 + 16) = sub_181F8C71C;
  *(v402 + 24) = v397;
  v403 = swift_allocObject();
  *(v403 + 16) = sub_181F8C718;
  *(v403 + 24) = v402;
  v471 = swift_allocObject();
  *(v471 + 16) = 32;
  v483 = swift_allocObject();
  *(v483 + 16) = 8;
  v404 = swift_allocObject();
  *(v404 + 16) = sub_181F8C720;
  *(v404 + 24) = v398;
  v405 = swift_allocObject();
  *(v405 + 16) = sub_181F8C718;
  *(v405 + 24) = v404;
  v495 = swift_allocObject();
  *(v495 + 16) = 32;
  v507 = swift_allocObject();
  *(v507 + 16) = 8;
  v406 = swift_allocObject();
  *(v406 + 16) = sub_181F8C720;
  *(v406 + 24) = v399;
  v407 = swift_allocObject();
  *(v407 + 16) = sub_181F8C718;
  *(v407 + 24) = v406;
  v408 = v401;
  v409 = v400;
  if (os_log_type_enabled(v400, v401))
  {
    v410 = swift_slowAlloc();
    v411 = swift_slowAlloc();
    v521 = v411;
    v522 = 0;
    *v410 = 770;
    v523 = v410 + 2;
    v519 = sub_181F8C728;
    v520 = v447;
    sub_181F73AE0(&v519, &v523, &v522, &v521);

    v519 = sub_181F8C728;
    v520 = v459;
    sub_181F73AE0(&v519, &v523, &v522, &v521);

    v519 = sub_181F8C714;
    v520 = v403;
    sub_181F73AE0(&v519, &v523, &v522, &v521);

    v519 = sub_181F8C728;
    v520 = v471;
    sub_181F73AE0(&v519, &v523, &v522, &v521);

    v519 = sub_181F8C728;
    v520 = v483;
    sub_181F73AE0(&v519, &v523, &v522, &v521);

    v519 = sub_181F8C714;
    v520 = v405;
    sub_181F73AE0(&v519, &v523, &v522, &v521);

    v519 = sub_181F8C728;
    v520 = v495;
    sub_181F73AE0(&v519, &v523, &v522, &v521);

    v519 = sub_181F8C728;
    v520 = v507;
    sub_181F73AE0(&v519, &v523, &v522, &v521);

    v519 = sub_181F8C714;
    v520 = v407;
    sub_181F73AE0(&v519, &v523, &v522, &v521);

    _os_log_impl(&dword_181A37000, v409, v408, "%s %s %s", v410, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v411, -1, -1);
    MEMORY[0x1865DF520](v410, -1, -1);
  }

  else
  {
  }

  a3 = v518;
  v5 = v517;
LABEL_116:
  *(a3 + 432) = -1;
LABEL_117:
  *(a2 + 184) = *(a2 + 152);
LABEL_118:
  swift_endAccess();
  return v5;
}