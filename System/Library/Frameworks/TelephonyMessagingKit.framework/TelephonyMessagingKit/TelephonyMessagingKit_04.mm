uint64_t TelephonyMessagingSession.mmsService.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);
  os_unfair_lock_lock(v1 + 24);
  sub_1E4B3902C(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 24);
  return v3;
}

uint64_t sub_1E4B36D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    type metadata accessor for MMSService();
    swift_allocObject();
    v6 = sub_1E4B333B4(a2);
    *(a1 + 8) = v6;
  }

  *a3 = v6;
}

uint64_t TelephonyMessagingSession.rcsService.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state);
  os_unfair_lock_lock(v1 + 24);
  sub_1E4B39048(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 24);
  return v3;
}

uint64_t sub_1E4B36E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v10[3] = &type metadata for RCSService.DependencyProvider;
    v10[4] = &off_1F5EBAB40;
    type metadata accessor for RCSService();
    v8 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v10, &type metadata for RCSService.DependencyProvider);
    v6 = sub_1E4B3A240(a2, v8);
    __swift_destroy_boxed_opaque_existential_1(v10);
    *(a1 + 16) = v6;
  }

  *a3 = v6;
}

uint64_t TelephonyMessagingSession.isConfiguredForCarrierMessaging.getter()
{
  sub_1E4B35420(v8);
  v0 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  __swift_project_boxed_opaque_existential_1((*v0 + 24), v1);
  v3 = *(v2 + 40);
  v4 = sub_1E4B39064();
  v3(&v7, v4, &type metadata for CarrierMessagingCapabilityRequest, v4, v1, v2);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t TelephonyMessagingSession.deinit()
{
  v1 = OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_id;
  v2 = sub_1E4BEFAFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_clientProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_featureFlagProvider));

  return v0;
}

uint64_t TelephonyMessagingSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_id;
  v2 = sub_1E4BEFAFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_clientProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_featureFlagProvider));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E4B37268@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_id;
  v5 = sub_1E4BEFAFC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t TelephonyMessagingSession.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94680, &qword_1E4C05668);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94688, &qword_1E4C05670);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94690, &qword_1E4C05678);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94698, &qword_1E4C05680);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF946A0, &qword_1E4C05688);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B390B8();
  sub_1E4BF0ACC();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1E4B39160();
      v18 = v27;
      sub_1E4BF08BC();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1E4B3910C();
      v18 = v30;
      sub_1E4BF08BC();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1E4B391B4();
    v18 = v24;
    sub_1E4BF08BC();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1E4B39208();
  sub_1E4BF08BC();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t TelephonyMessagingSession.Error.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF946D0, &qword_1E4C05690);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF946D8, &qword_1E4C05698);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF946E0, &qword_1E4C056A0);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF946E8, &qword_1E4C056A8);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF946F0, &unk_1E4C056B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E4B390B8();
  v15 = v46;
  sub_1E4BF0ABC();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1E4BF088C();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1E4AE0F20();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1E4BF06EC();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v28 = &type metadata for TelephonyMessagingSession.Error;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1E4B391B4();
        v32 = v35;
        sub_1E4BF07EC();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1E4B39208();
        v25 = v35;
        sub_1E4BF07EC();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1E4B39160();
      v31 = v35;
      sub_1E4BF07EC();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1E4B3910C();
      v33 = v35;
      sub_1E4BF07EC();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

void sub_1E4B37DA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1ECF923E8 != -1)
    {
      swift_once();
    }

    v5 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v5, qword_1ECF95E30);
    v6 = sub_1E4BEFB5C();
    v7 = sub_1E4BF04BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = sub_1E4BEFEFC();
      v12 = sub_1E4B30548(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1E4AD3000, v6, v7, "Received message %s before client has started listening for it, pending.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1E6921800](v9, -1, -1);
      MEMORY[0x1E6921800](v8, -1, -1);
    }

    v13 = *(v4 + 16);
    MEMORY[0x1EEE9AC00](v14);

    os_unfair_lock_lock(v13 + 26);
    sub_1E4B3A980(&v13[4]);
    if (v2)
    {
      os_unfair_lock_unlock(v13 + 26);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v13 + 26);
    }
  }
}

void sub_1E4B37FB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1ECF923E8 != -1)
    {
      swift_once();
    }

    v5 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v5, qword_1ECF95E30);
    v6 = sub_1E4BEFB5C();
    v7 = sub_1E4BF04BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = sub_1E4BEFEFC();
      v12 = sub_1E4B30548(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1E4AD3000, v6, v7, "Received message %s before client has started listening for it, pending.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1E6921800](v9, -1, -1);
      MEMORY[0x1E6921800](v8, -1, -1);
    }

    v13 = *(v4 + 16);
    MEMORY[0x1EEE9AC00](v14);

    os_unfair_lock_lock(v13 + 26);
    sub_1E4B3AAF4(&v13[4]);
    if (v2)
    {
      os_unfair_lock_unlock(v13 + 26);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v13 + 26);
    }
  }
}

void sub_1E4B381C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1ECF923E8 != -1)
    {
      swift_once();
    }

    v5 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v5, qword_1ECF95E30);
    v6 = sub_1E4BEFB5C();
    v7 = sub_1E4BF04BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = sub_1E4BEFEFC();
      v12 = sub_1E4B30548(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1E4AD3000, v6, v7, "Received message %s before client has started listening for it, pending.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1E6921800](v9, -1, -1);
      MEMORY[0x1E6921800](v8, -1, -1);
    }

    v13 = *(v4 + 16);
    MEMORY[0x1EEE9AC00](v14);

    os_unfair_lock_lock(v13 + 26);
    sub_1E4B3AB10(&v13[4]);
    if (v2)
    {
      os_unfair_lock_unlock(v13 + 26);
      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock(v13 + 26);
    }
  }
}

uint64_t sub_1E4B383CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4BEFABC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94890, &qword_1E4C0E8D0) + 40);
  v31[3] = type metadata accessor for MMSReceivedNotification(0);
  v31[4] = sub_1E4B3AB2C(&qword_1ECF94898, type metadata accessor for MMSReceivedNotification, &protocol conformance descriptor for MMSReceivedNotification);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  sub_1E4B3AB74(a2 + v8, boxed_opaque_existential_1, type metadata accessor for MMSReceivedNotification);
  v30[0] = 4;
  v11 = *(a1 + 80);
  v10 = (a1 + 80);
  v12 = *(v11 + 16);
  sub_1E4B3AA00(v30, v29);
  sub_1E4BEFAAC();
  v28 = v7;
  v13 = sub_1E4B3EC34(sub_1E4B3AA5C);
  sub_1E4B7AAEC(v12, v12, v13);

  sub_1E4AE0AE4(v29, &qword_1ECF948A0, &unk_1E4C05E40);
  v14 = *(v5 + 8);
  v14(v7, v4);
  sub_1E4BEFAAC();
  v15 = *(*v10 + 16);
  v16 = *(v10 - 7);
  v26 = v7;
  v27 = v16;
  v17 = sub_1E4B7A308(sub_1E4B3AA7C, v25);
  v18 = *(*v10 + 16);
  if (v18 < v17)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_1E4B7AAC4(v17, v18);
  v19 = *v10;
  v15 -= *(v19 + 16);
  v14(v7, v4);
  if (v15 < 1)
  {
    return sub_1E4B3AAA0(v30);
  }

  v7 = *(v19 + 16);
  if (qword_1ECF923E8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v20 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v20, qword_1ECF95E30);
  v21 = sub_1E4BEFB5C();
  v22 = sub_1E4BF04BC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = v15;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v7;
    _os_log_impl(&dword_1E4AD3000, v21, v22, "Removed %ld expired messages, remaining: %ld", v23, 0x16u);
    MEMORY[0x1E6921800](v23, -1, -1);
  }

  return sub_1E4B3AAA0(v30);
}

uint64_t sub_1E4B38724(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4BEFABC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF948A8, &unk_1E4C05E50) + 40);
  v31[3] = type metadata accessor for SMSReceivedNotification(0);
  v31[4] = sub_1E4B3AB2C(&qword_1ECF948B0, type metadata accessor for SMSReceivedNotification, &protocol conformance descriptor for SMSReceivedNotification);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  sub_1E4B3AB74(a2 + v8, boxed_opaque_existential_1, type metadata accessor for SMSReceivedNotification);
  v30[0] = 3;
  v11 = *(a1 + 80);
  v10 = (a1 + 80);
  v12 = *(v11 + 16);
  sub_1E4B3AA00(v30, v29);
  sub_1E4BEFAAC();
  v28 = v7;
  v13 = sub_1E4B3EC34(sub_1E4B3AC6C);
  sub_1E4B7AAEC(v12, v12, v13);

  sub_1E4AE0AE4(v29, &qword_1ECF948A0, &unk_1E4C05E40);
  v14 = *(v5 + 8);
  v14(v7, v4);
  sub_1E4BEFAAC();
  v15 = *(*v10 + 16);
  v16 = *(v10 - 7);
  v26 = v7;
  v27 = v16;
  v17 = sub_1E4B7A308(sub_1E4B3AC50, v25);
  v18 = *(*v10 + 16);
  if (v18 < v17)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_1E4B7AAC4(v17, v18);
  v19 = *v10;
  v15 -= *(v19 + 16);
  v14(v7, v4);
  if (v15 < 1)
  {
    return sub_1E4B3AAA0(v30);
  }

  v7 = *(v19 + 16);
  if (qword_1ECF923E8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v20 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v20, qword_1ECF95E30);
  v21 = sub_1E4BEFB5C();
  v22 = sub_1E4BF04BC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = v15;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v7;
    _os_log_impl(&dword_1E4AD3000, v21, v22, "Removed %ld expired messages, remaining: %ld", v23, 0x16u);
    MEMORY[0x1E6921800](v23, -1, -1);
  }

  return sub_1E4B3AAA0(v30);
}

uint64_t sub_1E4B38A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4BEFABC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF948B8, &qword_1E4C0E7B0) + 40);
  v31[3] = type metadata accessor for RCSReceivedNotification(0);
  v31[4] = sub_1E4B3AB2C(&qword_1ECF948C0, type metadata accessor for RCSReceivedNotification, &protocol conformance descriptor for RCSReceivedNotification);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  sub_1E4B3AB74(a2 + v8, boxed_opaque_existential_1, type metadata accessor for RCSReceivedNotification);
  v30[0] = 10;
  v11 = *(a1 + 80);
  v10 = (a1 + 80);
  v12 = *(v11 + 16);
  sub_1E4B3AA00(v30, v29);
  sub_1E4BEFAAC();
  v28 = v7;
  v13 = sub_1E4B3EC34(sub_1E4B3AC6C);
  sub_1E4B7AAEC(v12, v12, v13);

  sub_1E4AE0AE4(v29, &qword_1ECF948A0, &unk_1E4C05E40);
  v14 = *(v5 + 8);
  v14(v7, v4);
  sub_1E4BEFAAC();
  v15 = *(*v10 + 16);
  v16 = *(v10 - 7);
  v26 = v7;
  v27 = v16;
  v17 = sub_1E4B7A308(sub_1E4B3AC50, v25);
  v18 = *(*v10 + 16);
  if (v18 < v17)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_1E4B7AAC4(v17, v18);
  v19 = *v10;
  v15 -= *(v19 + 16);
  v14(v7, v4);
  if (v15 < 1)
  {
    return sub_1E4B3AAA0(v30);
  }

  v7 = *(v19 + 16);
  if (qword_1ECF923E8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v20 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v20, qword_1ECF95E30);
  v21 = sub_1E4BEFB5C();
  v22 = sub_1E4BF04BC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = v15;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v7;
    _os_log_impl(&dword_1E4AD3000, v21, v22, "Removed %ld expired messages, remaining: %ld", v23, 0x16u);
    MEMORY[0x1E6921800](v23, -1, -1);
  }

  return sub_1E4B3AAA0(v30);
}

void sub_1E4B38DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1E4BB0994(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_1E4BF05DC();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = *(a1 + 56) + 32 * v4;
      v23 = *v8;
      v9 = *(v8 + 16);
      v22 = *(v8 + 8);
      v10 = *(v24 + 16);
      v11 = *(v24 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_1E4BB0994((v11 > 1), v10 + 1, 1);
      }

      *(v24 + 16) = v10 + 1;
      v12 = v24 + 24 * v10;
      *(v12 + 32) = v23;
      *(v12 + 40) = v22;
      *(v12 + 48) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 72 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1E4B3A77C(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1E4B3A77C(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
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
  }
}

unint64_t sub_1E4B39064()
{
  result = qword_1EE2BECA0;
  if (!qword_1EE2BECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BECA0);
  }

  return result;
}

unint64_t sub_1E4B390B8()
{
  result = qword_1ECF946A8;
  if (!qword_1ECF946A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF946A8);
  }

  return result;
}

unint64_t sub_1E4B3910C()
{
  result = qword_1ECF946B0;
  if (!qword_1ECF946B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF946B0);
  }

  return result;
}

unint64_t sub_1E4B39160()
{
  result = qword_1ECF946B8;
  if (!qword_1ECF946B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF946B8);
  }

  return result;
}

unint64_t sub_1E4B391B4()
{
  result = qword_1ECF946C0;
  if (!qword_1ECF946C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF946C0);
  }

  return result;
}

unint64_t sub_1E4B39208()
{
  result = qword_1ECF946C8;
  if (!qword_1ECF946C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF946C8);
  }

  return result;
}

unint64_t sub_1E4B39260()
{
  result = qword_1ECF946F8;
  if (!qword_1ECF946F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF946F8);
  }

  return result;
}

unint64_t sub_1E4B39300(void *a1)
{
  a1[1] = sub_1E4B39338();
  a1[2] = sub_1E4B3938C();
  result = sub_1E4B304F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1E4B39338()
{
  result = qword_1ECF94708;
  if (!qword_1ECF94708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94708);
  }

  return result;
}

unint64_t sub_1E4B3938C()
{
  result = qword_1ECF94710;
  if (!qword_1ECF94710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94710);
  }

  return result;
}

uint64_t type metadata accessor for TelephonyMessagingSession(uint64_t a1)
{
  result = qword_1ECF94718;
  if (!qword_1ECF94718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4B39434(uint64_t a1)
{
  result = sub_1E4BEFAFC();
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

unint64_t sub_1E4B39508()
{
  result = qword_1ECF94728;
  if (!qword_1ECF94728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF945C0, &qword_1E4C058C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94728);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21TelephonyMessagingKit0B0O14ClientProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E4B39584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B395CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E4B39684()
{
  result = qword_1ECF94730;
  if (!qword_1ECF94730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94730);
  }

  return result;
}

unint64_t sub_1E4B396DC()
{
  result = qword_1ECF94738;
  if (!qword_1ECF94738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94738);
  }

  return result;
}

unint64_t sub_1E4B39734()
{
  result = qword_1ECF94740;
  if (!qword_1ECF94740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94740);
  }

  return result;
}

unint64_t sub_1E4B3978C()
{
  result = qword_1ECF94748;
  if (!qword_1ECF94748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94748);
  }

  return result;
}

unint64_t sub_1E4B397E4()
{
  result = qword_1ECF94750;
  if (!qword_1ECF94750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94750);
  }

  return result;
}

unint64_t sub_1E4B3983C()
{
  result = qword_1ECF94758;
  if (!qword_1ECF94758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94758);
  }

  return result;
}

unint64_t sub_1E4B39894()
{
  result = qword_1ECF94760;
  if (!qword_1ECF94760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94760);
  }

  return result;
}

unint64_t sub_1E4B398EC()
{
  result = qword_1ECF94768;
  if (!qword_1ECF94768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94768);
  }

  return result;
}

unint64_t sub_1E4B39944()
{
  result = qword_1ECF94770;
  if (!qword_1ECF94770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94770);
  }

  return result;
}

unint64_t sub_1E4B3999C()
{
  result = qword_1ECF94778;
  if (!qword_1ECF94778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94778);
  }

  return result;
}

unint64_t sub_1E4B399F4()
{
  result = qword_1ECF94780;
  if (!qword_1ECF94780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94780);
  }

  return result;
}

uint64_t sub_1E4B39A48(uint64_t a1)
{
  v2 = sub_1E4BEFAFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = &type metadata for MessagingClientProvider;
  v13[4] = &off_1F5EB6B98;
  v12[3] = &type metadata for FeatureFlagProvider;
  v12[4] = &off_1F5EAD208;
  v6 = OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_cellularServiceStateNotificationManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94850, &qword_1E4C05E18);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94858, &qword_1E4C05E20);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = v8;
  *(a1 + v6) = v7;
  sub_1E4BEFAEC();
  (*(v3 + 32))(a1 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_id, v5, v2);
  sub_1E4B14334(v13, a1 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_clientProvider);
  sub_1E4B14334(v12, a1 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_featureFlagProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94860, &qword_1E4C05E28);
  v9 = swift_allocObject();
  *(v9 + 96) = 0;
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v10 = MEMORY[0x1E69E7CC8];
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 40) = v10;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(a1 + OBJC_IVAR____TtC21TelephonyMessagingKit25TelephonyMessagingSession_state) = v9;
  return a1;
}

uint64_t sub_1E4B39C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E4B3AA00(a1, a3);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EB8, &qword_1E4C063F0) + 28);
  v6 = sub_1E4BEFABC();
  return (*(*(v6 - 8) + 16))(a3 + v5, a2, v6);
}

uint64_t sub_1E4B39CCC(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for Messaging.Client();
  v32 = &off_1F5EB64B8;
  v30[0] = a1;
  v3 = __swift_project_boxed_opaque_existential_1(v30, v31);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = *v3;

  sub_1E4B7C29C(v5, v4);

  v6 = __swift_project_boxed_opaque_existential_1(v30, v31);
  swift_allocObject();
  swift_weakInit();
  v7 = *(*v6 + 16);

  os_unfair_lock_lock(v7 + 26);
  sub_1E4B3A910(&v7[4]);
  os_unfair_lock_unlock(v7 + 26);

  v8 = __swift_project_boxed_opaque_existential_1(v30, v31);
  v9 = *(*v8 + 48);
  v10 = *(*v8 + 56);
  __swift_project_boxed_opaque_existential_1((*v8 + 24), v9);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *(v10 + 72);
  v13 = type metadata accessor for RCSReceivedNotification(0);
  v14 = sub_1E4B3AB2C(&qword_1ECF94878, type metadata accessor for RCSReceivedNotification, &protocol conformance descriptor for RCSReceivedNotification);

  v12(sub_1E4B3A92C, v11, v13, v14, v9, v10);

  v15 = __swift_project_boxed_opaque_existential_1(v30, v31);
  v16 = *(*v15 + 48);
  v17 = *(*v15 + 56);
  __swift_project_boxed_opaque_existential_1((*v15 + 24), v16);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = *(v17 + 72);
  v20 = type metadata accessor for SMSReceivedNotification(0);
  v21 = sub_1E4B3AB2C(&qword_1ECF94880, type metadata accessor for SMSReceivedNotification, &protocol conformance descriptor for SMSReceivedNotification);

  v19(sub_1E4B3A948, v18, v20, v21, v16, v17);

  v22 = __swift_project_boxed_opaque_existential_1(v30, v31);
  v23 = *(*v22 + 48);
  v24 = *(*v22 + 56);
  __swift_project_boxed_opaque_existential_1((*v22 + 24), v23);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = *(v24 + 72);
  v27 = type metadata accessor for MMSReceivedNotification(0);
  v28 = sub_1E4B3AB2C(&qword_1ECF94888, type metadata accessor for MMSReceivedNotification, &protocol conformance descriptor for MMSReceivedNotification);

  v26(sub_1E4B3A964, v25, v27, v28, v23, v24);

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_1E4B3A0B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E4BF1BD0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5364696C61766E69 && a2 == 0xEE006E6F69737365 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164696C61766E69 && a2 == 0xEF746E656D756772 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1E4B3A240(uint64_t a1, void *a2)
{
  v35 = &type metadata for RCSService.DependencyProvider;
  v36 = &off_1F5EBAB40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94788, &qword_1E4C05D50);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94790, &qword_1E4C05D58);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = v4;
  a2[8] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94798, &qword_1E4C05D60);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947A0, &qword_1E4C05D68);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v5;
  *(v6 + 16) = v7;
  a2[9] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947A8, &qword_1E4C05D70);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947B0, &qword_1E4C05D78);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v5;
  *(v8 + 16) = v9;
  a2[10] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947B8, &qword_1E4C05D80);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947C0, &qword_1E4C05D88);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = v5;
  *(v10 + 16) = v11;
  a2[11] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947C8, &qword_1E4C05D90);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947D0, &qword_1E4C05D98);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  v14 = MEMORY[0x1E69E7CC8];
  *(v13 + 16) = MEMORY[0x1E69E7CC8];
  *(v12 + 16) = v13;
  a2[12] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947D8, &qword_1E4C05DA0);
  v15 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947E0, &qword_1E4C05DA8);
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = v14;
  *(v15 + 16) = v16;
  a2[13] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947E8, &qword_1E4C05DB0);
  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947F0, &qword_1E4C05DB8);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = v14;
  *(v17 + 16) = v18;
  a2[14] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF947F8, &qword_1E4C05DC0);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94800, &qword_1E4C05DC8);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v14;
  *(v19 + 16) = v20;
  a2[15] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94808, &qword_1E4C05DD0);
  v21 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94810, &qword_1E4C05DD8);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = v14;
  *(v21 + 16) = v22;
  a2[16] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94818, &qword_1E4C05DE0);
  v23 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94820, &qword_1E4C05DE8);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = v14;
  *(v23 + 16) = v24;
  a2[17] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94828, &qword_1E4C05DF0);
  v25 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94830, &qword_1E4C05DF8);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v14;
  *(v25 + 16) = v26;
  a2[18] = v25;
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  *(v28 + 16) = v14;
  *(v27 + 16) = v28;
  a2[19] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94838, &qword_1E4C05E00);
  v29 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94840, &qword_1E4C05E08);
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 16) = v14;
  *(v29 + 16) = v30;
  a2[20] = v29;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94848, &qword_1E4C05E10);
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  sub_1E4B3A720(&v33, v31 + 16);
  a2[2] = v31;
  sub_1E4ADB544(&v34, (a2 + 3));
  return a2;
}

uint64_t sub_1E4B3A77C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_1E4B3A788()
{
  result = qword_1EE2BDB38;
  if (!qword_1EE2BDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDB38);
  }

  return result;
}

uint64_t sub_1E4B3A7DC(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(a1 + 32) = v3;
  return result;
}

unint64_t sub_1E4B3A828()
{
  result = qword_1ECF94868;
  if (!qword_1ECF94868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94868);
  }

  return result;
}

uint64_t sub_1E4B3A898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94870, &unk_1E4C05E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_1E4B3AB2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4B3AB74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1E4B3ABDC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = *(v2 + 16);
  *a2 = v3;

  return result;
}

void sub_1E4B3AC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

double RCSSendSuggestionResponseRequest.response.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4B3AD98(v1, v6);
  v7 = *v6;
  v8 = v6[40];
  v18 = *(v6 + 3);
  v9 = *(v6 + 8);
  v10 = *(v6 + 9);
  v11 = *(v4 + 40);
  v12 = *(type metadata accessor for RCSService.SuggestionResponse(0) + 32);
  v13 = *(v6 + 8);
  v16 = *(v6 + 24);
  v17 = v13;
  sub_1E4B3B548(&v6[v11], a1 + v12, type metadata accessor for RCSService.Business.Suggestion);
  *a1 = v7;
  v14 = v17;
  *(a1 + 24) = v16;
  *(a1 + 8) = v14;
  *(a1 + 40) = v8;
  result = *&v18;
  *(a1 + 48) = v18;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  return result;
}

uint64_t sub_1E4B3AD98(uint64_t a1, uint64_t a2)
{
  v4 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4B3AE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F707365725FLL && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B3AEA8(uint64_t a1)
{
  v2 = sub_1E4B3B4A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B3AEE4(uint64_t a1)
{
  v2 = sub_1E4B3B4A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSSendSuggestionResponseRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF948C8, &qword_1E4C05E90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B3B4A8();
  sub_1E4BF0ACC();
  _s18SuggestionResponseV21CodableRepresentationVMa(0);
  sub_1E4B3B68C(&qword_1ECF948D8, _s18SuggestionResponseV21CodableRepresentationVMa, &unk_1E4C07028);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RCSSendSuggestionResponseRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF948E0, &qword_1E4C05E98);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for RCSSendSuggestionResponseRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B3B4A8();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v12 = v15;
    sub_1E4B3B68C(&qword_1ECF948E8, _s18SuggestionResponseV21CodableRepresentationVMa, &unk_1E4C07000);
    v13 = v17;
    sub_1E4BF087C();
    (*(v16 + 8))(v8, v6);
    sub_1E4B3B548(v13, v11, _s18SuggestionResponseV21CodableRepresentationVMa);
    sub_1E4B3B548(v11, v12, type metadata accessor for RCSSendSuggestionResponseRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B3B330(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF948C8, &qword_1E4C05E90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B3B4A8();
  sub_1E4BF0ACC();
  _s18SuggestionResponseV21CodableRepresentationVMa(0);
  sub_1E4B3B68C(&qword_1ECF948D8, _s18SuggestionResponseV21CodableRepresentationVMa, &unk_1E4C07028);
  sub_1E4BF093C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4B3B4A8()
{
  result = qword_1ECF948D0;
  if (!qword_1ECF948D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF948D0);
  }

  return result;
}

uint64_t type metadata accessor for RCSSendSuggestionResponseRequest(uint64_t a1)
{
  result = qword_1EE2BD958;
  if (!qword_1EE2BD958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4B3B548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B3B5B0(uint64_t a1)
{
  result = sub_1E4B3B68C(&qword_1EE2BD990, type metadata accessor for RCSSendSuggestionResponseRequest, &protocol conformance descriptor for RCSSendSuggestionResponseRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4B3B608(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B3B68C(&qword_1EE2BD998, type metadata accessor for RCSSendSuggestionResponseRequest, &protocol conformance descriptor for RCSSendSuggestionResponseRequest);
  result = sub_1E4B3B68C(&qword_1EE2BD9A0, type metadata accessor for RCSSendSuggestionResponseRequest, &protocol conformance descriptor for RCSSendSuggestionResponseRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4B3B68C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4B3B6FC(uint64_t a1)
{
  result = _s18SuggestionResponseV21CodableRepresentationVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4B3B77C()
{
  result = qword_1ECF948F0;
  if (!qword_1ECF948F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF948F0);
  }

  return result;
}

unint64_t sub_1E4B3B7D4()
{
  result = qword_1ECF948F8;
  if (!qword_1ECF948F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF948F8);
  }

  return result;
}

unint64_t sub_1E4B3B82C()
{
  result = qword_1ECF94900;
  if (!qword_1ECF94900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94900);
  }

  return result;
}

uint64_t sub_1E4B3B880()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1EE2BD8A0);
  v1 = __swift_project_value_buffer(v0, qword_1EE2BD8A0);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_1E4B3B9B4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1E4B3B9E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1E4B3BA10@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1E4B3BAE8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t Messaging.Server.__allocating_init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94908, &qword_1E4C06090);
  v1 = swift_allocObject();
  v2 = sub_1E4B0E634(0xD00000000000001CLL, 0x80000001E4BF1BF0);
  if (!v0)
  {
    v7 = &type metadata for DefaultNotifyProvider;
    v8 = &off_1F5EB8FD8;
    v9 = &type metadata for OSVariantProvider;
    v10 = &off_1F5EB9B50;
    v11 = &type metadata for FeatureFlagProvider;
    v12 = &off_1F5EAD208;
    v13 = &type metadata for TimeProvider;
    v14 = &off_1F5EB9B80;
    v3 = v2;
    sub_1E4B3EBA0(v6, v5);
    swift_allocObject();
    v1 = sub_1E4B40B8C(v3, v5);

    sub_1E4B40DE8(v6);
  }

  return v1;
}

uint64_t sub_1E4B3BC40@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = sub_1E4B3BD10(a1);
    v8 = v7;
    v10 = v9;

    if (!v3)
    {
      *a3 = v6;
      a3[1] = v8;
      a3[2] = v10;
    }
  }

  else
  {
    sub_1E4B41F1C();
    swift_allocError();
    *v12 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E4B3BD10(void *a1)
{
  v23[3] = &type metadata for CoreTelephonyFeatureFlag;
  v23[4] = sub_1E4B3A828();
  v4 = sub_1E4BEFB0C();
  __swift_destroy_boxed_opaque_existential_1(v23);
  if ((v4 & 1) == 0)
  {
    if (qword_1EE2BD898 != -1)
    {
      swift_once();
    }

    v8 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v8, qword_1EE2BD8A0);
    v9 = sub_1E4BEFB5C();
    v10 = sub_1E4BF04BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1E4AD3000, v9, v10, "Rejecting incoming request due to feature being disabled", v11, 2u);
      MEMORY[0x1E6921800](v11, -1, -1);
    }

    sub_1E4B41F1C();
    swift_allocError();
    v13 = 3;
    goto LABEL_11;
  }

  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1E4B35054(*v5, v5[1], v5[2], v5[3]);
  if (!v7)
  {
    sub_1E4B41F1C();
    swift_allocError();
    v13 = 1;
LABEL_11:
    *v12 = v13;
    swift_willThrow();
    return v2;
  }

  v2 = v6;
  sub_1E4B40E90(a1);
  if (v1)
  {
  }

  else
  {
    if (qword_1EE2BD898 != -1)
    {
      swift_once();
    }

    v15 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v15, qword_1EE2BD8A0);

    v16 = sub_1E4BEFB5C();
    v17 = sub_1E4BF04CC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v23[0] = v24;
      *v18 = 136315138;
      sub_1E4B42204();
      v19 = sub_1E4BF025C();
      v21 = sub_1E4B30548(v19, v20, v23);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_1E4AD3000, v16, v17, "Incoming request has entitlements: %s", v18, 0xCu);
      v22 = v24;
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E6921800](v22, -1, -1);
      MEMORY[0x1E6921800](v18, -1, -1);
    }
  }

  return v2;
}

uint64_t sub_1E4B3C028(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E4B3C088(a1);
  }

  return result;
}

void sub_1E4B3C088(unint64_t a1)
{
  if (*(a1 + *(*a1 + 112) + 8))
  {
    v2 = a1;
    v3 = *(v1 + 184);
    MEMORY[0x1EEE9AC00](a1);

    os_unfair_lock_lock(v3 + 20);
    sub_1E4B42044(v27);
    os_unfair_lock_unlock(v3 + 20);

    v4 = v27[0];
    if (qword_1EE2BD898 != -1)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v5 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v5, qword_1EE2BD8A0);
      swift_bridgeObjectRetain_n();

      v6 = sub_1E4BEFB5C();
      v7 = sub_1E4BF04BC();

      v26 = v2;
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v27[0] = v9;
        *v8 = 136315394;
        sub_1E4BEFAFC();
        sub_1E4B420B4(&qword_1ECF93B78, MEMORY[0x1E69695E0]);
        v10 = sub_1E4BF096C();
        v12 = sub_1E4B30548(v10, v11, v27);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2048;
        v13 = *(v4 + 16);

        *(v8 + 14) = v13;

        _os_log_impl(&dword_1E4AD3000, v6, v7, "New incoming connection: %s, flushing pending messages (%ld)", v8, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x1E6921800](v9, -1, -1);
        MEMORY[0x1E6921800](v8, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v14 = *(v4 + 16);
      if (!v14)
      {
        break;
      }

      v2 = 0;
      v15 = v4 + 32;
      while (v2 < *(v4 + 16))
      {
        v16 = sub_1E4B41A48(v15, v27);
        v17 = MEMORY[0x1EEE9AC00](v16);
        v19 = *(v18 + 32);
        MEMORY[0x1EEE9AC00](v17);
        os_unfair_lock_lock(v19 + 24);
        sub_1E4B422DC(&v19[4]);
        ++v2;
        os_unfair_lock_unlock(v19 + 24);
        sub_1E4B41AA0(v27);
        v15 += 56;
        if (v14 == v2)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_15:
      swift_once();
    }

LABEL_10:

    v20 = *(v1 + 192);
    os_unfair_lock_lock((v20 + 32));
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v20 + 24);
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_1E4B13604;
      *(v24 + 24) = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_1E4B13604;
      *(v25 + 24) = v23;
      *(v20 + 16) = sub_1E4B148C8;
      *(v20 + 24) = v25;

      os_unfair_lock_unlock((v20 + 32));

      (*(v24 + 16))(v26);
      sub_1E4AD651C(sub_1E4B13684, v24);
      sub_1E4AD651C(sub_1E4B13684, v24);
    }

    else
    {
      os_unfair_lock_unlock((v20 + 32));
    }
  }
}

uint64_t Messaging.Server.setIncomingMessageValidationHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[2];
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = v5;
  v9 = *(v6 + 32);

  os_unfair_lock_lock(v9 + 24);
  sub_1E4B40E38(&v9[4]);
  os_unfair_lock_unlock(v9 + 24);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Messaging.Server.start()()
{
  if (qword_1EE2BD898 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v1, qword_1EE2BD8A0);
  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "Starting server", v4, 2u);
    MEMORY[0x1E6921800](v4, -1, -1);
  }

  sub_1E4B0E3F4();
  if (!v0)
  {
    sub_1E4B410F8();
  }
}

uint64_t Messaging.Server.setIncomingMessageHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1E4B3C8A0(a1, a2, a3, a4, &unk_1F5EB2120, sub_1E4B41304, sub_1E4B6D168);
}

{
  return sub_1E4B3C8A0(a1, a2, a3, a4, &unk_1F5EB2148, &unk_1E4C060A0, sub_1E4B6D180);
}

{
  return sub_1E4B3C8A0(a1, a2, a3, a4, &unk_1F5EB2170, sub_1E4B422C0, sub_1E4B6D198);
}

{
  return sub_1E4B3C8A0(a1, a2, a3, a4, &unk_1F5EB2198, &unk_1E4C060B0, sub_1E4B6D1B0);
}

uint64_t sub_1E4B3C744(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E4B33678;

  return v6(a1);
}

uint64_t sub_1E4B3C8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void *, uint64_t, uint64_t))
{
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  v14 = *(a4 + 8);

  a7(a6, v13, a3, v14);
}

uint64_t sub_1E4B3C944(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E4B34F84;

  return v6(a1);
}

uint64_t sub_1E4B3CA38(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v12[2] = a2;

  v7 = sub_1E4B3CC18(sub_1E4B420F8, v12, a1);
  v8 = sub_1E4BF01FC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_1E4B41A48(a2, v13);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v7;
  v10 = v13[1];
  *(v9 + 40) = v13[0];
  *(v9 + 56) = v10;
  *(v9 + 72) = v13[2];
  *(v9 + 88) = v14;
  sub_1E4BA8E24(0, 0, v6, &unk_1E4C063E8, v9);
}

uint64_t sub_1E4B3CB9C(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + *(**a1 + 112));
  v4 = v3[1];
  if (!v4)
  {
    return 0;
  }

  if (*v3 == *(a2 + 40) && v4 == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C() & 1;
  }
}

void *sub_1E4B3CC18(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1E4BF061C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x1E6920D00](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1E4BF070C();
          sub_1E4BF073C();
          v5 = v14;
          sub_1E4BF074C();
          v3 = &v18;
          sub_1E4BF071C();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

uint64_t sub_1E4B3CDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E4B3CDF4, 0, 0);
}

uint64_t sub_1E4B3CDF4()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    result = sub_1E4BF061C();
    v0[4] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = v0[2];
        v0[5] = 0;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1E6920D00](0);
        }

        else
        {
          v4 = *(v3 + 32);
        }

        v0[6] = v4;
        v5 = v0[3];
        v6 = v5[3];
        v7 = v5[4];
        v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
        v9 = swift_task_alloc();
        v0[7] = v9;
        v10 = *(v7 + 8);
        *v9 = v0;
        v9[1] = sub_1E4B3CF4C;

        return sub_1E4B8661C(v8, v6, v10);
      }

      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[4] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E4B3CF4C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E4B3D190;
  }

  else
  {
    v2 = sub_1E4B3D060;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4B3D060()
{

  v1 = v0[5] + 1;
  if (v1 == v0[4])
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[5] = v1;
    v4 = v0[2];
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6920D00]();
    }

    else
    {
      v5 = *(v4 + 8 * v1 + 32);
    }

    v0[6] = v5;
    v6 = v0[3];
    v7 = v6[3];
    v8 = v6[4];
    v9 = __swift_project_boxed_opaque_existential_1(v6, v7);
    v10 = swift_task_alloc();
    v0[7] = v10;
    v11 = *(v8 + 8);
    *v10 = v0;
    v10[1] = sub_1E4B3CF4C;

    return sub_1E4B8661C(v9, v7, v11);
  }
}

uint64_t sub_1E4B3D190()
{
  if (qword_1EE2BD898 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v2, qword_1EE2BD8A0);
  v3 = v1;
  v4 = sub_1E4BEFB5C();
  v5 = sub_1E4BF04DC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E4AD3000, v4, v5, "Failed to send pending message to connection: %@", v8, 0xCu);
    sub_1E4AE0AE4(v9, &qword_1ECF93B50, &qword_1E4C05660);
    MEMORY[0x1E6921800](v9, -1, -1);
    MEMORY[0x1E6921800](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[5] + 1;
  if (v12 == v0[4])
  {
    v13 = v0[1];

    return v13();
  }

  else
  {
    v0[5] = v12;
    v15 = v0[2];
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1E6920D00]();
    }

    else
    {
      v16 = *(v15 + 8 * v12 + 32);
    }

    v0[6] = v16;
    v17 = v0[3];
    v18 = v17[3];
    v19 = v17[4];
    v20 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v21 = swift_task_alloc();
    v0[7] = v21;
    v22 = *(v19 + 8);
    *v21 = v0;
    v21[1] = sub_1E4B3CF4C;

    return sub_1E4B8661C(v20, v18, v22);
  }
}

void Messaging.Server.sendMessage<A>(_:matching:options:)()
{
  v1 = *(v0 + 184);
  os_unfair_lock_lock(v1 + 20);
  sub_1E4B3D4DC(&v1[4]);
  os_unfair_lock_unlock(v1 + 20);
  v2 = *(*(v0 + 16) + 32);
  os_unfair_lock_lock(v2 + 24);
  sub_1E4B414B8(&v2[4]);
  os_unfair_lock_unlock(v2 + 24);
}

void sub_1E4B3D4DC(uint64_t a1)
{
  v2 = sub_1E4BEFABC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E4BEFAAC();
  v6 = *(*(a1 + 56) + 16);
  v14 = v5;
  v15 = *a1;
  v7 = sub_1E4B7A760(sub_1E4B41C4C, v13);
  v8 = *(*(a1 + 56) + 16);
  if (v8 < v7)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_1E4B7C6FC(v7, v8);
  a1 = v6 - *(*(a1 + 56) + 16);
  (*(v3 + 8))(v5, v2);
  if (a1 < 1)
  {
    return;
  }

  if (qword_1EE2BD898 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v9, qword_1EE2BD8A0);
  v10 = sub_1E4BEFB5C();
  v11 = sub_1E4BF04BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&dword_1E4AD3000, v10, v11, "Removed %ld expired messages", v12, 0xCu);
    MEMORY[0x1E6921800](v12, -1, -1);
  }
}

uint64_t sub_1E4B3D6E4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = a7;
  v46 = a5;
  v49 = a4;
  v13 = a1;
  v54 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = v14;
  v53 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94930, &unk_1E4C0D790);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v52 = &v46 - v16;
  v56 = MEMORY[0x1E69E7CC0];
  if (v13 >> 62)
  {
LABEL_22:
    v17 = sub_1E4BF061C();
    v55 = v13;
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v13;
    if (v17)
    {
LABEL_3:
      v50 = a6;
      v47 = a8;
      v48 = v9;
      a8 = 0;
      a6 = v13 & 0xC000000000000001;
      v9 = v13 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a6)
        {
          v18 = MEMORY[0x1E6920D00](a8, v13);
          v19 = a8 + 1;
          if (__OFADD__(a8, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (a8 >= *(v9 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v18 = *(v13 + 8 * a8 + 32);

          v19 = a8 + 1;
          if (__OFADD__(a8, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v23 = v56;
            a8 = v47;
            v9 = v48;
            a6 = v50;
            if ((v56 & 0x8000000000000000) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_38;
          }
        }

        v20 = (v18 + *(*v18 + 112));
        v21 = v20[1];
        if (v21 && (*v20 == a2 ? (v22 = v21 == a3) : (v22 = 0), v22 || (sub_1E4BF099C() & 1) != 0))
        {
          sub_1E4BF070C();
          sub_1E4BF073C();
          v13 = v55;
          sub_1E4BF074C();
          sub_1E4BF071C();
        }

        else
        {
        }

        ++a8;
        if (v19 == v17)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_24:
  if ((v23 & 0x4000000000000000) != 0)
  {
LABEL_38:
    if (sub_1E4BF061C())
    {
      goto LABEL_37;
    }
  }

  else if (*(v23 + 16))
  {
    goto LABEL_37;
  }

  if (v49)
  {
    if (qword_1EE2BD898 != -1)
    {
      swift_once();
    }

    v50 = a6;
    v28 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v28, qword_1EE2BD8A0);

    v29 = sub_1E4BEFB5C();
    v30 = sub_1E4BF04BC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = a8;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v56 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1E4B30548(a2, a3, &v56);
      _os_log_impl(&dword_1E4AD3000, v29, v30, "There are no client connections matching %s, pending message", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v34 = v33;
      v13 = v55;
      MEMORY[0x1E6921800](v34, -1, -1);
      v35 = v32;
      a8 = v31;
      MEMORY[0x1E6921800](v35, -1, -1);
    }

    v36 = *(v46 + 184);
    MEMORY[0x1EEE9AC00](v37);
    *(&v46 - 6) = v9;
    *(&v46 - 5) = a8;
    v38 = v50;
    *(&v46 - 4) = v50;
    *(&v46 - 3) = a2;
    *(&v46 - 2) = a3;
    os_unfair_lock_lock(v36 + 20);
    sub_1E4B41A24(&v36[4]);
    os_unfair_lock_unlock(v36 + 20);
    a6 = v38;
  }

  else
  {
    if (qword_1EE2BD898 != -1)
    {
      swift_once();
    }

    v24 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v24, qword_1EE2BD8A0);
    v25 = sub_1E4BEFB5C();
    v26 = sub_1E4BF04CC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1E4AD3000, v25, v26, "Dropping message since there are no client connections", v27, 2u);
      MEMORY[0x1E6921800](v27, -1, -1);
    }
  }

LABEL_37:
  v39 = sub_1E4BF01FC();
  v40 = v52;
  (*(*(v39 - 8) + 56))(v52, 1, 1, v39);
  v42 = v53;
  v41 = v54;
  (*(v54 + 16))(v53, a6, v9);
  v43 = (*(v41 + 80) + 64) & ~*(v41 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  *(v44 + 4) = v9;
  *(v44 + 5) = a8;
  *(v44 + 6) = v13;
  *(v44 + 7) = v23;
  (*(v41 + 32))(&v44[v43], v42, v9);

  sub_1E4BA8E24(0, 0, v40, &unk_1E4C06398, v44);
}

uint64_t sub_1E4B3DC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = sub_1E4BEFABC();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[3] = a5;
  v22[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a2, a5);
  v22[5] = a3;
  v22[6] = a4;
  v16 = *(*(a1 + 56) + 16);
  sub_1E4B41A48(v22, v21);

  sub_1E4BEFAAC();
  v20 = v14;
  v17 = sub_1E4B3EDB4(sub_1E4B41A80);
  sub_1E4B7C998(v16, v16, v17);

  sub_1E4AE0AE4(v21, &qword_1ECF94938, &unk_1E4C063A0);
  sub_1E4B41AA0(v22);
  return (*(v12 + 8))(v14, v23);
}

uint64_t sub_1E4B3DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E4B3DE7C, 0, 0);
}

uint64_t sub_1E4B3DE7C()
{
  v1 = *(v0 + 10);
  v43 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_26:
    v2 = sub_1E4BF061C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = v1 & 0xC000000000000001;
      v5 = v1 & 0xFFFFFFFFFFFFFF8;
      v1 = *(v0 + 10) + 32;
      v0 = "latitude";
      v41 = v5;
      v42 = v4;
      v40 = v1;
      while (1)
      {
        if (v4)
        {
          v6 = MEMORY[0x1E6920D00](v3, *(v38 + 80));
          v7 = __OFADD__(v3++, 1);
          if (v7)
          {
LABEL_23:
            __break(1u);
LABEL_24:
            v15 = v43;
            v0 = v38;
            goto LABEL_28;
          }
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v6 = *(v1 + 8 * v3);

          v7 = __OFADD__(v3++, 1);
          if (v7)
          {
            goto LABEL_23;
          }
        }

        v8 = v6 + *(*v6 + 112);
        if (*(v8 + 8) && (v9 = *(v8 + 16), *(v9 + 16)))
        {
          sub_1E4BF0A6C();

          sub_1E4BEFF4C();
          v10 = sub_1E4BF0A9C();
          v11 = -1 << *(v9 + 32);
          v12 = v10 & ~v11;
          if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
          {
            v13 = ~v11;
            while (*(*(v9 + 48) + v12) != 1)
            {
              v14 = sub_1E4BF099C();

              if (v14)
              {
                goto LABEL_20;
              }

              v12 = (v12 + 1) & v13;
              if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
              {

                v2 = v39;
                goto LABEL_18;
              }
            }

LABEL_20:
            v2 = v39;
            v5 = v41;
            v4 = v42;

            sub_1E4BF070C();
            sub_1E4BF073C();
            sub_1E4BF074C();
            sub_1E4BF071C();
            v1 = v40;
          }

          else
          {

LABEL_18:
            v5 = v41;
            v4 = v42;
            v1 = v40;
          }
        }

        else
        {
        }

        if (v3 == v2)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v44 = *(v0 + 11);

  sub_1E4B40718(v15);
  v16 = sub_1E4B41AD0(v44);

  if ((v16 & 0xC000000000000001) != 0)
  {
    sub_1E4BF060C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
    sub_1E4B14808(&qword_1ECF94940, &qword_1ECF93B58, &qword_1E4C063B0, &unk_1E4C0EE58);
    result = sub_1E4BF027C();
    v16 = *(v0 + 2);
    v18 = *(v0 + 3);
    v19 = *(v0 + 4);
    v20 = *(v0 + 5);
    v21 = *(v0 + 6);
    *(v0 + 16) = v18;
    *(v0 + 17) = v19;
    *(v0 + 15) = v16;
    if (v16 < 0)
    {
      v36 = sub_1E4BF063C();
      if (!v36)
      {
LABEL_46:
        sub_1E4B41C44(*(v0 + 15));
        v37 = *(v0 + 1);

        return v37();
      }

      *(v0 + 9) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
      swift_dynamicCast();
      v30 = *(v0 + 8);
      v26 = v20;
      v29 = v21;
LABEL_40:
      *(v0 + 19) = v26;
      *(v0 + 20) = v29;
      *(v0 + 18) = v30;
      if (v30)
      {
        v31 = *(v0 + 14);
        v32 = swift_task_alloc();
        *(v0 + 21) = v32;
        v33 = *(v31 + 8);
        *v32 = v0;
        v32[1] = sub_1E4B3E3B4;
        v34 = *(v0 + 13);
        v35 = *(v0 + 12);

        return sub_1E4B8661C(v35, v34, v33);
      }

      goto LABEL_46;
    }

    v22 = v19 + 64;
  }

  else
  {
    v20 = 0;
    v23 = -1;
    v24 = -1 << *(v16 + 32);
    v18 = v16 + 56;
    if (-v24 < 64)
    {
      v23 = ~(-1 << -v24);
    }

    v21 = v23 & *(v16 + 56);
    *(v0 + 16) = v18;
    *(v0 + 17) = ~v24;
    *(v0 + 15) = v16;
    v22 = 63 - v24;
  }

  v25 = v21;
  v26 = v20;
  if (v21)
  {
LABEL_39:
    v29 = (v25 - 1) & v25;
    v30 = *(*(v16 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

    goto LABEL_40;
  }

  v27 = v22 >> 6;
  v28 = v20;
  while (1)
  {
    v26 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v26 >= v27)
    {
      goto LABEL_46;
    }

    v25 = *(v18 + 8 * v26);
    ++v28;
    if (v25)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4B3E3B4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1E4B3E69C;
  }

  else
  {
    v2 = sub_1E4B3E4C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4B3E4C8()
{

  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[15];
  if (v4 < 0)
  {
    v10 = sub_1E4BF063C();
    if (!v10)
    {
LABEL_14:
      sub_1E4B41C44(v0[15]);
      v16 = v0[1];

      return v16();
    }

    v0[9] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
    swift_dynamicCast();
    v9 = v0[8];
    v6 = v2;
    v8 = v3;
LABEL_10:
    v0[19] = v6;
    v0[20] = v8;
    v0[18] = v9;
    if (v9)
    {
      v11 = v0[14];
      v12 = swift_task_alloc();
      v0[21] = v12;
      v13 = *(v11 + 8);
      *v12 = v0;
      v12[1] = sub_1E4B3E3B4;
      v15 = v0[12];
      v14 = v0[13];

      return sub_1E4B8661C(v15, v14, v13);
    }

    goto LABEL_14;
  }

  v5 = v0[20];
  v6 = v0[19];
  if (v3)
  {
LABEL_7:
    v8 = (v5 - 1) & v5;
    v9 = *(*(v4 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v5)))));

    goto LABEL_10;
  }

  v7 = v0[19];
  while (1)
  {
    v6 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v6 >= ((v0[17] + 64) >> 6))
    {
      goto LABEL_14;
    }

    v5 = *(v0[16] + 8 * v6);
    ++v7;
    if (v5)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4B3E69C()
{
  v1 = *(v0 + 176);
  *(v0 + 56) = v1;
  v2 = v0 + 56;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94948, &unk_1E4C0EF20);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 184) == 2;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    if (qword_1EE2BD898 != -1)
    {
      swift_once();
    }

    v16 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v16, qword_1EE2BD8A0);
    v17 = sub_1E4BEFB5C();
    v18 = sub_1E4BF04CC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1E4AD3000, v17, v18, "Sent message to connection but client had no handlers", v19, 2u);
      MEMORY[0x1E6921800](v19, -1, -1);
    }

    v20 = *(v0 + 56);
    goto LABEL_14;
  }

  if (qword_1EE2BD898 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v5 = *(v0 + 176);
    v6 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v6, qword_1EE2BD8A0);
    v7 = v5;
    v8 = sub_1E4BEFB5C();
    v9 = sub_1E4BF04DC();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 176);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1E4AD3000, v8, v9, "Failed to send message to connection: %@", v12, 0xCu);
      sub_1E4AE0AE4(v13, &qword_1ECF93B50, &qword_1E4C05660);
      MEMORY[0x1E6921800](v13, -1, -1);
      MEMORY[0x1E6921800](v12, -1, -1);
    }

    else
    {

      v20 = v11;
LABEL_14:
    }

    v21 = *(v0 + 152);
    v22 = *(v0 + 160);
    v23 = *(v0 + 120);
    if (v23 < 0)
    {
      break;
    }

    v24 = *(v0 + 160);
    v2 = *(v0 + 152);
    if (v22)
    {
LABEL_21:
      v26 = (v24 - 1) & v24;
      v27 = *(*(v23 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v24)))));

      goto LABEL_24;
    }

    v25 = *(v0 + 152);
    while (1)
    {
      v2 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v2 >= ((*(v0 + 136) + 64) >> 6))
      {
        goto LABEL_28;
      }

      v24 = *(*(v0 + 128) + 8 * v2);
      ++v25;
      if (v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v28 = sub_1E4BF063C();
  if (!v28)
  {
    goto LABEL_28;
  }

  *(v2 + 16) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
  swift_dynamicCast();
  v27 = *(v2 + 8);
  v2 = v21;
  v26 = v22;
LABEL_24:
  *(v0 + 152) = v2;
  *(v0 + 160) = v26;
  *(v0 + 144) = v27;
  if (v27)
  {
    v29 = *(v0 + 112);
    v30 = swift_task_alloc();
    *(v0 + 168) = v30;
    v31 = *(v29 + 8);
    *v30 = v0;
    v30[1] = sub_1E4B3E3B4;
    v33 = *(v0 + 96);
    v32 = *(v0 + 104);

    return sub_1E4B8661C(v33, v32, v31);
  }

LABEL_28:
  sub_1E4B41C44(*(v0 + 120));
  v35 = *(v0 + 8);

  return v35();
}

void *Messaging.Server.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return v0;
}

uint64_t Messaging.Server.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return MEMORY[0x1EEE6BDC0](v0, 200, 7);
}

uint64_t sub_1E4B3EBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  result = sub_1E4AD651C(v6, v7);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  return result;
}

uint64_t sub_1E4B3EC34(void (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92EB8, &qword_1E4C063F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v13 = MEMORY[0x1E69E7CC0];
  sub_1E4BB0954(0, 1, 0);
  v8 = v13;
  a1(v1);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1E4BB0954((v9 > 1), v10 + 1, 1);
      v8 = v13;
    }

    *(v8 + 16) = v10 + 1;
    sub_1E4AFD6D0(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, &qword_1ECF92EB8, &qword_1E4C063F0);
    return v8;
  }

  return result;
}

uint64_t sub_1E4B3EDB4(void (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F40, &qword_1E4BFDCD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v13 = MEMORY[0x1E69E7CC0];
  sub_1E4BB09B4(0, 1, 0);
  v8 = v13;
  a1(v1);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1E4BB09B4((v9 > 1), v10 + 1, 1);
      v8 = v13;
    }

    *(v8 + 16) = v10 + 1;
    sub_1E4AFD6D0(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, &qword_1ECF92F40, &qword_1E4BFDCD0);
    return v8;
  }

  return result;
}

uint64_t sub_1E4B3EF34(_BYTE *a1, char a2)
{
  v4 = *v2;
  sub_1E4BF0A6C();
  if (a2)
  {
    v5 = 0xD00000000000002BLL;
  }

  else
  {
    v5 = 0xD000000000000029;
  }

  if (a2)
  {
    v6 = "per.carrier-messaging-app";
  }

  else
  {
    v6 = "latitude";
  }

  v7 = v6 | 0x8000000000000000;
  sub_1E4BEFF4C();

  v8 = sub_1E4BF0A9C();
  v9 = -1 << *(v4 + 32);
  v10 = v8 & ~v9;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v4 + 48) + v10) ? 0xD00000000000002BLL : 0xD000000000000029;
      v13 = *(*(v4 + 48) + v10) ? "per.carrier-messaging-app" : "latitude";
      if (v12 == v5 && (v13 | 0x8000000000000000) == v7)
      {
        break;
      }

      v15 = sub_1E4BF099C();

      if (v15)
      {
        goto LABEL_23;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    result = 0;
    v17 = *(*(v4 + 48) + v10);
  }

  else
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v19;
    v17 = a2 & 1;
    sub_1E4B3FBD0(a2 & 1, v10, isUniquelyReferenced_nonNull_native);
    *v19 = v21;
    result = 1;
  }

  *a1 = v17;
  return result;
}

uint64_t sub_1E4B3F0F0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1E4BF062C();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = sub_1E4BF061C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_1E4B3F380(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_1E4B3F858(v18 + 1);
        }

        sub_1E4B3FAEC(v19, v17);

        *v3 = v17;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_1E4BF0A6C();
    sub_1E4BEFAFC();
    sub_1E4B420B4(&qword_1ECF94700, MEMORY[0x1E69695B8]);
    sub_1E4BEFDDC();
    v10 = sub_1E4BF0A9C();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {

        v14 = sub_1E4BEFADC();

        if (v14)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v12);

      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;

      sub_1E4B3FDD0(v16, v12, isUniquelyReferenced_nonNull_native);
      *v2 = v22;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1E4B3F380(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94950, &qword_1E4C063B8);
    v2 = sub_1E4BF066C();
    v15 = v2;
    sub_1E4BF060C();
    for (; sub_1E4BF063C(); ++*(v15 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
      swift_dynamicCast();
      v9 = *(v2 + 16);
      if (*(v2 + 24) <= v9)
      {
        sub_1E4B3F858(v9 + 1);
      }

      v2 = v15;
      sub_1E4BF0A6C();
      sub_1E4BEFAFC();
      sub_1E4B420B4(&qword_1ECF94700, MEMORY[0x1E69695B8]);
      sub_1E4BEFDDC();
      result = sub_1E4BF0A9C();
      v4 = v15 + 56;
      v5 = -1 << *(v15 + 32);
      v6 = result & ~v5;
      v7 = v6 >> 6;
      if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
      {
        v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v10 = 0;
        v11 = (63 - v5) >> 6;
        do
        {
          if (++v7 == v11 && (v10 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v12 = v7 == v11;
          if (v7 == v11)
          {
            v7 = 0;
          }

          v10 |= v12;
          v13 = *(v4 + 8 * v7);
        }

        while (v13 == -1);
        v8 = __clz(__rbit64(~v13)) + (v7 << 6);
      }

      *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
      *(*(v15 + 48) + 8 * v8) = v14;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1E4B3F5C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94970, &qword_1E4C063C8);
  result = sub_1E4BF065C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1E4BF0A6C();
      sub_1E4BEFF4C();

      result = sub_1E4BF0A9C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E4B3F858(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94950, &qword_1E4C063B8);
  result = sub_1E4BF065C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1E4BF0A6C();
      sub_1E4BEFAFC();
      sub_1E4B420B4(&qword_1ECF94700, MEMORY[0x1E69695B8]);
      sub_1E4BEFDDC();
      result = sub_1E4BF0A9C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1E4B3FAEC(uint64_t a1, uint64_t a2)
{
  sub_1E4BF0A6C();
  sub_1E4BEFAFC();
  sub_1E4B420B4(&qword_1ECF94700, MEMORY[0x1E69695B8]);
  sub_1E4BEFDDC();
  sub_1E4BF0A9C();
  result = sub_1E4BF05FC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1E4B3FBD0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1E4B3F5C8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1E4B3FFB4();
      goto LABEL_28;
    }

    sub_1E4B40244(v6 + 1);
  }

  v8 = *v3;
  sub_1E4BF0A6C();
  if (v5)
  {
    v9 = 0xD00000000000002BLL;
  }

  else
  {
    v9 = 0xD000000000000029;
  }

  if (v5)
  {
    v10 = "per.carrier-messaging-app";
  }

  else
  {
    v10 = "latitude";
  }

  v11 = v10 | 0x8000000000000000;
  sub_1E4BEFF4C();

  result = sub_1E4BF0A9C();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v8 + 48) + a2) ? 0xD00000000000002BLL : 0xD000000000000029;
      v15 = *(*(v8 + 48) + a2) ? "per.carrier-messaging-app" : "latitude";
      if (v14 == v9 && (v15 | 0x8000000000000000) == v11)
      {
        goto LABEL_31;
      }

      v17 = sub_1E4BF099C();

      if (v17)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  result = sub_1E4BF09EC();
  __break(1u);
  return result;
}

uint64_t sub_1E4B3FDD0(uint64_t result, unint64_t a2, char a3)
{
  v16 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E4B3F858(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1E4B400F4();
      goto LABEL_12;
    }

    sub_1E4B404A4(v5 + 1);
  }

  v7 = *v3;
  sub_1E4BF0A6C();
  sub_1E4BEFAFC();
  sub_1E4B420B4(&qword_1ECF94700, MEMORY[0x1E69695B8]);
  sub_1E4BEFDDC();
  result = sub_1E4BF0A9C();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);

      v10 = sub_1E4BEFADC();

      if (v10)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v15;
  *(*v15 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v16;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1E4BF09EC();
  __break(1u);
  return result;
}

void *sub_1E4B3FFB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94970, &qword_1E4C063C8);
  v2 = *v0;
  v3 = sub_1E4BF064C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1E4B400F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94950, &qword_1E4C063B8);
  v2 = *v0;
  v3 = sub_1E4BF064C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E4B40244(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94970, &qword_1E4C063C8);
  result = sub_1E4BF065C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1E4BF0A6C();
      sub_1E4BEFF4C();

      result = sub_1E4BF0A9C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E4B404A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94950, &qword_1E4C063B8);
  result = sub_1E4BF065C();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1E4BF0A6C();
      sub_1E4BEFAFC();
      sub_1E4B420B4(&qword_1ECF94700, MEMORY[0x1E69695B8]);

      sub_1E4BEFDDC();
      result = sub_1E4BF0A9C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v25;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E4B40718(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1E4BF061C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1E4BF061C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1E4B40808(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E4B408C4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1E4B40808(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_1E4BF061C();
    }

    result = sub_1E4BF06CC();
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E4B408C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E4BF061C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1E4BF061C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E4B14808(&qword_1ECF94960, &qword_1ECF94958, &qword_1E4C063C0, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94958, &qword_1E4C063C0);
            v9 = sub_1E4B40A74(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1E4B40A74(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E6920D00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1E4B40AF4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4B40AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E4B41A48(a1, a3);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F40, &qword_1E4BFDCD0) + 28);
  v6 = sub_1E4BEFABC();
  return (*(*(v6 - 8) + 16))(a3 + v5, a2, v6);
}

void *sub_1E4B40B8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94978, &qword_1E4C063D0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  v3[24] = v6;
  v3[2] = a1;
  sub_1E4B14334(a2, (v3 + 3));
  sub_1E4B14334(a2 + 40, (v3 + 8));
  sub_1E4B14334(a2 + 80, (v3 + 13));
  sub_1E4B14334(a2 + 120, (v3 + 18));
  sub_1E4B14334((v3 + 18), v15);
  v16 = xmmword_1E4C06080;
  sub_1E4B14334(v15, v17);

  __swift_destroy_boxed_opaque_existential_1(v15);
  *(&v18 + 1) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94980, &qword_1E4C063D8);
  v7 = swift_allocObject();
  *(v7 + 80) = 0;
  v8 = v17[0];
  *(v7 + 16) = v16;
  *(v7 + 32) = v8;
  v9 = v18;
  *(v7 + 48) = v17[1];
  *(v7 + 64) = v9;
  v3[23] = v7;
  v10 = v3[2];
  swift_allocObject();
  swift_weakInit();
  v11 = *(v10 + 32);

  os_unfair_lock_lock(v11 + 24);
  sub_1E4B41F8C(&v11[4]);
  os_unfair_lock_unlock(v11 + 24);

  v12 = v3[2];
  swift_allocObject();
  swift_weakInit();

  v13 = *(v12 + 32);
  os_unfair_lock_lock(v13 + 24);
  sub_1E4B41FEC(&v13[4]);
  os_unfair_lock_unlock(v13 + 24);

  Messaging.Server.setIncomingMessageValidationHandler(_:)(nullsub_1, 0);
  sub_1E4B40DE8(a2);
  return v3;
}

uint64_t sub_1E4B40E38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);

  result = sub_1E4AD651C(v5, v6);
  *(a1 + 64) = v4;
  *(a1 + 72) = v3;
  return result;
}

uint64_t sub_1E4B40E90(void *a1)
{
  v2 = sub_1E4BEFCEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E7CD0];
  sub_1E4BEFF1C();
  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1E4BEFCDC();
    v7 = sub_1E4BF04AC();
    (*(v3 + 8))(v5, v2);
    if (v7)
    {
      sub_1E4B3EF34(&v13, 1);
    }
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEFCDC();
  v8 = sub_1E4BF04AC();
  (*(v3 + 8))(v5, v2);
  if (v8)
  {
    sub_1E4B3EF34(&v14, 0);
  }

  v9 = v15;
  if (!*(v15 + 16))
  {

    sub_1E4B41F1C();
    swift_allocError();
    *v10 = 2;
    swift_willThrow();
  }

  return v9;
}

void sub_1E4B410F8()
{
  if (qword_1EE2BD898 != -1)
  {
    swift_once();
  }

  v0 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v0, qword_1EE2BD8A0);
  v1 = sub_1E4BEFB5C();
  v2 = sub_1E4BF04BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1E4B30548(0xD000000000000023, 0x80000001E4BF1CB0, &v10);
    _os_log_impl(&dword_1E4AD3000, v1, v2, "Posting server ready notification: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x1E6921800](v4, -1, -1);
    MEMORY[0x1E6921800](v3, -1, -1);
  }

  v5 = sub_1E4BEFF1C();
  v6 = notify_post((v5 + 32));

  if (v6)
  {
    oslog = sub_1E4BEFB5C();
    v7 = sub_1E4BF04DC();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v6;
      _os_log_impl(&dword_1E4AD3000, oslog, v7, "Failed to post server ready notification: %u", v8, 8u);
      MEMORY[0x1E6921800](v8, -1, -1);
    }
  }
}

uint64_t sub_1E4B4132C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4B33678;

  return sub_1E4B3C744(a1, v4);
}

uint64_t sub_1E4B413E8(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4B34F84;

  return sub_1E4B3C944(a1, v4);
}

unint64_t sub_1E4B414F0()
{
  result = qword_1ECF94910;
  if (!qword_1ECF94910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94910);
  }

  return result;
}

unint64_t sub_1E4B41548()
{
  result = qword_1ECF94918;
  if (!qword_1ECF94918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94918);
  }

  return result;
}

unint64_t sub_1E4B415A0()
{
  result = qword_1ECF94920;
  if (!qword_1ECF94920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94920);
  }

  return result;
}

unint64_t sub_1E4B415F8()
{
  result = qword_1ECF94928;
  if (!qword_1ECF94928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94928);
  }

  return result;
}

uint64_t _s4CardV9FontStyleVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s4CardV9FontStyleVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1E4B416EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B41734(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1E4B417BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4B41804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4B4187C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1E4B418C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4B41914(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E4B34F84;

  return sub_1E4B3DE54(a1, v7, v8, v9, v10, v1 + v6, v4, v5);
}

uint64_t sub_1E4B41AD0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1E4BF061C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF93B58, &qword_1E4C063B0);
  v5 = sub_1E4B14808(&qword_1ECF94940, &qword_1ECF93B58, &qword_1E4C063B0, &unk_1E4C0EE58);
  result = MEMORY[0x1E69208B0](v3, v4, v5);
  v13 = result;
  if (!v2)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v2)
      {
        v10 = MEMORY[0x1E6920D00](v9, a1);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_15:
          __break(1u);
          return v13;
        }
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v10 = *(a1 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1E4B3F0F0(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }
  }

  v8 = result;
  v7 = sub_1E4BF061C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1E4B41C70(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    sub_1E4B41F1C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return;
  }

  v6 = sub_1E4B40E90((a1 + 40));
  if (v3)
  {
LABEL_10:

    return;
  }

  v7 = v6;
  v18 = a1;
  if (!*(v6 + 16) || (sub_1E4BF0A6C(), sub_1E4BEFF4C(), v8 = sub_1E4BF0A9C(), v9 = -1 << *(v7 + 32), v10 = v8 & ~v9, ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
  {
LABEL_9:

    a3(v18);
    goto LABEL_10;
  }

  v11 = ~v9;
  while (*(*(v7 + 48) + v10) != 1)
  {
    v12 = sub_1E4BF099C();

    if (v12)
    {
      goto LABEL_13;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_13:

  if (qword_1EE2BD898 != -1)
  {
    swift_once();
  }

  v14 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v14, qword_1EE2BD8A0);
  v15 = sub_1E4BEFB5C();
  v16 = sub_1E4BF04CC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1E4AD3000, v15, v16, "Connection has internal entitlement, allowing incoming message", v17, 2u);
    MEMORY[0x1E6921800](v17, -1, -1);
  }
}

unint64_t sub_1E4B41F1C()
{
  result = qword_1ECF94968;
  if (!qword_1ECF94968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94968);
  }

  return result;
}

uint64_t sub_1E4B41F8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  result = sub_1E4AD651C(v5, v6);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1E4B41FEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  result = sub_1E4AD651C(v5, v6);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_1E4B42044@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v5[2] = *(v1 + 16);
  v5[3] = v3;
  result = sub_1E4B76ECC(sub_1E4B421D8, v5);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B420B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E4BEFAFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4B42118(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E4B33678;

  return sub_1E4B3CDD4(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1E4B421D8(uint64_t a1)
{
  if (*(a1 + 40) == *(v1 + 16) && *(a1 + 48) == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

unint64_t sub_1E4B42204()
{
  result = qword_1ECF94988;
  if (!qword_1ECF94988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94988);
  }

  return result;
}

unint64_t sub_1E4B4226C()
{
  result = qword_1ECF94990;
  if (!qword_1ECF94990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94990);
  }

  return result;
}

uint64_t RCSService.FileDownloadRequest.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSService.FileDownloadRequest(0) + 20);
  v4 = sub_1E4BEFA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSService.FileDownloadRequest.fileURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSService.FileDownloadRequest(0) + 20);
  v4 = sub_1E4BEFA6C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RCSService.FileDownloadRequest.destinationFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RCSService.FileDownloadRequest(0) + 24);
  v4 = sub_1E4BEFA6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RCSService.FileDownloadRequest.destinationFileURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RCSService.FileDownloadRequest(0) + 24);
  v4 = sub_1E4BEFA6C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RCSService.FileDownloadRequest.init(cellularServiceID:fileURL:destinationFileURL:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for RCSService.FileDownloadRequest(0);
  v8 = *(v7 + 20);
  v9 = sub_1E4BEFA6C();
  v12 = *(*(v9 - 8) + 32);
  (v12)((v9 - 8), &a4[v8], a2, v9);
  v10 = &a4[*(v7 + 24)];

  return v12(v10, a3, v9);
}

uint64_t RCSService.FileDownloadRequest.Metadata.suggestedFileName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RCSService.FileDownloadRequest.Metadata.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RCSService.FileDownloadRequest.Metadata(0) + 20);

  return sub_1E4B0B8C4(v3, a1);
}

uint64_t RCSService.FileDownloadRequest.Metadata.init(suggestedFileName:contentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for RCSService.FileDownloadRequest.Metadata(0) + 20);

  return sub_1E4AE2138(a3, v5);
}

uint64_t sub_1E4B4282C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E4B42974()
{
  if (!qword_1EE2BD740)
  {
    v0 = sub_1E4BF053C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2BD740);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E4BEFA6C();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *__swift_store_extra_inhabitant_indexTm_0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1E4BEFA6C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4B42B30(uint64_t a1)
{
  result = sub_1E4BEFA6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_13Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1E4B42D4C(uint64_t a1)
{
  sub_1E4B42974();
  if (v1 <= 0x3F)
  {
    sub_1E4AF1BE0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E4B42DD0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF949F0, &qword_1E4C065E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B43BE0();
  sub_1E4BF0ACC();
  v14 = *v3;
  v13 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    _s19FileDownloadRequestV21CodableRepresentationVMa(0);
    v12 = 1;
    sub_1E4BEFA6C();
    sub_1E4B4282C(&qword_1ECF92FF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1E4BF093C();
    v11 = 2;
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E4B42FE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1E4BEFA6C();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A00, &qword_1E4C065F0);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v22 - v9;
  v11 = _s19FileDownloadRequestV21CodableRepresentationVMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B43BE0();
  v32 = v10;
  v14 = v33;
  sub_1E4BF0ABC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = a1;
  v26 = v6;
  v16 = v28;
  v15 = v29;
  v17 = v30;
  v36 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v25 = v13;
  *v13 = v37;
  v35 = 1;
  sub_1E4B4282C(&qword_1ECF93050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E4BF087C();
  v22 = v11;
  v18 = *(v11 + 20);
  v19 = v25;
  v23 = *(v15 + 32);
  v24 = v18;
  v23(&v25[v18], v8, v17);
  v34 = 2;
  v20 = v26;
  sub_1E4BF087C();
  (*(v16 + 8))(v32, v31);
  v23((v19 + *(v22 + 24)), v20, v17);
  sub_1E4B43C34(v19, v27, _s19FileDownloadRequestV21CodableRepresentationVMa);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1E4B43C9C(v19, _s19FileDownloadRequestV21CodableRepresentationVMa);
}

uint64_t sub_1E4B43408(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF949D8, &qword_1E4C065D8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B43B8C();
  sub_1E4BF0ACC();
  v8[15] = 0;
  sub_1E4BF08CC();
  if (!v1)
  {
    _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
    v8[14] = 1;
    sub_1E4BEFB4C();
    sub_1E4AF109C(&qword_1ECF92C08, MEMORY[0x1EEE9A718]);
    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E4B435A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF949E8, &qword_1E4C065E0);
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v16 - v5;
  v7 = _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B43B8C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v7;
  v21 = 0;
  v10 = v19;
  *v9 = sub_1E4BF080C();
  v9[1] = v11;
  v16 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v16 - v13;
  sub_1E4BEFB4C();
  v20 = 1;
  sub_1E4AF109C(&qword_1ECF92C38, MEMORY[0x1EEE9A728]);
  sub_1E4BF082C();
  (*(v4 + 8))(v6, v10);
  sub_1E4AE2138(v14, v9 + *(v17 + 20));
  sub_1E4B43C34(v9, v18, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B43C9C(v9, _s19FileDownloadRequestV8MetadataV21CodableRepresentationVMa);
}

unint64_t sub_1E4B43884()
{
  v1 = 0x4C5255656C6966;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1E4B438E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B43F2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B43908(uint64_t a1)
{
  v2 = sub_1E4B43BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B43944(uint64_t a1)
{
  v2 = sub_1E4B43BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B439B0()
{
  if (*v0)
  {
    return 0x54746E65746E6F63;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4B439F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1CE0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E4BF099C();

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
  return result;
}

uint64_t sub_1E4B43AE4(uint64_t a1)
{
  v2 = sub_1E4B43B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B43B20(uint64_t a1)
{
  v2 = sub_1E4B43B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4B43B8C()
{
  result = qword_1ECF949E0;
  if (!qword_1ECF949E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF949E0);
  }

  return result;
}

unint64_t sub_1E4B43BE0()
{
  result = qword_1ECF949F8;
  if (!qword_1ECF949F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF949F8);
  }

  return result;
}

uint64_t sub_1E4B43C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B43C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4B43D20()
{
  result = qword_1ECF94A08;
  if (!qword_1ECF94A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A08);
  }

  return result;
}

unint64_t sub_1E4B43D78()
{
  result = qword_1ECF94A10;
  if (!qword_1ECF94A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A10);
  }

  return result;
}

unint64_t sub_1E4B43DD0()
{
  result = qword_1ECF94A18;
  if (!qword_1ECF94A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A18);
  }

  return result;
}

unint64_t sub_1E4B43E28()
{
  result = qword_1ECF94A20;
  if (!qword_1ECF94A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A20);
  }

  return result;
}

unint64_t sub_1E4B43E80()
{
  result = qword_1ECF94A28;
  if (!qword_1ECF94A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A28);
  }

  return result;
}

unint64_t sub_1E4B43ED8()
{
  result = qword_1ECF94A30;
  if (!qword_1ECF94A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A30);
  }

  return result;
}

uint64_t sub_1E4B43F2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E4BF1D00 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double RCSSendDispositionRequest.messageID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

double RCSSendDispositionRequest.message.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;

  return result;
}

double RCSSendDispositionRequest.destination.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

double RCSSendDispositionRequest.group.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1E4B440B4(v2, v3, v4, v5);
}

double sub_1E4B440B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1E4B440F8()
{
  v1 = *v0;
  v2 = 0x496567617373656DLL;
  v3 = 0x6567617373656DLL;
  v4 = 0x74616E6974736564;
  if (v1 != 3)
  {
    v4 = 0x70756F7267;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4B441A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B44E7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B441C8(uint64_t a1)
{
  v2 = sub_1E4B44534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B44204(uint64_t a1)
{
  v2 = sub_1E4B44534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSSendDispositionRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A38, &qword_1E4C06820);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v27 = *(v1 + 1);
  v28 = v9;
  v33 = v1[24];
  v10 = *(v1 + 4);
  v25 = *(v1 + 5);
  v26 = v10;
  v11 = *(v1 + 6);
  v23 = *(v1 + 7);
  v24 = v11;
  v12 = *(v1 + 9);
  v19 = *(v1 + 8);
  v20 = v12;
  v13 = *(v1 + 11);
  v21 = *(v1 + 10);
  v22 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B44534();
  sub_1E4BF0ACC();
  LOBYTE(v29) = v8;
  v34 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v14 = v25;
    v15 = v26;
    v16 = v33;
    v17 = v24;
    v29 = v27;
    v30 = v28;
    v34 = 1;
    sub_1E4AE2DEC();

    sub_1E4BF093C();

    LOBYTE(v29) = v16;
    v30 = v15;
    v31 = v14;
    v34 = 2;
    sub_1E4B07B38();

    sub_1E4BF093C();

    v29 = v17;
    v30 = v23;
    v34 = 3;
    sub_1E4AE2E40();

    sub_1E4BF093C();

    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v34 = 4;
    sub_1E4B440B4(v19, v20, v21, v22);
    sub_1E4AE8804();
    sub_1E4BF08EC();
    sub_1E4B44588(v29, v30, v31, v32);
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1E4B44534()
{
  result = qword_1ECF94A40;
  if (!qword_1ECF94A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A40);
  }

  return result;
}

void sub_1E4B44588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t RCSSendDispositionRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A48, &qword_1E4C06828);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B44534();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36) = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v9 = v42;
  LOBYTE(v36) = 1;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  v56 = v9;
  v10 = v42;
  v35 = v43;
  LOBYTE(v36) = 2;
  sub_1E4B07D30();
  sub_1E4BF087C();
  v32 = v10;
  v33 = v42;
  v11 = v43;
  v34 = v44;
  LOBYTE(v36) = 3;
  sub_1E4AE3140();
  sub_1E4BF087C();
  v12 = v11;
  v13 = v43;
  v31 = v42;
  v57 = 4;
  sub_1E4AE88AC();
  sub_1E4BF082C();
  (*(v6 + 8))(v8, v5);
  v29 = *(&v54 + 1);
  v30 = v54;
  v27 = *(&v55 + 1);
  v28 = v55;
  v14 = v56;
  LOBYTE(v36) = v56;
  v15 = v13;
  v26 = v13;
  v16 = v32;
  *(&v36 + 1) = v32;
  v17 = v35;
  *&v37 = v35;
  BYTE8(v37) = v33;
  *&v38 = v12;
  v18 = v34;
  *(&v38 + 1) = v34;
  v19 = v31;
  *&v39 = v31;
  *(&v39 + 1) = v15;
  v40 = v54;
  v41 = v55;
  v20 = v37;
  *a2 = v36;
  a2[1] = v20;
  v21 = v38;
  v22 = v39;
  v23 = v41;
  a2[4] = v40;
  a2[5] = v23;
  a2[2] = v21;
  a2[3] = v22;
  sub_1E4B44A88(&v36, &v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v42) = v14;
  v43 = v16;
  v44 = v17;
  v45 = v33;
  v46 = v12;
  v47 = v18;
  v48 = v19;
  v49 = v26;
  v50 = v30;
  v51 = v29;
  v52 = v28;
  v53 = v27;
  return sub_1E4B44AC0(&v42);
}

unint64_t sub_1E4B44AF0(uint64_t a1)
{
  result = sub_1E4B44B18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B44B18()
{
  result = qword_1EE2BDA08;
  if (!qword_1EE2BDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDA08);
  }

  return result;
}

unint64_t sub_1E4B44B78(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B44BA8();
  result = sub_1E4B44BFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B44BA8()
{
  result = qword_1EE2BDA10;
  if (!qword_1EE2BDA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDA10);
  }

  return result;
}

unint64_t sub_1E4B44BFC()
{
  result = qword_1EE2BDA18;
  if (!qword_1EE2BDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDA18);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21TelephonyMessagingKit9RCSHandleO5GroupVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E4B44CB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1E4B44CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E4B44D78()
{
  result = qword_1ECF94A50;
  if (!qword_1ECF94A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A50);
  }

  return result;
}

unint64_t sub_1E4B44DD0()
{
  result = qword_1ECF94A58;
  if (!qword_1ECF94A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A58);
  }

  return result;
}

unint64_t sub_1E4B44E28()
{
  result = qword_1ECF94A60;
  if (!qword_1ECF94A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A60);
  }

  return result;
}

uint64_t sub_1E4B44E7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t RCSService.SuggestionResponse.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1E4ADD6D8(v2, v3, v4, v5, v6);
}

__n128 RCSService.SuggestionResponse.destination.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_1E4ADD764(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  return result;
}

double RCSService.SuggestionResponse.messageID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

uint64_t RCSService.SuggestionResponse.messageID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

double RCSService.SuggestionResponse.originatingMessageID.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;

  return result;
}

uint64_t RCSService.SuggestionResponse.originatingMessageID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t RCSService.SuggestionResponse.suggestion.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RCSService.SuggestionResponse(0) + 32);

  return sub_1E4B45270(a1, v3);
}

uint64_t sub_1E4B45270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.Suggestion(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RCSService.SuggestionResponse.init(cellularServiceID:destination:messageID:originatingMessageID:suggestion:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(a2 + 16);
  *(a6 + 8) = *a2;
  v8 = *(a2 + 32);
  v9 = *a3;
  v10 = a3[1];
  v11 = *a4;
  v12 = a4[1];
  *a6 = *a1;
  *(a6 + 24) = v7;
  *(a6 + 40) = v8;
  *(a6 + 48) = v9;
  *(a6 + 56) = v10;
  *(a6 + 64) = v11;
  *(a6 + 72) = v12;
  v13 = a6 + *(type metadata accessor for RCSService.SuggestionResponse(0) + 32);

  return sub_1E4B45390(a5, v13);
}

uint64_t sub_1E4B45390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSService.Business.Suggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4B45408(uint64_t a1)
{
  v2 = sub_1E4B45AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B45444(uint64_t a1)
{
  v2 = sub_1E4B45AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B45480(uint64_t a1)
{
  v2 = sub_1E4B45A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B454BC(uint64_t a1)
{
  v2 = sub_1E4B45A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B454F8()
{
  v1 = 0x6E4F65746F6D6572;
  if (*v0 != 1)
  {
    v1 = 0x52724F6568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6E4F6568636163;
  }
}

uint64_t sub_1E4B45568@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B47964(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B45590(uint64_t a1)
{
  v2 = sub_1E4B459EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B455CC(uint64_t a1)
{
  v2 = sub_1E4B459EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B45608(uint64_t a1)
{
  v2 = sub_1E4B45A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B45644(uint64_t a1)
{
  v2 = sub_1E4B45A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.BusinessInformationRequest.CachePolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A68, &qword_1E4C06A60);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A70, &qword_1E4C06A68);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A78, &qword_1E4C06A70);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94A80, &qword_1E4C06A78);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B459EC();
  sub_1E4BF0ACC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1E4B45A94();
      v9 = v21;
      sub_1E4BF08BC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1E4B45A40();
      v9 = v24;
      sub_1E4BF08BC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1E4B45AE8();
    sub_1E4BF08BC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1E4B459EC()
{
  result = qword_1ECF94A88;
  if (!qword_1ECF94A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A88);
  }

  return result;
}

unint64_t sub_1E4B45A40()
{
  result = qword_1ECF94A90;
  if (!qword_1ECF94A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A90);
  }

  return result;
}

unint64_t sub_1E4B45A94()
{
  result = qword_1ECF94A98;
  if (!qword_1ECF94A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94A98);
  }

  return result;
}

unint64_t sub_1E4B45AE8()
{
  result = qword_1ECF94AA0;
  if (!qword_1ECF94AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94AA0);
  }

  return result;
}

uint64_t RCSService.BusinessInformationRequest.CachePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

uint64_t RCSService.BusinessInformationRequest.CachePolicy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94AA8, &qword_1E4C06A80);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94AB0, &qword_1E4C06A88);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94AB8, &qword_1E4C06A90);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94AC0, &unk_1E4C06A98);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E4B459EC();
  v15 = v36;
  sub_1E4BF0ABC();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1E4BF088C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1E4AE0F1C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1E4BF06EC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v24 = &type metadata for RCSService.BusinessInformationRequest.CachePolicy;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1E4B45A94();
          sub_1E4BF07EC();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1E4B45A40();
          v26 = v17;
          sub_1E4BF07EC();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1E4B45AE8();
        sub_1E4BF07EC();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

double RCSService.BusinessInformationRequest.handle.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

uint64_t RCSService.BusinessInformationRequest.handle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

_BYTE *RCSService.BusinessInformationRequest.init(cellularServiceID:handle:cachePolicy:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  return result;
}

unint64_t sub_1E4B46240()
{
  result = qword_1ECF94AC8;
  if (!qword_1ECF94AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94AC8);
  }

  return result;
}

uint64_t sub_1E4B46344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E4B46390()
{
  result = qword_1ECF94AD0;
  if (!qword_1ECF94AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94AD0);
  }

  return result;
}

unint64_t sub_1E4B463E8()
{
  result = qword_1ECF94AD8;
  if (!qword_1ECF94AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94AD8);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B46498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1E4B464E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RCSService.Business.Suggestion(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RCSService.Business.Suggestion(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4B466EC(uint64_t a1)
{
  result = type metadata accessor for RCSService.Business.Suggestion(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4B46780()
{
  result = qword_1ECF94AF0;
  if (!qword_1ECF94AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94AF0);
  }

  return result;
}

uint64_t sub_1E4B467D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94B38, &qword_1E4C07050);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B4784C();
  sub_1E4BF0ACC();
  LOBYTE(v17) = *v3;
  v22 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    v12 = *(v3 + 40);
    v17 = *(v3 + 8);
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = 1;
    sub_1E4ADD6D8(v17, v9, v10, v11, v12);
    sub_1E4ADF95C();
    sub_1E4BF093C();
    sub_1E4ADD764(v17, v18, v19, v20, v21);
    v13 = *(v3 + 56);
    v17 = *(v3 + 48);
    v18 = v13;
    v22 = 2;
    sub_1E4AE2DEC();

    sub_1E4BF093C();

    v14 = *(v3 + 72);
    v17 = *(v3 + 64);
    v18 = v14;
    v22 = 3;

    sub_1E4BF093C();

    _s18SuggestionResponseV21CodableRepresentationVMa(0);
    LOBYTE(v17) = 4;
    type metadata accessor for RCSService.Business.Suggestion(0);
    sub_1E4B46344(&qword_1ECF92AF0, type metadata accessor for RCSService.Business.Suggestion, &protocol conformance descriptor for RCSService.Business.Suggestion);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E4B46AB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = type metadata accessor for RCSService.Business.Suggestion(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94B48, &qword_1E4C07058);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1E4B4784C();
  v31 = v9;
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v14 = v6;
  v15 = v29;
  v16 = v12;
  v39 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  *v12 = v33;
  v39 = 1;
  sub_1E4ADFA7C();
  sub_1E4BF087C();
  v17 = v15;
  v18 = v34;
  v19 = v35;
  v20 = v36;
  v21 = v37;
  v27[1] = v33;
  v27[2] = v36;
  *(v16 + 8) = v33;
  *(v16 + 16) = v18;
  v27[3] = v19;
  *(v16 + 24) = v19;
  *(v16 + 32) = v20;
  v38 = v21;
  *(v16 + 40) = v21;
  v39 = 2;
  sub_1E4AE30EC();
  sub_1E4BF087C();
  v22 = v34;
  *(v16 + 48) = v33;
  *(v16 + 56) = v22;
  v39 = 3;
  v27[0] = 0;
  sub_1E4BF087C();
  v23 = v34;
  *(v16 + 64) = v33;
  *(v16 + 72) = v23;
  LOBYTE(v33) = 4;
  sub_1E4B46344(&qword_1ECF92B18, type metadata accessor for RCSService.Business.Suggestion, &protocol conformance descriptor for RCSService.Business.Suggestion);
  v25 = v30;
  v24 = v31;
  sub_1E4BF087C();
  (*(v17 + 8))(v24, v25);
  sub_1E4B45390(v14, v16 + *(v10 + 32));
  sub_1E4B478A0(v16, v28, _s18SuggestionResponseV21CodableRepresentationVMa);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_1E4B47908(v16);
}

uint64_t sub_1E4B46F24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94B50, &qword_1E4C07060);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  v12[0] = *(v1 + 1);
  v15 = v1[24];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B47A94();
  sub_1E4BF0ACC();
  LOBYTE(v13) = v7;
  v16 = 0;
  sub_1E4ADBE98();
  v9 = v12[1];
  sub_1E4BF093C();
  if (!v9)
  {
    v10 = v15;
    v13 = v12[0];
    v14 = v8;
    v16 = 1;
    sub_1E4AE2E40();

    sub_1E4BF093C();

    LOBYTE(v13) = v10;
    v16 = 2;
    sub_1E4B47AE8();
    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E4B47120@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94B68, &qword_1E4C07068);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B47A94();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v9 = v15;
  v17 = 1;
  sub_1E4AE3140();
  sub_1E4BF087C();
  v10 = v16;
  v14 = v15;
  v17 = 2;
  sub_1E4B47B3C();
  sub_1E4BF087C();
  (*(v6 + 8))(v8, v5);
  v11 = v15;
  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B4735C()
{
  v1 = *v0;
  v2 = 0x74616E6974736564;
  v3 = 0x496567617373656DLL;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x6974736567677573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E4B47414@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B47DC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B4743C(uint64_t a1)
{
  v2 = sub_1E4B4784C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B47478(uint64_t a1)
{
  v2 = sub_1E4B4784C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B474E4(uint64_t a1)
{
  v2 = sub_1E4B47A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B47520(uint64_t a1)
{
  v2 = sub_1E4B47A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4B47590()
{
  result = qword_1ECF94AF8;
  if (!qword_1ECF94AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94AF8);
  }

  return result;
}

unint64_t sub_1E4B475E8()
{
  result = qword_1ECF94B00;
  if (!qword_1ECF94B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B00);
  }

  return result;
}

unint64_t sub_1E4B47640()
{
  result = qword_1ECF94B08;
  if (!qword_1ECF94B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B08);
  }

  return result;
}

unint64_t sub_1E4B47698()
{
  result = qword_1ECF94B10;
  if (!qword_1ECF94B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B10);
  }

  return result;
}

unint64_t sub_1E4B476F0()
{
  result = qword_1ECF94B18;
  if (!qword_1ECF94B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B18);
  }

  return result;
}

unint64_t sub_1E4B47748()
{
  result = qword_1ECF94B20;
  if (!qword_1ECF94B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B20);
  }

  return result;
}

unint64_t sub_1E4B477A0()
{
  result = qword_1ECF94B28;
  if (!qword_1ECF94B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B28);
  }

  return result;
}

unint64_t sub_1E4B477F8()
{
  result = qword_1ECF94B30;
  if (!qword_1ECF94B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B30);
  }

  return result;
}

unint64_t sub_1E4B4784C()
{
  result = qword_1ECF94B40;
  if (!qword_1ECF94B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B40);
  }

  return result;
}

uint64_t sub_1E4B478A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4B47908(uint64_t a1)
{
  v2 = _s18SuggestionResponseV21CodableRepresentationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4B47964(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6E4F6568636163 && a2 == 0xE900000000000079;
  if (v4 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E4F65746F6D6572 && a2 == 0xEA0000000000796CLL || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x52724F6568636163 && a2 == 0xED000065746F6D65)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E4BF099C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1E4B47A94()
{
  result = qword_1ECF94B58;
  if (!qword_1ECF94B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B58);
  }

  return result;
}

unint64_t sub_1E4B47AE8()
{
  result = qword_1ECF94B60;
  if (!qword_1ECF94B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B60);
  }

  return result;
}

unint64_t sub_1E4B47B3C()
{
  result = qword_1ECF94B70;
  if (!qword_1ECF94B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B70);
  }

  return result;
}

unint64_t sub_1E4B47BB4()
{
  result = qword_1ECF94B78;
  if (!qword_1ECF94B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B78);
  }

  return result;
}

unint64_t sub_1E4B47C0C()
{
  result = qword_1ECF94B80;
  if (!qword_1ECF94B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B80);
  }

  return result;
}

unint64_t sub_1E4B47C64()
{
  result = qword_1ECF94B88;
  if (!qword_1ECF94B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B88);
  }

  return result;
}

unint64_t sub_1E4B47CBC()
{
  result = qword_1ECF94B90;
  if (!qword_1ECF94B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B90);
  }

  return result;
}

unint64_t sub_1E4B47D14()
{
  result = qword_1ECF94B98;
  if (!qword_1ECF94B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94B98);
  }

  return result;
}

unint64_t sub_1E4B47D6C()
{
  result = qword_1ECF94BA0;
  if (!qword_1ECF94BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BA0);
  }

  return result;
}

uint64_t sub_1E4B47DC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E4BF1D20 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

_BYTE *CriticalMessageNotification.init(cellularServiceID:messageID:)@<X0>(_BYTE *result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 4) = v3;
  return result;
}

uint64_t sub_1E4B47FE0(uint64_t a1)
{
  v2 = sub_1E4B481F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4801C(uint64_t a1)
{
  v2 = sub_1E4B481F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CriticalMessageNotification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94BA8, &qword_1E4C07280);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B481F8();
  sub_1E4BF0ACC();
  v15 = v8;
  v14 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v12 = v11;
    v13 = 1;
    sub_1E4B4824C();
    sub_1E4BF093C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1E4B481F8()
{
  result = qword_1ECF94BB0;
  if (!qword_1ECF94BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BB0);
  }

  return result;
}

unint64_t sub_1E4B4824C()
{
  result = qword_1ECF94BB8;
  if (!qword_1ECF94BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BB8);
  }

  return result;
}

uint64_t CriticalMessageNotification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94BC0, &qword_1E4C07288);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B481F8();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v15 = 0;
    sub_1E4ADBF38();
    sub_1E4BF087C();
    v9 = v16;
    v14 = 1;
    sub_1E4B48474();
    sub_1E4BF087C();
    (*(v6 + 8))(v8, v5);
    v11 = v13;
    *a2 = v9;
    *(a2 + 4) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4B48474()
{
  result = qword_1ECF94BC8;
  if (!qword_1ECF94BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BC8);
  }

  return result;
}

unint64_t sub_1E4B484C8(uint64_t a1)
{
  result = sub_1E4B484F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4B484F0()
{
  result = qword_1ECF94BD0;
  if (!qword_1ECF94BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BD0);
  }

  return result;
}

unint64_t sub_1E4B48550(uint64_t a1)
{
  *(a1 + 8) = sub_1E4B48580();
  result = sub_1E4B485D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E4B48580()
{
  result = qword_1ECF94BD8;
  if (!qword_1ECF94BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BD8);
  }

  return result;
}

unint64_t sub_1E4B485D4()
{
  result = qword_1ECF94BE0;
  if (!qword_1ECF94BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BE0);
  }

  return result;
}

unint64_t sub_1E4B4867C()
{
  result = qword_1ECF94BE8;
  if (!qword_1ECF94BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BE8);
  }

  return result;
}

unint64_t sub_1E4B486D4()
{
  result = qword_1ECF94BF0;
  if (!qword_1ECF94BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BF0);
  }

  return result;
}

unint64_t sub_1E4B4872C()
{
  result = qword_1ECF94BF8;
  if (!qword_1ECF94BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94BF8);
  }

  return result;
}

uint64_t SandboxExtensionClass.hashValue.getter()
{
  v1 = *v0;
  sub_1E4BF0A6C();
  MEMORY[0x1E69210C0](v1);
  return sub_1E4BF0A9C();
}

char *sub_1E4B4880C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *result;
  *(v4 + 40) = 0;
  *(v4 + 48) = 1;
  v8 = *(a3 + 48);
  if (v7)
  {
    if (*MEMORY[0x1E69E9BB0])
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!*MEMORY[0x1E69E9BA8])
  {
    __break(1u);
    return result;
  }

LABEL_5:

  sub_1E4BEFF7C();
  v18 = a2;
  sub_1E4BEFA5C();
  v9 = *MEMORY[0x1E69E9BE0];
  v10 = sub_1E4BEFF1C();

  v11 = sub_1E4BEFF1C();

  v12 = v8(v10 + 32, v11 + 32, v9);

  if (v12)
  {
    *(v4 + 24) = sub_1E4BEFF7C();
    *(v4 + 32) = v13;
    free(v12);
    v14 = OBJC_IVAR____TtC21TelephonyMessagingKit16SandboxExtension_fileURL;
    v15 = sub_1E4BEFA6C();
    (*(*(v15 - 8) + 32))(v4 + v14, v18, v15);
    *(v4 + 16) = a3;
  }

  else
  {
    sub_1E4B49C60();
    swift_allocError();
    *v16 = 0;
    *(v16 + 4) = 1;
    swift_willThrow();

    v17 = sub_1E4BEFA6C();
    (*(*(v17 - 8) + 8))(v18, v17);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SandboxExtension.consume()()
{
  if (*(v0 + 48) == 1)
  {
    v1 = v0;
    v2 = *(*(v0 + 16) + 16);
    v3 = sub_1E4BEFF1C();

    v4 = v2(v3 + 32);

    if (v4 == -1)
    {
      if (qword_1ECF92430 != -1)
      {
        swift_once();
      }

      v13 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v13, qword_1ECFD4470);
      v14 = sub_1E4BEFB5C();
      v15 = sub_1E4BF04DC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 67109120;
        *(v16 + 4) = MEMORY[0x1E6920390]();
        _os_log_impl(&dword_1E4AD3000, v14, v15, "Failed to consume sandbox extension: %d", v16, 8u);
        MEMORY[0x1E6921800](v16, -1, -1);
      }

      v17 = MEMORY[0x1E6920390]();
      sub_1E4B49C60();
      swift_allocError();
      *v18 = v17;
      *(v18 + 4) = 0;
      swift_willThrow();
    }

    else
    {
      if (qword_1ECF92430 != -1)
      {
        swift_once();
      }

      v5 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v5, qword_1ECFD4470);
      v6 = sub_1E4BEFB5C();
      v7 = sub_1E4BF04BC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1E4AD3000, v6, v7, "Successfully consumed sandbox extension", v8, 2u);
        MEMORY[0x1E6921800](v8, -1, -1);
      }

      *(v1 + 40) = v4;
      *(v1 + 48) = 0;
    }
  }

  else
  {
    if (qword_1ECF92430 != -1)
    {
      swift_once();
    }

    v9 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v9, qword_1ECFD4470);
    v10 = sub_1E4BEFB5C();
    v11 = sub_1E4BF04BC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1E4AD3000, v10, v11, "Trying to consume sandbox extension that is already consumed. ", v12, 2u);
      MEMORY[0x1E6921800](v12, -1, -1);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SandboxExtension.release()()
{
  if (*(v0 + 48))
  {
    if (qword_1ECF92430 != -1)
    {
      swift_once();
    }

    v1 = sub_1E4BEFB7C();
    __swift_project_value_buffer(v1, qword_1ECFD4470);
    v2 = sub_1E4BEFB5C();
    v3 = sub_1E4BF04BC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E4AD3000, v2, v3, "Trying to release sandbox extension that is not consumed.", v4, 2u);
      MEMORY[0x1E6921800](v4, -1, -1);
    }
  }

  else
  {
    v5 = v0;
    v6 = *(v0 + 40);
    v7 = *(*(v0 + 16) + 32);

    LODWORD(v7) = v7(v6);

    if (v7 == sub_1E4BEFD5C())
    {
      if (qword_1ECF92430 != -1)
      {
        swift_once();
      }

      v8 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v8, qword_1ECFD4470);
      v9 = sub_1E4BEFB5C();
      v10 = sub_1E4BF04BC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1E4AD3000, v9, v10, "Successfully released sandbox extension", v11, 2u);
        MEMORY[0x1E6921800](v11, -1, -1);
      }

      *(v5 + 40) = 0;
      *(v5 + 48) = 1;
    }

    else
    {
      if (qword_1ECF92430 != -1)
      {
        swift_once();
      }

      v12 = sub_1E4BEFB7C();
      __swift_project_value_buffer(v12, qword_1ECFD4470);
      v13 = sub_1E4BEFB5C();
      v14 = sub_1E4BF04DC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67109120;
        *(v15 + 4) = MEMORY[0x1E6920390]();
        _os_log_impl(&dword_1E4AD3000, v13, v14, "Failed to release sandbox extension: %d", v15, 8u);
        MEMORY[0x1E6921800](v15, -1, -1);
      }

      v16 = MEMORY[0x1E6920390]();
      sub_1E4B49C60();
      swift_allocError();
      *v17 = v16;
      *(v17 + 4) = 0;
      swift_willThrow();
    }
  }
}

void SandboxExtension.withResource<A>(_:)(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  SandboxExtension.consume()();
  if (!v7)
  {
    a1(v3 + OBJC_IVAR____TtC21TelephonyMessagingKit16SandboxExtension_fileURL);
    SandboxExtension.release()();
    if (v8)
    {
      v9 = v8;
      (*(*(a2 - 8) + 8))(a3, a2);
      SandboxExtension.release()();
      if (v10)
      {
      }

      else
      {
        swift_willThrow();
      }
    }
  }
}

uint64_t SandboxExtension.withResource<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E4B49160, 0, 0);
}

uint64_t sub_1E4B49160()
{
  SandboxExtension.consume()();
  if (v1)
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[6];
    v5 = OBJC_IVAR____TtC21TelephonyMessagingKit16SandboxExtension_fileURL;
    v8 = (v0[3] + *v0[3]);
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_1E4B492B4;
    v7 = v0[2];

    return v8(v7, v4 + v5);
  }
}

uint64_t sub_1E4B492B4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E4B494A8;
  }

  else
  {
    v2 = sub_1E4B493C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E4B493C8()
{
  SandboxExtension.release()();
  if (v1)
  {
    v2 = v1;
    (*(*(v0[5] - 8) + 8))(v0[2]);
    SandboxExtension.release()();
    if (v3)
    {
    }

    else
    {
      swift_willThrow();
    }

    v4 = v0[1];
  }

  else
  {
    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_1E4B494A8()
{
  v1 = *(v0 + 64);
  SandboxExtension.release()();
  if (v2)
  {
  }

  else
  {
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t SandboxExtension.deinit()
{

  v1 = OBJC_IVAR____TtC21TelephonyMessagingKit16SandboxExtension_fileURL;
  v2 = sub_1E4BEFA6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SandboxExtension.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC21TelephonyMessagingKit16SandboxExtension_fileURL;
  v2 = sub_1E4BEFA6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E4B49654()
{

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1E4B4969C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4C5255656C6966;
  }

  else
  {
    v3 = 0x6E656B6F74;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x4C5255656C6966;
  }

  else
  {
    v5 = 0x6E656B6F74;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
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
    v8 = sub_1E4BF099C();
  }

  return v8 & 1;
}

uint64_t sub_1E4B49740()
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B497C0(uint64_t a1)
{
  sub_1E4BEFF4C();
}

uint64_t sub_1E4B4982C(uint64_t a1)
{
  sub_1E4BF0A6C();
  sub_1E4BEFF4C();

  return sub_1E4BF0A9C();
}

uint64_t sub_1E4B498A8@<X0>(char *a2@<X8>)
{
  v3 = sub_1E4BF07DC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1E4B49908(uint64_t *a1@<X8>)
{
  v2 = 0x6E656B6F74;
  if (*v1)
  {
    v2 = 0x4C5255656C6966;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1E4B49944()
{
  if (*v0)
  {
    return 0x4C5255656C6966;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_1E4B4997C@<X0>(char *a3@<X8>)
{
  v4 = sub_1E4BF07DC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1E4B499E0(uint64_t a1)
{
  v2 = sub_1E4B49FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B49A1C(uint64_t a1)
{
  v2 = sub_1E4B49FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SandboxExtension.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C10, &qword_1E4C07478);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B49FE0();
  sub_1E4BF0ACC();
  v8[15] = 0;
  sub_1E4BF08FC();
  if (!v1)
  {
    v8[14] = 1;
    sub_1E4BEFA6C();
    sub_1E4B4A454(&qword_1ECF92FF0, MEMORY[0x1E6968FB8]);
    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v6, v3);
}

void *sub_1E4B49C10@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E4B49CB4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E4B49C60()
{
  result = qword_1ECF94C00;
  if (!qword_1ECF94C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C00);
  }

  return result;
}

void *sub_1E4B49CB4(void *a1)
{
  v3 = sub_1E4BEFA6C();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C50, &qword_1E4C077A8);
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B49FE0();
  sub_1E4BF0ABC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v20 = a1;
    v10 = v6;
    v24 = 0;
    v11 = v22;
    v12 = sub_1E4BF083C();
    v14 = v13;
    v19 = v12;
    v23 = 1;
    sub_1E4B4A454(&qword_1ECF93050, MEMORY[0x1E6968FD0]);
    sub_1E4BF087C();
    (*(v10 + 8))(v8, v11);
    type metadata accessor for SandboxExtension.Context();
    v16 = v14;
    v17 = swift_allocObject();
    v17[2] = j__sandbox_extension_consume;
    v17[3] = 0;
    v17[4] = j__sandbox_extension_release;
    v17[5] = 0;
    v17[6] = j__sandbox_extension_issue_file;
    v17[7] = 0;
    type metadata accessor for SandboxExtension(0);
    v9 = swift_allocObject();
    *(v9 + 48) = 1;
    v18 = v19;
    *(v9 + 16) = v17;
    *(v9 + 24) = v18;
    *(v9 + 32) = v16;
    *(v9 + 40) = 0;
    (*(v21 + 32))(v9 + OBJC_IVAR____TtC21TelephonyMessagingKit16SandboxExtension_fileURL, v5, v3);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return v9;
}

unint64_t sub_1E4B49FE0()
{
  result = qword_1ECF94C18;
  if (!qword_1ECF94C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C18);
  }

  return result;
}

unint64_t sub_1E4B4A038()
{
  result = qword_1ECF94C20;
  if (!qword_1ECF94C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C20);
  }

  return result;
}

uint64_t type metadata accessor for SandboxExtension(uint64_t a1)
{
  result = qword_1ECF94C28;
  if (!qword_1ECF94C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4B4A0F0(uint64_t a1)
{
  result = sub_1E4BEFA6C();
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtension.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SandboxExtension.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1E4B4A244(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4B4A260(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtensionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SandboxExtensionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1E4B4A300(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4B4A31C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_1E4B4A350()
{
  result = qword_1ECF94C38;
  if (!qword_1ECF94C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C38);
  }

  return result;
}

unint64_t sub_1E4B4A3A8()
{
  result = qword_1ECF94C40;
  if (!qword_1ECF94C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C40);
  }

  return result;
}

unint64_t sub_1E4B4A400()
{
  result = qword_1ECF94C48;
  if (!qword_1ECF94C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C48);
  }

  return result;
}

uint64_t sub_1E4B4A454(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E4BEFA6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4B4A49C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t RCSService.Business.PostbackData.body.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RCSService.Business.PostbackData.init(body:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static RCSService.Business.PostbackData.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E4BF099C();
  }
}

uint64_t sub_1E4B4A55C(uint64_t a1)
{
  v2 = sub_1E4B4A710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4A598(uint64_t a1)
{
  v2 = sub_1E4B4A710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.PostbackData.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C58, &qword_1E4C077B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B4A710();
  sub_1E4BF0ACC();
  sub_1E4BF08FC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1E4B4A710()
{
  result = qword_1ECF94C60;
  if (!qword_1ECF94C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF94C60);
  }

  return result;
}

uint64_t RCSService.Business.PostbackData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C68, &qword_1E4C077B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B4A710();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v9 = sub_1E4BF083C();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B4A8F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C58, &qword_1E4C077B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B4A710();
  sub_1E4BF0ACC();
  sub_1E4BF08FC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RCSService.Business.SuggestedReply.displayText.getter()
{
  v1 = *v0;

  return v1;
}

double RCSService.Business.SuggestedReply.postbackData.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

__n128 RCSService.Business.SuggestedReply.init(displayText:postbackData:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  return result;
}

uint64_t sub_1E4B4AA7C()
{
  if (*v0)
  {
    return 0x6B63616274736F70;
  }

  else
  {
    return 0x5479616C70736964;
  }
}

uint64_t sub_1E4B4AAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEC00000061746144)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4B4ABAC(uint64_t a1)
{
  v2 = sub_1E4B5AED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4ABE8(uint64_t a1)
{
  v2 = sub_1E4B5AED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.SuggestedReply.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C70, &qword_1E4C077C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 24);
  v11 = *(v1 + 16);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5AED8();
  sub_1E4BF0ACC();
  LOBYTE(v14) = 0;
  v8 = v13;
  sub_1E4BF08FC();
  if (!v8)
  {
    v14 = v11;
    v15 = v12;
    v16 = 1;
    sub_1E4B5AF2C();

    sub_1E4BF08EC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RCSService.Business.SuggestedReply.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C88, &qword_1E4C077C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5AED8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v16[0]) = 0;
  v9 = sub_1E4BF083C();
  v11 = v10;
  v12 = v9;
  v17 = 1;
  sub_1E4B5AF80();
  sub_1E4BF082C();
  (*(v6 + 8))(v8, v5);
  v13 = v16[0];
  v14 = v16[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4B4B020()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x614C6D756964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656772616CLL;
  }
}

uint64_t sub_1E4B4B07C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E4B640EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E4B4B0A4(uint64_t a1)
{
  v2 = sub_1E4B5AFD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4B0E0(uint64_t a1)
{
  v2 = sub_1E4B5AFD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4B11C(uint64_t a1)
{
  v2 = sub_1E4B5B0D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4B158(uint64_t a1)
{
  v2 = sub_1E4B5B0D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4B194(uint64_t a1)
{
  v2 = sub_1E4B5B07C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4B1D0(uint64_t a1)
{
  v2 = sub_1E4B5B07C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4B20C(uint64_t a1)
{
  v2 = sub_1E4B5B028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4B248(uint64_t a1)
{
  v2 = sub_1E4B5B028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.OpenURLAction.Detent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94C98, &qword_1E4C077D0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CA0, &qword_1E4C077D8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CA8, &qword_1E4C077E0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CB0, &qword_1E4C077E8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5AFD4();
  sub_1E4BF0ACC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1E4B5B07C();
      v9 = v21;
      sub_1E4BF08BC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1E4B5B028();
      v9 = v24;
      sub_1E4BF08BC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1E4B5B0D0();
    sub_1E4BF08BC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t RCSService.Business.OpenURLAction.Detent.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CD8, &qword_1E4C077F0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CE0, &qword_1E4C077F8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CE8, &qword_1E4C07800);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CF0, &unk_1E4C07808);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E4B5AFD4();
  v15 = v36;
  sub_1E4BF0ABC();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1E4BF088C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1E4AE0F1C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1E4BF06EC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v24 = &type metadata for RCSService.Business.OpenURLAction.Detent;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1E4B5B07C();
          sub_1E4BF07EC();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1E4B5B028();
          v26 = v17;
          sub_1E4BF07EC();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1E4B5B0D0();
        sub_1E4BF07EC();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

BOOL static RCSService.Business.OpenURLAction.Target.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_1E4B4BBFC()
{
  if (*v0)
  {
    return 0x7070416E69;
  }

  else
  {
    return 0x42746C7561666564;
  }
}

uint64_t sub_1E4B4BC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x42746C7561666564 && a2 == 0xEE00726573776F72;
  if (v6 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7070416E69 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4B4BD20(uint64_t a1)
{
  v2 = sub_1E4B5B124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4BD5C(uint64_t a1)
{
  v2 = sub_1E4B5B124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4BD98(uint64_t a1)
{
  v2 = sub_1E4B5B220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4BDD4(uint64_t a1)
{
  v2 = sub_1E4B5B220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4B4BE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746564 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4B4BEA8(uint64_t a1)
{
  v2 = sub_1E4B5B178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4BEE4(uint64_t a1)
{
  v2 = sub_1E4B5B178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.OpenURLAction.Target.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94CF8, &qword_1E4C07818);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D00, &qword_1E4C07820);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D08, &qword_1E4C07828);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5B124();
  sub_1E4BF0ACC();
  if (v12 == 3)
  {
    v21 = 0;
    sub_1E4B5B220();
    sub_1E4BF08BC();
    (*(v16 + 8))(v7, v17);
  }

  else
  {
    v23 = 1;
    sub_1E4B5B178();
    v14 = v18;
    sub_1E4BF08BC();
    v22 = v12;
    sub_1E4B5B1CC();
    v15 = v20;
    sub_1E4BF093C();
    (*(v19 + 8))(v14, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t RCSService.Business.OpenURLAction.Target.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D30, &qword_1E4C07830);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D38, &qword_1E4C07838);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D40, &qword_1E4C07840);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E4B5B124();
  v15 = v36;
  sub_1E4BF0ABC();
  if (!v15)
  {
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1E4BF088C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1E4AE0F10();
    if (v20 == 2 || v40 != v41 >> 1)
    {
      v24 = sub_1E4BF06EC();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540);
      *v26 = &type metadata for RCSService.Business.OpenURLAction.Target;
      sub_1E4BF07FC();
      sub_1E4BF06DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v20)
      {
        v42 = 1;
        sub_1E4B5B178();
        v21 = v13;
        v22 = v6;
        sub_1E4BF07EC();
        v23 = v36;
        sub_1E4B5B274();
        v29 = v22;
        v30 = v32;
        sub_1E4BF087C();
        (*(v33 + 8))(v29, v30);
        (*(v23 + 8))(v21, v10);
        swift_unknownObjectRelease();
        v31 = v42;
      }

      else
      {
        v42 = 0;
        sub_1E4B5B220();
        sub_1E4BF07EC();
        v28 = v36;
        (*(v17 + 8))(v9, v7);
        (*(v28 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v31 = 3;
      }

      *v16 = v31;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

BOOL sub_1E4B4C728(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t RCSService.Business.OpenURLAction.target.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RCSService.Business.OpenURLAction(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t RCSService.Business.OpenURLAction.init(url:target:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1E4BEFA6C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for RCSService.Business.OpenURLAction(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t static RCSService.Business.OpenURLAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1E4BEFA4C())
  {
    v4 = *(type metadata accessor for RCSService.Business.OpenURLAction(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5 == 3)
    {
      if (v6 == 3)
      {
        return 1;
      }
    }

    else if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1E4B4C890()
{
  if (*v0)
  {
    return 0x746567726174;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1E4B4C8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E4BF099C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E4BF099C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E4B4C998(uint64_t a1)
{
  v2 = sub_1E4B5B2E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4B4C9D4(uint64_t a1)
{
  v2 = sub_1E4B5B2E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.Business.OpenURLAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D50, &qword_1E4C07848);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5B2E8();
  sub_1E4BF0ACC();
  v10[15] = 0;
  sub_1E4BEFA6C();
  sub_1E4B5B390(&qword_1ECF92FF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1E4BF093C();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for RCSService.Business.OpenURLAction(0) + 20));
    v10[13] = 1;
    sub_1E4B5B33C();
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t RCSService.Business.OpenURLAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_1E4BEFA6C();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF94D68, &unk_1E4C07850);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for RCSService.Business.OpenURLAction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4B5B2E8();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_1E4B5B390(&qword_1ECF93050, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v15 = v27;
  v16 = v25;
  sub_1E4BF087C();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_1E4B5B3D8();
  sub_1E4BF087C();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v29;
  sub_1E4B5D6D4(v18, v23, type metadata accessor for RCSService.Business.OpenURLAction);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4B5D73C(v18, type metadata accessor for RCSService.Business.OpenURLAction);
}

uint64_t sub_1E4B4CF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1E4BEFA4C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 3)
  {
    if (v8 != 3)
    {
      return 0;
    }
  }

  else if (v7 != v8)
  {
    return 0;
  }

  return 1;
}