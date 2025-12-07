uint64_t sub_24F46A1F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsHeader(0);

  sub_24F928EA8();
  v19 = type metadata accessor for GameDetailsHeaderComponent(0);
  v20 = sub_24F47DF2C(&qword_27F21FF88, type metadata accessor for GameDetailsHeaderComponent, &unk_24F962528);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for GameDetailsHeaderComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F473218(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46A41C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsDeveloper(0);

  sub_24F928EA8();
  v12 = &type metadata for GameDetailsDeveloperComponent;
  v13 = sub_24F156B98();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for GameDetailsDeveloperComponent, sub_24F156B98, sub_24F156B98);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46A588(char a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(__n128))
{
  v12 = sub_24F928E98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v14);

  v17 = sub_24F928EA8();
  v24 = a4;
  v25 = a5(v17);
  LOBYTE(v23) = a1;
  sub_24E612C80(&v23, v22);
  LOBYTE(a5) = swift_isUniquelyReferenced_nonNull_native();
  v21 = a2;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_24F4734E4(*v18, v16, a5, &v21, a4, a6, a6);
  (*(v13 + 8))(v16, v12);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v21;
}

uint64_t sub_24F46A700(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameDetailsAnnotationCard(0);

  sub_24F928EA8();
  v21 = &type metadata for GameDetailsAnnotationCardComponent;
  v22 = sub_24EA576D8();
  *&v20 = a1;
  a2 &= 1u;
  BYTE8(v20) = a2;
  sub_24E612C80(&v20, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for GameDetailsAnnotationCardComponent, sub_24EA576D8, sub_24EA576D8);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F46A928(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendRequestsPrivacyToggle(0);

  sub_24F928EA8();
  v12 = &type metadata for FriendRequestsPrivacyToggleComponent;
  v13 = sub_24E65BD28();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FriendRequestsPrivacyToggleComponent, sub_24E65BD28, sub_24E65BD28);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46AA94(uint64_t a1, double a2, double a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendRequestOverlayLockup(0);

  sub_24F928EA8();
  v17 = &type metadata for FriendRequestOverlayLockupComponent;
  v18 = sub_24E9373D0();
  *&v16 = a2;
  *(&v16 + 1) = a3;
  sub_24E612C80(&v16, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = a1;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  sub_24F4736D8(v9, isUniquelyReferenced_nonNull_native, &v14, *v11, v11[1]);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v14;
}

uint64_t sub_24F46ABEC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendRequestOverlayHeader(0);

  sub_24F928EA8();
  v12 = &type metadata for FriendRequestOverlayHeaderComponent;
  v13 = sub_24EF7CA54();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FriendRequestOverlayHeaderComponent, sub_24EF7CA54, sub_24EF7CA54);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46AD58(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendRequestOverlayComponentGrid(0);

  sub_24F928EA8();
  v12 = &type metadata for FriendRequestOverlayComponentGridComponent;
  v13 = sub_24EDBC720();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FriendRequestOverlayComponentGridComponent, sub_24EDBC720, sub_24EDBC720);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46AEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendRequestLockup(0);

  sub_24F928EA8();
  v19 = type metadata accessor for FriendRequestLockupComponent(0);
  v20 = sub_24F47DF2C(&qword_27F21CBF0, type metadata accessor for FriendRequestLockupComponent, &unk_24F9573A8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for FriendRequestLockupComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F4738C8(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46B0F0(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendSuggestionLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for FriendSuggestionLockupComponent;
  v13 = sub_24F47D73C();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FriendSuggestionLockupComponent, sub_24F47D73C, sub_24F47D73C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46B25C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendsPlayingHeaderItem(0);

  sub_24F928EA8();
  v12 = &type metadata for FriendsPlayingHeaderItemComponent;
  v13 = sub_24F47D790();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FriendsPlayingHeaderItemComponent, sub_24F47D790, sub_24F47D790);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46B3C8(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FriendInviteButton(0);

  sub_24F928EA8();
  v12 = &type metadata for FriendInviteButtonComponent;
  v13 = sub_24F47D7E4();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for FriendInviteButtonComponent, sub_24F47D7E4, sub_24F47D7E4);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46B534(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DashboardHero(0);

  sub_24F928EA8();
  v12 = &type metadata for DashboardHeroComponent;
  v13 = sub_24F47D838();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for DashboardHeroComponent, sub_24F47D838, sub_24F47D838);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46B6A0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EmptyState(0);

  sub_24F928EA8();
  v21 = &type metadata for EmptyStateComponent;
  v22 = sub_24E78AE10();
  *&v20 = a1;
  a2 &= 1u;
  BYTE8(v20) = a2;
  sub_24E612C80(&v20, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for EmptyStateComponent, sub_24E78AE10, sub_24E78AE10);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F46B8C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContinuePlayingIcon(0);

  sub_24F928EA8();
  v25 = &type metadata for ContinuePlayingIconComponent;
  v26 = sub_24F4637F4();
  v14 = swift_allocObject();
  *&v24 = v14;
  *(v14 + 16) = a4;
  *(v14 + 24) = a1;
  *(v14 + 32) = a5;
  *(v14 + 40) = a2;
  sub_24E612C80(&v24, v23);

  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v22 = a3;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, v23[3]);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  sub_24F473B94(*(v18 + 1), *(v18 + 3), v13, a1, &v22, *v18, *(v18 + 2));
  (*(v11 + 8))(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v22;
}

uint64_t sub_24F46BAFC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContactLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for ContactLockupComponent;
  v13 = sub_24ECEF8AC();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ContactLockupComponent, sub_24ECEF8AC, sub_24ECEF8AC);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46BC68(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ComingSoonPlatter(0);

  sub_24F928EA8();
  v12 = &type metadata for ComingSoonPlatterComponent;
  v13 = sub_24F4204A4();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ComingSoonPlatterComponent, sub_24F4204A4, sub_24F4204A4);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46BDD4(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClampingComponentGrid(0);

  sub_24F928EA8();
  v12 = &type metadata for ClampingComponentGridComponent;
  v13 = sub_24F47D88C();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ClampingComponentGridComponent, sub_24F47D88C, sub_24F47D88C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46BF40(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesLeaderboardSuggestionLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for ChallengesLeaderboardSuggestionLockupComponent;
  v13 = sub_24F47D8E0();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesLeaderboardSuggestionLockupComponent, sub_24F47D8E0, sub_24F47D8E0);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46C0AC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesHistoryPlayerLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for ChallengesHistoryPlayerLockupComponent;
  v13 = sub_24F47D934();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesHistoryPlayerLockupComponent, sub_24F47D934, sub_24F47D934);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46C218(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesHistoryHero(0);

  sub_24F928EA8();
  v12 = &type metadata for ChallengesHistoryHeroComponent;
  v13 = sub_24F47D988();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesHistoryHeroComponent, sub_24F47D988, sub_24F47D988);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46C384(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesHistoryGameLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for ChallengesHistoryGameLockupComponent;
  v13 = sub_24F47D9DC();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesHistoryGameLockupComponent, sub_24F47D9DC, sub_24F47D9DC);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46C4F0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesHistoryChallengeLockup(0);

  sub_24F928EA8();
  v20 = &type metadata for ChallengesHistoryChallengeLockupComponent;
  v21 = sub_24F47DA30();
  *&v19 = a1;
  *(&v19 + 1) = a3;
  sub_24E612C80(&v19, v18);

  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v17 = a2;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v18, v18[3]);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  sub_24F473E50(*v13, v9, a1, &v17, v13[1]);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v17;
}

uint64_t sub_24F46C6E4(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengeInviteLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for ChallengeInviteLockupComponent;
  v13 = sub_24F47DA84();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengeInviteLockupComponent, sub_24F47DA84, sub_24F47DA84);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46C850(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesHubHeaderButton(0);

  sub_24F928EA8();
  v12 = &type metadata for ChallengesHubHeaderButtonComponent;
  v13 = sub_24F47DAD8();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesHubHeaderButtonComponent, sub_24F47DAD8, sub_24F47DAD8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46C9BC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesGameSuggestionLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for ChallengesGameSuggestionLockupComponent;
  v13 = sub_24E6DA0E0();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesGameSuggestionLockupComponent, sub_24E6DA0E0, sub_24E6DA0E0);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46CB28(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesFriendComparisonHeader(0);

  sub_24F928EA8();
  v12 = &type metadata for ChallengesFriendComparisonHeaderComponent;
  v13 = sub_24F47DB2C();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengesFriendComparisonHeaderComponent, sub_24F47DB2C, sub_24F47DB2C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46CC94(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_24F928E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengesFriendComparisonChart(0);

  sub_24F928EA8();
  v21 = &type metadata for ChallengesFriendComparisonChartComponent;
  v22 = sub_24F47DB80();
  *&v20 = a1;
  a2 &= 1u;
  BYTE8(v20) = a2;
  sub_24E612C80(&v20, v19);
  sub_24E62AB1C(a1, a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = a3;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  sub_24F471698(*v14, v14[8], v9, isUniquelyReferenced_nonNull_native, &v18, &type metadata for ChallengesFriendComparisonChartComponent, sub_24F47DB80, sub_24F47DB80);
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v18;
}

uint64_t sub_24F46CEBC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengeDetailPlayerLockup(0);

  sub_24F928EA8();
  v23 = &type metadata for ChallengeDetailPlayerLockupComponent;
  v24 = sub_24F47DBD4();
  v8 = swift_allocObject();
  *&v22 = v8;
  v27 = *a1;
  v28 = *(a1 + 8);
  v10 = *(a1 + 2);
  v25[0] = *(a1 + 1);
  v9 = v25[0];
  v25[1] = v10;
  v26 = *(a1 + 48);
  v11 = v26;
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = v10;
  *(v8 + 64) = v11;
  sub_24E612C80(&v22, v21);
  sub_24E60169C(&v27, v29, &qword_27F218208, &qword_24F94E940);
  sub_24E60169C(v25, v29, &qword_27F2445E0, &qword_24F9FB4F0);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v20 = a2;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v13);
  v17 = *(v15 + 1);
  v29[0] = *v15;
  v29[1] = v17;
  v29[2] = *(v15 + 2);
  v30 = v15[48];
  sub_24F4740DC(v29, v7, a1, &v20);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v20;
}

uint64_t sub_24F46D13C(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengeDetailHiddenInvitedPlayerLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for ChallengeDetailHiddenInvitedPlayerLockupComponent;
  v13 = sub_24E9CE000();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengeDetailHiddenInvitedPlayerLockupComponent, sub_24E9CE000, sub_24E9CE000);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46D2A8(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengeDetailHero(0);

  sub_24F928EA8();
  v12 = &type metadata for ChallengeDetailHeroComponent;
  v13 = sub_24F47DC74();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengeDetailHeroComponent, sub_24F47DC74, sub_24F47DC74);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46D414(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChallengeDetailDescription(0);

  sub_24F928EA8();
  v12 = &type metadata for ChallengeDetailDescriptionComponent;
  v13 = sub_24F47DCC8();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ChallengeDetailDescriptionComponent, sub_24F47DCC8, sub_24F47DCC8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46D580(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CenteredCapsuleButton(0);

  sub_24F928EA8();
  v12 = &type metadata for CenteredCapsuleButtonComponent;
  v13 = sub_24EAD8D5C();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for CenteredCapsuleButtonComponent, sub_24EAD8D5C, sub_24EAD8D5C);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46D6EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v12 = sub_24F928E98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v14);

  sub_24F928EA8();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v29 = sub_24E602068(a6, a4, a5, &unk_24F960108);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
  sub_24E60169C(a1, boxed_opaque_existential_1, a4, a5);
  sub_24E612C80(&v27, v26);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v25 = a2;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v19);
  sub_24F474398(v21, v16, a1, &v25, a4, a5, a6);
  (*(v13 + 8))(v16, v12);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v25;
}

uint64_t sub_24F46D930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(__n128))
{
  v12 = sub_24F928E98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v14);

  v17 = sub_24F928EA8();
  v28 = a4;
  v29 = a5(v17);
  *&v27 = a1;
  sub_24E612C80(&v27, v26);

  LOBYTE(a5) = swift_isUniquelyReferenced_nonNull_native();
  v25 = a2;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v26, v26[3]);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = (&v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  sub_24F474668(*v21, v16, a5, &v25, a4, a6, a6);
  (*(v13 + 8))(v16, v12);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v25;
}

uint64_t sub_24F46DB3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ButtonGroup(0);

  sub_24F928EA8();
  v19 = type metadata accessor for ButtonGroupComponent(0);
  v20 = sub_24F47DF2C(&qword_27F21C5A8, type metadata accessor for ButtonGroupComponent, &unk_24F955E50);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for ButtonGroupComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F4748F0(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46DD68(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BoolSetting(0);

  sub_24F928EA8();
  v25 = &type metadata for BoolSettingComponent;
  v26 = sub_24E8928D8();
  v14 = swift_allocObject();
  *&v24 = v14;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  sub_24E612C80(&v24, v23);

  LOBYTE(a2) = swift_isUniquelyReferenced_nonNull_native();
  v22 = a5;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v23, v23[3]);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  sub_24F474BBC(*v18, *(v18 + 1), v18[16], *(v18 + 3), v13, a2, &v22);
  (*(v11 + 8))(v13, v10);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v22;
}

uint64_t sub_24F46DF9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArcadeUpsellCard(0);

  sub_24F928EA8();
  v19 = type metadata accessor for ArcadeUpsellCardComponent(0);
  v20 = sub_24F47DF2C(&qword_27F244690, type metadata accessor for ArcadeUpsellCardComponent, &unk_24FA2CA5C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for ArcadeUpsellCardComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F474E70(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46E1C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppEventDetail(0);

  sub_24F928EA8();
  v19 = type metadata accessor for AppEventDetailComponent(0);
  v20 = sub_24F47DF2C(&qword_27F21F078, type metadata accessor for AppEventDetailComponent, &unk_24F95F200);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for AppEventDetailComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F47513C(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46E3F4(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActivityFeedLockup(0);

  sub_24F928EA8();
  v12 = &type metadata for ActivityFeedLockupComponent;
  v13 = sub_24E67EDC0();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ActivityFeedLockupComponent, sub_24E67EDC0, sub_24E67EDC0);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46E560(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionButtonRow(0);

  sub_24F928EA8();
  v12 = &type metadata for ActionButtonRowComponent;
  v13 = sub_24E764C68();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for ActionButtonRowComponent, sub_24E764C68, sub_24E764C68);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46E6CC(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AchievementDetailsHeader(0);

  sub_24F928EA8();
  v12 = &type metadata for AchievementDetailsHeaderComponent;
  v13 = sub_24EC5F4E8();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for AchievementDetailsHeaderComponent, sub_24EC5F4E8, sub_24EC5F4E8);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46E838(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AchievementDetailsGlobalPlayer(0);

  sub_24F928EA8();
  v12 = &type metadata for AchievementDetailsGlobalPlayerComponent;
  v13 = sub_24F47DDB4();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for AchievementDetailsGlobalPlayerComponent, sub_24F47DDB4, sub_24F47DDB4);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46E9A4(uint64_t a1)
{
  v2 = sub_24F928E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AchievementsCountHeaderItem(0);

  sub_24F928EA8();
  v12 = &type metadata for AchievementsCountHeaderItemComponent;
  v13 = sub_24F47DE08();
  sub_24E612C80(&v11, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = a1;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_24F46F6D8(v5, isUniquelyReferenced_nonNull_native, &v9, &type metadata for AchievementsCountHeaderItemComponent, sub_24F47DE08, sub_24F47DE08);
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v9;
}

uint64_t sub_24F46EB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(__n128))
{
  v12 = sub_24F928E98();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(0, v14);

  v17 = sub_24F928EA8();
  v27 = a4;
  v28 = a5(v17);
  v18 = swift_allocObject();
  *&v26 = v18;
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = *(a1 + 48);
  sub_24E612C80(&v26, v25);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v24 = a2;
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v25, v25[3]);
  v21 = *(v20 + 16);
  v29[0] = *v20;
  v29[1] = v21;
  v29[2] = *(v20 + 32);
  v30 = *(v20 + 48);
  sub_24F475408(v29, v16, a1, &v24, a4, a6, a6);
  (*(v13 + 8))(v16, v12);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v24;
}

uint64_t sub_24F46ECCC(uint64_t a1, double a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AchievementCard(0);

  sub_24F928EA8();
  v15 = &type metadata for AchievementCardComponent;
  v16 = sub_24F02E870();
  *&v14 = a2;
  sub_24E612C80(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a1;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_24F475640(v7, isUniquelyReferenced_nonNull_native, &v12, *v9);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v12;
}

uint64_t sub_24F46EE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessPointHighlight(0);

  sub_24F928EA8();
  v19 = type metadata accessor for AccessPointHighlightComponent(0);
  v20 = sub_24F47DF2C(&qword_27F2446A8, type metadata accessor for AccessPointHighlightComponent, &protocol conformance descriptor for AccessPointHighlightComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for AccessPointHighlightComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F47582C(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46F04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProfileHero(0);

  sub_24F928EA8();
  v19 = type metadata accessor for ProfileHeroComponent(0);
  v20 = sub_24F47DF2C(&qword_27F21CF70, type metadata accessor for ProfileHeroComponent, &unk_24F958438);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  sub_24F47DE5C(a1, boxed_opaque_existential_1, type metadata accessor for ProfileHeroComponent);
  sub_24E612C80(&v18, v17);
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v16 = a2;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_24F475AF8(v12, v7, a1, &v16);
  (*(v5 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v16;
}

uint64_t sub_24F46F278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProfileEditor(0);

  sub_24F928EA8();
  v24 = &type metadata for ProfileEditorComponent;
  v12 = sub_24F362168();
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v25 = v12;
  v23 = a3;
  sub_24E612C80(&v22, v21);

  LOBYTE(a2) = swift_isUniquelyReferenced_nonNull_native();
  v20 = a4;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  sub_24F475DC4(*v16, v16[1], v16[2], v11, a2, &v20);
  (*(v9 + 8))(v11, v8);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v20;
}

unint64_t sub_24F46F480(uint64_t a1)
{
  sub_24F928E98();
  sub_24F47DF2C(&qword_27F2444B0, MEMORY[0x277D21D58], MEMORY[0x277D21D60]);
  v2 = sub_24F92AEE8();

  return sub_24F46F518(a1, v2);
}

unint64_t sub_24F46F518(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_24F47DF2C(&qword_27F2444B8, MEMORY[0x277D21D58], MEMORY[0x277D21D68]);
      v16 = sub_24F92AFF8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_24F46F6D8(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(__n128), uint64_t (*a6)(void))
{
  v29 = a6;
  v11 = sub_24F928E98();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a4;
  v32 = a5(v13);
  v16 = *a3;
  v18 = sub_24F46F480(a1);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 >= v21 && (a2 & 1) != 0)
  {
LABEL_7:
    v24 = *a3;
    if (v22)
    {
LABEL_8:
      v25 = (v24[7] + 40 * v18);
      __swift_destroy_boxed_opaque_existential_1(v25);
      return sub_24E612C80(&v30, v25);
    }

    goto LABEL_11;
  }

  if (v23 >= v21 && (a2 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v21, a2 & 1);
  v27 = sub_24F46F480(a1);
  if ((v22 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v18 = v27;
  v24 = *a3;
  if (v22)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v12 + 16))(v15, a1, v11);
  __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
  sub_24F478460(v18, v15, v24, a4, v29);
  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

uint64_t sub_24F46F8C0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for RecordingRowLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F2444D0, type metadata accessor for RecordingRowLockupComponent, &unk_24FA336F4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for RecordingRowLockupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F47604C(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F46FB8C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for PlayerLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F2150D8, type metadata accessor for PlayerLockupComponent, &unk_24FA03C38);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47D27C(a1, boxed_opaque_existential_1);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F47617C(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F46FE44(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for PlayTogetherActivityTileComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21C958, type metadata accessor for PlayTogetherActivityTileComponent, &unk_24F956C78);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for PlayTogetherActivityTileComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F476298(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F470110(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GSKDividerComponent(0);
  v34 = sub_24F47DF2C(&qword_27F238C08, type metadata accessor for GSKDividerComponent, &unk_24F9C6428);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for GSKDividerComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F4763C8(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F4703DC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OverviewTileComponent(0);
  v34 = sub_24F47DF2C(&qword_27F244508, type metadata accessor for OverviewTileComponent, &unk_24FA21960);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for OverviewTileComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F4764F8(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F4706A8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &type metadata for OverlayHomeButtonReservedNoticeComponent;
  v36 = sub_24E9CC0A8();
  v12 = swift_allocObject();
  *&v34 = v12;
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  v14 = *a4;
  v16 = sub_24F46F480(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_1(v23);
      return sub_24E612C80(&v34, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v19, a3 & 1);
  v25 = sub_24F46F480(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  v32 = *(v30 + 1);
  v37[0] = *v30;
  v37[1] = v32;
  v38 = *(v30 + 4);
  sub_24F476DFC(v16, v11, v37, v22, &type metadata for OverlayHomeButtonReservedNoticeComponent, sub_24E9CC0A8, &unk_286222B60);
  return __swift_destroy_boxed_opaque_existential_1(&v34);
}

uint64_t sub_24F470978(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t *a5, double a6)
{
  v12 = sub_24F928E98();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = &type metadata for OverlayPlatterLockupComponent;
  v38 = sub_24E69EB34();
  *&v35 = a1;
  BYTE8(v35) = a2 & 1;
  v36 = a6;
  v16 = *a5;
  v18 = sub_24F46F480(a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
  }

  else
  {
    v22 = v17;
    v23 = v16[3];
    if (v23 >= v21 && (a4 & 1) != 0)
    {
LABEL_7:
      v24 = *a5;
      if (v22)
      {
LABEL_8:
        v25 = (v24[7] + 40 * v18);
        __swift_destroy_boxed_opaque_existential_1(v25);
        return sub_24E612C80(&v35, v25);
      }

      goto LABEL_11;
    }

    if (v23 >= v21 && (a4 & 1) == 0)
    {
      sub_24F478A68();
      goto LABEL_7;
    }

    sub_24F478CF0(v21, a4 & 1);
    v27 = sub_24F46F480(a3);
    if ((v22 & 1) == (v28 & 1))
    {
      v18 = v27;
      v24 = *a5;
      if (v22)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v13 + 16))(v15, a3, v12);
      v29 = __swift_mutable_project_boxed_opaque_existential_1(&v35, v37);
      v30 = MEMORY[0x28223BE20](v29);
      v32 = (&v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v33 + 16))(v32, v30);
      sub_24F476628(v18, v15, *v32, *(v32 + 8), v24, v32[2]);
      return __swift_destroy_boxed_opaque_existential_1(&v35);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F470C14(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OverlayCardLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F237370, type metadata accessor for OverlayCardLockupComponent, &unk_24F9BF60C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for OverlayCardLockupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F476728(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F470EE0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OverlayCapsuleLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F232E20, type metadata accessor for OverlayCapsuleLockupComponent, &unk_24F9AB280);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for OverlayCapsuleLockupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F476858(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F4711AC(uint64_t a1, char a2, uint64_t *a3, double a4, double a5, double a6, double a7)
{
  v14 = sub_24F928E98();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &type metadata for LeaderboardSetCardComponent;
  v36 = sub_24F47D4D0();
  v18 = swift_allocObject();
  *&v34 = v18;
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = *a3;
  v21 = sub_24F46F480(a1);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = v19[3];
    if (v26 >= v24 && (a2 & 1) != 0)
    {
LABEL_7:
      v27 = *a3;
      if (v25)
      {
LABEL_8:
        v28 = (v27[7] + 40 * v21);
        __swift_destroy_boxed_opaque_existential_1(v28);
        return sub_24E612C80(&v34, v28);
      }

      goto LABEL_11;
    }

    if (v26 >= v24 && (a2 & 1) == 0)
    {
      sub_24F478A68();
      goto LABEL_7;
    }

    sub_24F478CF0(v24, a2 & 1);
    v30 = sub_24F46F480(a1);
    if ((v25 & 1) == (v31 & 1))
    {
      v21 = v30;
      v27 = *a3;
      if (v25)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v15 + 16))(v17, a1, v14);
      v32 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
      sub_24F476988(v21, v17, v27, *v32, v32[1], v32[2], v32[3]);
      return __swift_destroy_boxed_opaque_existential_1(&v34);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F4713CC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LeaderboardEntryTableRowComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21C138, type metadata accessor for LeaderboardEntryTableRowComponent, &unk_24F954F30);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for LeaderboardEntryTableRowComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F476A9C(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F471698(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(__n128), uint64_t (*a8)(void))
{
  v38 = a8;
  v15 = sub_24F928E98();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a6;
  v41 = a7(v17);
  *&v39 = a1;
  BYTE8(v39) = a2 & 1;
  v20 = *a5;
  v22 = sub_24F46F480(a3);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = v21;
  v27 = v20[3];
  if (v27 >= v25 && (a4 & 1) != 0)
  {
LABEL_7:
    v28 = *a5;
    if (v26)
    {
LABEL_8:
      v29 = (v28[7] + 40 * v22);
      __swift_destroy_boxed_opaque_existential_1(v29);
      return sub_24E612C80(&v39, v29);
    }

    goto LABEL_11;
  }

  if (v27 >= v25 && (a4 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v25, a4 & 1);
  v31 = sub_24F46F480(a3);
  if ((v26 & 1) != (v32 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v22 = v31;
  v28 = *a5;
  if (v26)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v16 + 16))(v19, a3, v15);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(&v39, v40);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  sub_24F477BB4(v22, v19, *v36, v36[8], v28, a6, v38);
  return __swift_destroy_boxed_opaque_existential_1(&v39);
}

uint64_t sub_24F471930(_OWORD *a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = &type metadata for LeaderboardCardComponent;
  v32 = sub_24F47D544();
  v12 = swift_allocObject();
  *&v30 = v12;
  v13 = a1[1];
  v12[1] = *a1;
  v12[2] = v13;
  v12[3] = a1[2];
  v14 = *a4;
  v16 = sub_24F46F480(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_1(v23);
      return sub_24E612C80(&v30, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v19, a3 & 1);
  v25 = sub_24F46F480(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
  v28 = v27[1];
  v33[0] = *v27;
  v33[1] = v28;
  v33[2] = v27[2];
  sub_24F476BCC(v16, v11, v33, v22);
  return __swift_destroy_boxed_opaque_existential_1(&v30);
}

uint64_t sub_24F471B48(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for InviteFriendsRowComponent(0);
  v35 = sub_24F47DF2C(&qword_27F231A70, type metadata accessor for InviteFriendsRowComponent, &unk_24FA23C94);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for InviteFriendsRowComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v33, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v32 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31.n128_f64[0] = (*(v30 + 16))(v29, v27);
  sub_24F476CCC(v15, v11, v29, v21, v31);
  return __swift_destroy_boxed_opaque_existential_1(&v33);
}

uint64_t sub_24F471E14(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &type metadata for IncomingFriendRequestComponent;
  v36 = sub_24E72D014();
  v12 = swift_allocObject();
  *&v34 = v12;
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  v14 = *a4;
  v16 = sub_24F46F480(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_1(v23);
      return sub_24E612C80(&v34, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v19, a3 & 1);
  v25 = sub_24F46F480(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  v32 = *(v30 + 1);
  v37[0] = *v30;
  v37[1] = v32;
  v38 = *(v30 + 4);
  sub_24F476DFC(v16, v11, v37, v22, &type metadata for IncomingFriendRequestComponent, sub_24E72D014, &unk_286222C00);
  return __swift_destroy_boxed_opaque_existential_1(&v34);
}

uint64_t sub_24F4720E4(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GroupedTableRowComponent(0);
  v34 = sub_24F47DF2C(&qword_27F244548, type metadata accessor for GroupedTableRowComponent, &unk_24FA194F8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for GroupedTableRowComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F476F00(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F4723B0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GameLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F216AC0, type metadata accessor for GameLockupComponent, &unk_24F943B74);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for GameLockupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F477030(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F47267C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GameInstallLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21CB10, type metadata accessor for GameInstallLockupComponent, &unk_24F957038);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for GameInstallLockupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F477160(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F472948(char a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &type metadata for GameHeroDetailsComponent;
  v29 = sub_24E88EBE0();
  LOBYTE(v27) = a1 & 1;
  v12 = *a4;
  v14 = sub_24F46F480(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *a4;
    if (v18)
    {
LABEL_8:
      v21 = (v20[7] + 40 * v14);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return sub_24E612C80(&v27, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v17, a3 & 1);
  v23 = sub_24F46F480(a2);
  if ((v18 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v14 = v23;
  v20 = *a4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(&v27, v28);
  sub_24F477290(v14, v11, *v25, v20);
  return __swift_destroy_boxed_opaque_existential_1(&v27);
}

uint64_t sub_24F472B30(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = &type metadata for GameDetailsSummaryComponent;
  v31 = sub_24E630740();
  *&v29 = a1;
  BYTE8(v29) = a2 & 1;
  v14 = *a5;
  v16 = sub_24F46F480(a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a4 & 1) != 0)
  {
LABEL_7:
    v22 = *a5;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_1(v23);
      return sub_24E612C80(&v29, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a4 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v19, a4 & 1);
  v25 = sub_24F46F480(a3);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a5;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v13, a3, v10);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  sub_24F477BB4(v16, v13, *v27, *(v27 + 8), v22, &type metadata for GameDetailsSummaryComponent, sub_24E630740);
  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

uint64_t sub_24F472D40(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t *a7)
{
  v14 = sub_24F928E98();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = &type metadata for GameDetailsSummaryCardComponent;
  v40 = sub_24EAC8268();
  v18 = swift_allocObject();
  *&v38 = v18;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2 & 1;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4 & 1;
  v19 = *a7;
  v21 = sub_24F46F480(a5);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = v20;
  v26 = v19[3];
  if (v26 >= v24 && (a6 & 1) != 0)
  {
LABEL_7:
    v27 = *a7;
    if (v25)
    {
LABEL_8:
      v28 = (v27[7] + 40 * v21);
      __swift_destroy_boxed_opaque_existential_1(v28);
      return sub_24E612C80(&v38, v28);
    }

    goto LABEL_11;
  }

  if (v26 >= v24 && (a6 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v24, a6 & 1);
  v30 = sub_24F46F480(a5);
  if ((v25 & 1) != (v31 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v21 = v30;
  v27 = *a7;
  if (v25)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v15 + 16))(v17, a5, v14);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v38, v39);
  v33 = *v32;
  v34 = *(v32 + 16);
  v35 = *(v32 + 24);
  v37 = *(v32 + 8);
  v36[8] = v35;
  sub_24F477370(v21, v17, v33, v37, v34, v35, v27);
  return __swift_destroy_boxed_opaque_existential_1(&v38);
}

uint64_t sub_24F472F74(uint64_t a1, __int16 a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &type metadata for GameDetailsMediaPreviewComponent;
  v36 = sub_24E62A190();
  *&v34 = a1;
  WORD4(v34) = a2 & 0x101;
  v14 = *a5;
  v16 = sub_24F46F480(a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a4 & 1) != 0)
  {
LABEL_7:
    v22 = *a5;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_1(v23);
      return sub_24E612C80(&v34, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a4 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v19, a4 & 1);
  v25 = sub_24F46F480(a3);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_17:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a5;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v13, a3, v10);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  if (v30[9])
  {
    v32 = 256;
  }

  else
  {
    v32 = 0;
  }

  sub_24F477494(v16, v13, *v30, v32 | v30[8], v22);
  return __swift_destroy_boxed_opaque_existential_1(&v34);
}

uint64_t sub_24F473218(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GameDetailsHeaderComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21FF88, type metadata accessor for GameDetailsHeaderComponent, &unk_24F962528);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for GameDetailsHeaderComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F47758C(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F4734E4(char a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(__n128), uint64_t (*a7)(void))
{
  v32 = a7;
  v13 = sub_24F928E98();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a5;
  v35 = a6(v15);
  LOBYTE(v33) = a1;
  v18 = *a4;
  v20 = sub_24F46F480(a2);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v19;
  v25 = v18[3];
  if (v25 >= v23 && (a3 & 1) != 0)
  {
LABEL_7:
    v26 = *a4;
    if (v24)
    {
LABEL_8:
      v27 = (v26[7] + 40 * v20);
      __swift_destroy_boxed_opaque_existential_1(v27);
      return sub_24E612C80(&v33, v27);
    }

    goto LABEL_11;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v23, a3 & 1);
  v29 = sub_24F46F480(a2);
  if ((v24 & 1) != (v30 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v20 = v29;
  v26 = *a4;
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v14 + 16))(v17, a2, v13);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
  sub_24F4776BC(v20, v17, *v31, v26, a5, v32);
  return __swift_destroy_boxed_opaque_existential_1(&v33);
}

uint64_t sub_24F4736D8(uint64_t a1, char a2, uint64_t *a3, double a4, double a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = &type metadata for FriendRequestOverlayLockupComponent;
  v31 = sub_24E9373D0();
  *&v29 = a4;
  *(&v29 + 1) = a5;
  v14 = *a3;
  v16 = sub_24F46F480(a1);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
  }

  else
  {
    v20 = v15;
    v21 = v14[3];
    if (v21 >= v19 && (a2 & 1) != 0)
    {
LABEL_7:
      v22 = *a3;
      if (v20)
      {
LABEL_8:
        v23 = (v22[7] + 40 * v16);
        __swift_destroy_boxed_opaque_existential_1(v23);
        return sub_24E612C80(&v29, v23);
      }

      goto LABEL_11;
    }

    if (v21 >= v19 && (a2 & 1) == 0)
    {
      sub_24F478A68();
      goto LABEL_7;
    }

    sub_24F478CF0(v19, a2 & 1);
    v25 = sub_24F46F480(a1);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *a3;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v11 + 16))(v13, a1, v10);
      v27 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
      sub_24F477794(v16, v13, v22, *v27, v27[1]);
      return __swift_destroy_boxed_opaque_existential_1(&v29);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F4738C8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FriendRequestLockupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21CBF0, type metadata accessor for FriendRequestLockupComponent, &unk_24F9573A8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for FriendRequestLockupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F47787C(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F473B94(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, double a6, double a7)
{
  v14 = sub_24F928E98();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for ContinuePlayingIconComponent;
  v40 = sub_24F4637F4();
  v18 = swift_allocObject();
  *&v38 = v18;
  *(v18 + 16) = a6;
  *(v18 + 24) = a1;
  *(v18 + 32) = a7;
  *(v18 + 40) = a2;
  v19 = *a5;
  v21 = sub_24F46F480(a3);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = v19[3];
    if (v26 >= v24 && (a4 & 1) != 0)
    {
LABEL_7:
      v27 = *a5;
      if (v25)
      {
LABEL_8:
        v28 = (v27[7] + 40 * v21);
        __swift_destroy_boxed_opaque_existential_1(v28);
        return sub_24E612C80(&v38, v28);
      }

      goto LABEL_11;
    }

    if (v26 >= v24 && (a4 & 1) == 0)
    {
      sub_24F478A68();
      goto LABEL_7;
    }

    sub_24F478CF0(v24, a4 & 1);
    v30 = sub_24F46F480(a3);
    if ((v25 & 1) == (v31 & 1))
    {
      v21 = v30;
      v27 = *a5;
      if (v25)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v15 + 16))(v17, a3, v14);
      v32 = __swift_mutable_project_boxed_opaque_existential_1(&v38, v39);
      v33 = MEMORY[0x28223BE20](v32);
      v35 = &v37 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v35, v33);
      sub_24F4779AC(v21, v17, *(v35 + 1), *(v35 + 3), v27, *v35, *(v35 + 2));
      return __swift_destroy_boxed_opaque_existential_1(&v38);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F473E50(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, double a5)
{
  v10 = sub_24F928E98();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = &type metadata for ChallengesHistoryChallengeLockupComponent;
  v35 = sub_24F47DA30();
  *&v33 = a1;
  *(&v33 + 1) = a5;
  v14 = *a4;
  v16 = sub_24F46F480(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
  }

  else
  {
    v20 = v15;
    v21 = v14[3];
    if (v21 >= v19 && (a3 & 1) != 0)
    {
LABEL_7:
      v22 = *a4;
      if (v20)
      {
LABEL_8:
        v23 = (v22[7] + 40 * v16);
        __swift_destroy_boxed_opaque_existential_1(v23);
        return sub_24E612C80(&v33, v23);
      }

      goto LABEL_11;
    }

    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_24F478A68();
      goto LABEL_7;
    }

    sub_24F478CF0(v19, a3 & 1);
    v25 = sub_24F46F480(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *a4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v11 + 16))(v13, a2, v10);
      v27 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
      v28 = MEMORY[0x28223BE20](v27);
      v30 = (&v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v31 + 16))(v30, v28);
      sub_24F477AC8(v16, v13, *v30, v22, v30[1]);
      return __swift_destroy_boxed_opaque_existential_1(&v33);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F4740DC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &type metadata for ChallengeDetailPlayerLockupComponent;
  v36 = sub_24F47DBD4();
  v12 = swift_allocObject();
  *&v34 = v12;
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = *(a1 + 48);
  v14 = *a4;
  v16 = sub_24F46F480(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *a4;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 40 * v16);
      __swift_destroy_boxed_opaque_existential_1(v23);
      return sub_24E612C80(&v34, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v19, a3 & 1);
  v25 = sub_24F46F480(a2);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v35);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v33 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v28);
  v32 = *(v30 + 1);
  v37[0] = *v30;
  v37[1] = v32;
  v37[2] = *(v30 + 2);
  v38 = v30[48];
  sub_24F477CA0(v16, v11, v37, v22);
  return __swift_destroy_boxed_opaque_existential_1(&v34);
}

uint64_t sub_24F474398(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v37 = sub_24F928E98();
  v14 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v38 = a7;
  v41 = sub_24E602068(a7, a5, a6, &unk_24F960108);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  sub_24E6009C8(a1, boxed_opaque_existential_1, a5, a6);
  v18 = *a4;
  v20 = sub_24F46F480(a2);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v19;
  v25 = v18[3];
  if (v25 >= v23 && (a3 & 1) != 0)
  {
LABEL_7:
    v26 = *a4;
    if (v24)
    {
LABEL_8:
      v27 = (v26[7] + 40 * v20);
      __swift_destroy_boxed_opaque_existential_1(v27);
      return sub_24E612C80(&v39, v27);
    }

    goto LABEL_11;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v23, a3 & 1);
  v29 = sub_24F46F480(a2);
  if ((v24 & 1) != (v30 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v20 = v29;
  v26 = *a4;
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v14 + 16))(v16, a2, v37);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(&v39, v40);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34, v32);
  sub_24F477DA8(v20, v16, v34, v26, a5, a6, v38);
  return __swift_destroy_boxed_opaque_existential_1(&v39);
}

uint64_t sub_24F474668(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(__n128), uint64_t (*a7)(void))
{
  v36 = a7;
  v13 = sub_24F928E98();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a5;
  v39 = a6(v15);
  *&v37 = a1;
  v18 = *a4;
  v20 = sub_24F46F480(a2);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v19;
  v25 = v18[3];
  if (v25 >= v23 && (a3 & 1) != 0)
  {
LABEL_7:
    v26 = *a4;
    if (v24)
    {
LABEL_8:
      v27 = (v26[7] + 40 * v20);
      __swift_destroy_boxed_opaque_existential_1(v27);
      return sub_24E612C80(&v37, v27);
    }

    goto LABEL_11;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v23, a3 & 1);
  v29 = sub_24F46F480(a2);
  if ((v24 & 1) != (v30 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v20 = v29;
  v26 = *a4;
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v14 + 16))(v17, a2, v13);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(&v37, v38);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v36 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  sub_24F477EDC(v20, v17, *v34, v26, a5, v36);
  return __swift_destroy_boxed_opaque_existential_1(&v37);
}

uint64_t sub_24F4748F0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ButtonGroupComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21C5A8, type metadata accessor for ButtonGroupComponent, &unk_24F955E50);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for ButtonGroupComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F477FB4(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F474BBC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t *a7)
{
  v14 = sub_24F928E98();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for BoolSettingComponent;
  v40 = sub_24E8928D8();
  v18 = swift_allocObject();
  *&v38 = v18;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  v19 = *a7;
  v21 = sub_24F46F480(a5);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_14;
  }

  v25 = v20;
  v26 = v19[3];
  if (v26 >= v24 && (a6 & 1) != 0)
  {
LABEL_7:
    v27 = *a7;
    if (v25)
    {
LABEL_8:
      v28 = (v27[7] + 40 * v21);
      __swift_destroy_boxed_opaque_existential_1(v28);
      return sub_24E612C80(&v38, v28);
    }

    goto LABEL_11;
  }

  if (v26 >= v24 && (a6 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v24, a6 & 1);
  v30 = sub_24F46F480(a5);
  if ((v25 & 1) != (v31 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v21 = v30;
  v27 = *a7;
  if (v25)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v15 + 16))(v17, a5, v14);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v38, v39);
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v37 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35, v33);
  sub_24F4780E4(v21, v17, *v35, *(v35 + 1), v35[16], *(v35 + 3), v27);
  return __swift_destroy_boxed_opaque_existential_1(&v38);
}

uint64_t sub_24F474E70(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ArcadeUpsellCardComponent(0);
  v34 = sub_24F47DF2C(&qword_27F244690, type metadata accessor for ArcadeUpsellCardComponent, &unk_24FA2CA5C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for ArcadeUpsellCardComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F478200(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F47513C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AppEventDetailComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21F078, type metadata accessor for AppEventDetailComponent, &unk_24F95F200);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for AppEventDetailComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F478330(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F475408(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(__n128), uint64_t (*a7)(void))
{
  v35 = a7;
  v13 = sub_24F928E98();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a5;
  v38 = a6(v15);
  v18 = swift_allocObject();
  *&v36 = v18;
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = *(a1 + 48);
  v20 = *a4;
  v22 = sub_24F46F480(a2);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = v21;
  v27 = v20[3];
  if (v27 >= v25 && (a3 & 1) != 0)
  {
LABEL_7:
    v28 = *a4;
    if (v26)
    {
LABEL_8:
      v29 = (v28[7] + 40 * v22);
      __swift_destroy_boxed_opaque_existential_1(v29);
      return sub_24E612C80(&v36, v29);
    }

    goto LABEL_11;
  }

  if (v27 >= v25 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v25, a3 & 1);
  v31 = sub_24F46F480(a2);
  if ((v26 & 1) != (v32 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v22 = v31;
  v28 = *a4;
  if (v26)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v14 + 16))(v17, a2, v13);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  v34 = *(v33 + 16);
  v39[0] = *v33;
  v39[1] = v34;
  v39[2] = *(v33 + 32);
  v40 = *(v33 + 48);
  sub_24F478530(v22, v17, v39, v28, a5, v35);
  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t sub_24F475640(uint64_t a1, char a2, uint64_t *a3, double a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &type metadata for AchievementCardComponent;
  v29 = sub_24F02E870();
  *&v27 = a4;
  v12 = *a3;
  v14 = sub_24F46F480(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = v13;
    v19 = v12[3];
    if (v19 >= v17 && (a2 & 1) != 0)
    {
LABEL_7:
      v20 = *a3;
      if (v18)
      {
LABEL_8:
        v21 = (v20[7] + 40 * v14);
        __swift_destroy_boxed_opaque_existential_1(v21);
        return sub_24E612C80(&v27, v21);
      }

      goto LABEL_11;
    }

    if (v19 >= v17 && (a2 & 1) == 0)
    {
      sub_24F478A68();
      goto LABEL_7;
    }

    sub_24F478CF0(v17, a2 & 1);
    v23 = sub_24F46F480(a1);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *a3;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v11, a1, v8);
      v25 = __swift_mutable_project_boxed_opaque_existential_1(&v27, v28);
      sub_24F478634(v14, v11, v20, *v25);
      return __swift_destroy_boxed_opaque_existential_1(&v27);
    }
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F47582C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AccessPointHighlightComponent(0);
  v34 = sub_24F47DF2C(&qword_27F2446A8, type metadata accessor for AccessPointHighlightComponent, &protocol conformance descriptor for AccessPointHighlightComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for AccessPointHighlightComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F478718(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F475AF8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_24F928E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ProfileHeroComponent(0);
  v34 = sub_24F47DF2C(&qword_27F21CF70, type metadata accessor for ProfileHeroComponent, &unk_24F958438);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  sub_24F47DEC4(a1, boxed_opaque_existential_1, type metadata accessor for ProfileHeroComponent);
  v13 = *a4;
  v15 = sub_24F46F480(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = (v21[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_24E612C80(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v18, a3 & 1);
  v24 = sub_24F46F480(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_24F478848(v15, v11, v29, v21);
  return __swift_destroy_boxed_opaque_existential_1(&v32);
}

uint64_t sub_24F475DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v12 = sub_24F928E98();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = &type metadata for ProfileEditorComponent;
  v16 = sub_24F362168();
  *&v36 = a1;
  *(&v36 + 1) = a2;
  v39 = v16;
  v37 = a3;
  v17 = *a6;
  v19 = sub_24F46F480(a4);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a5 & 1) != 0)
  {
LABEL_7:
    v25 = *a6;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 40 * v19);
      __swift_destroy_boxed_opaque_existential_1(v26);
      return sub_24E612C80(&v36, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a5 & 1) == 0)
  {
    sub_24F478A68();
    goto LABEL_7;
  }

  sub_24F478CF0(v22, a5 & 1);
  v28 = sub_24F46F480(a4);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = sub_24F92CF88();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a6;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v13 + 16))(v15, a4, v12);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v38);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = (&v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33, v31);
  sub_24F478978(v19, v15, *v33, v33[1], v33[2], v25);
  return __swift_destroy_boxed_opaque_existential_1(&v36);
}

uint64_t sub_24F47604C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for RecordingRowLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F2444D0, type metadata accessor for RecordingRowLockupComponent, &unk_24FA336F4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for RecordingRowLockupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F47617C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for PlayerLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F2150D8, type metadata accessor for PlayerLockupComponent, &unk_24FA03C38);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47D27C(a3, boxed_opaque_existential_1);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F476298(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for PlayTogetherActivityTileComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21C958, type metadata accessor for PlayTogetherActivityTileComponent, &unk_24F956C78);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for PlayTogetherActivityTileComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F4763C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for GSKDividerComponent(0);
  v17 = sub_24F47DF2C(&qword_27F238C08, type metadata accessor for GSKDividerComponent, &unk_24F9C6428);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for GSKDividerComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F4764F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for OverviewTileComponent(0);
  v17 = sub_24F47DF2C(&qword_27F244508, type metadata accessor for OverviewTileComponent, &unk_24FA21960);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for OverviewTileComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F476628(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, double a6)
{
  v20 = &type metadata for OverlayPlatterLockupComponent;
  v21 = sub_24E69EB34();
  *&v18 = a3;
  BYTE8(v18) = a4 & 1;
  v19 = a6;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a5[6];
  v13 = sub_24F928E98();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_24E612C80(&v18, a5[7] + 40 * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_24F476728(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for OverlayCardLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F237370, type metadata accessor for OverlayCardLockupComponent, &unk_24F9BF60C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for OverlayCardLockupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F476858(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for OverlayCapsuleLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F232E20, type metadata accessor for OverlayCapsuleLockupComponent, &unk_24F9AB280);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for OverlayCapsuleLockupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F476988(unint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v22 = &type metadata for LeaderboardSetCardComponent;
  v23 = sub_24F47D4D0();
  v14 = swift_allocObject();
  *&v21 = v14;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a3[6];
  v16 = sub_24F928E98();
  (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * a1, a2, v16);
  result = sub_24E612C80(&v21, a3[7] + 40 * a1);
  v18 = a3[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v20;
  }

  return result;
}

uint64_t sub_24F476A9C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for LeaderboardEntryTableRowComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21C138, type metadata accessor for LeaderboardEntryTableRowComponent, &unk_24F954F30);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for LeaderboardEntryTableRowComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F476BCC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  v17 = &type metadata for LeaderboardCardComponent;
  v18 = sub_24F47D544();
  v8 = swift_allocObject();
  *&v16 = v8;
  v9 = a3[1];
  v8[1] = *a3;
  v8[2] = v9;
  v8[3] = a3[2];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24F476CCC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  v17 = type metadata accessor for InviteFriendsRowComponent(0);
  v18 = sub_24F47DF2C(&qword_27F231A70, type metadata accessor for InviteFriendsRowComponent, &unk_24FA23C94);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for InviteFriendsRowComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24F476DFC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v20 = a5;
  v21 = a6();
  v11 = swift_allocObject();
  *&v19 = v11;
  v12 = *(a3 + 16);
  *(v11 + 16) = *a3;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a3 + 32);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v13 = a4[6];
  v14 = sub_24F928E98();
  (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * a1, a2, v14);
  result = sub_24E612C80(&v19, a4[7] + 40 * a1);
  v16 = a4[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v18;
  }

  return result;
}

uint64_t sub_24F476F00(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for GroupedTableRowComponent(0);
  v17 = sub_24F47DF2C(&qword_27F244548, type metadata accessor for GroupedTableRowComponent, &unk_24FA194F8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for GroupedTableRowComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F477030(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for GameLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F216AC0, type metadata accessor for GameLockupComponent, &unk_24F943B74);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for GameLockupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F477160(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for GameInstallLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21CB10, type metadata accessor for GameInstallLockupComponent, &unk_24F957038);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for GameInstallLockupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F477290(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  v15 = &type metadata for GameHeroDetailsComponent;
  v16 = sub_24E88EBE0();
  LOBYTE(v14) = a3 & 1;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24F928E98();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_24E612C80(&v14, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_24F477370(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7)
{
  v22 = &type metadata for GameDetailsSummaryCardComponent;
  v23 = sub_24EAC8268();
  v14 = swift_allocObject();
  *&v21 = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4 & 1;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6 & 1;
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a7[6];
  v16 = sub_24F928E98();
  (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * a1, a2, v16);
  result = sub_24E612C80(&v21, a7[7] + 40 * a1);
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_24F477494(unint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  v17 = &type metadata for GameDetailsMediaPreviewComponent;
  v18 = sub_24E62A190();
  *&v16 = a3;
  WORD4(v16) = a4 & 0x101;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a5[7] + 40 * a1);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_24F47758C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for GameDetailsHeaderComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21FF88, type metadata accessor for GameDetailsHeaderComponent, &unk_24F962528);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for GameDetailsHeaderComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F4776BC(unint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v17 = a5;
  v18 = a6();
  LOBYTE(v16) = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24F477794(unint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v17 = &type metadata for FriendRequestOverlayLockupComponent;
  v18 = sub_24E9373D0();
  *&v16 = a4;
  *(&v16 + 1) = a5;
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a3[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a3[7] + 40 * a1);
  v13 = a3[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v15;
  }

  return result;
}

uint64_t sub_24F47787C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for FriendRequestLockupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21CBF0, type metadata accessor for FriendRequestLockupComponent, &unk_24F9573A8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for FriendRequestLockupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F4779AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v22 = &type metadata for ContinuePlayingIconComponent;
  v23 = sub_24F4637F4();
  v14 = swift_allocObject();
  *&v21 = v14;
  *(v14 + 16) = a6;
  *(v14 + 24) = a3;
  *(v14 + 32) = a7;
  *(v14 + 40) = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a5[6];
  v16 = sub_24F928E98();
  (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * a1, a2, v16);
  result = sub_24E612C80(&v21, a5[7] + 40 * a1);
  v18 = a5[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v20;
  }

  return result;
}

uint64_t sub_24F477AC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v17 = &type metadata for ChallengesHistoryChallengeLockupComponent;
  v18 = sub_24F47DA30();
  *&v16 = a3;
  *(&v16 + 1) = a5;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24F477BB4(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v19 = a6;
  v20 = a7();
  *&v18 = a3;
  BYTE8(v18) = a4 & 1;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a5[6];
  v13 = sub_24F928E98();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_24E612C80(&v18, a5[7] + 40 * a1);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_24F477CA0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = &type metadata for ChallengeDetailPlayerLockupComponent;
  v18 = sub_24F47DBD4();
  v8 = swift_allocObject();
  *&v16 = v8;
  v9 = *(a3 + 16);
  *(v8 + 16) = *a3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a3 + 32);
  *(v8 + 64) = *(a3 + 48);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24F477DA8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v23 = sub_24E602068(a7, a5, a6, &unk_24F960108);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  sub_24E6009C8(a3, boxed_opaque_existential_1, a5, a6);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a4[6];
  v16 = sub_24F928E98();
  (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * a1, a2, v16);
  result = sub_24E612C80(&v21, a4[7] + 40 * a1);
  v18 = a4[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v20;
  }

  return result;
}

uint64_t sub_24F477EDC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v17 = a5;
  v18 = a6();
  *&v16 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_24F477FB4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for ButtonGroupComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21C5A8, type metadata accessor for ButtonGroupComponent, &unk_24F955E50);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for ButtonGroupComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F4780E4(unint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  v22 = &type metadata for BoolSettingComponent;
  v23 = sub_24E8928D8();
  v14 = swift_allocObject();
  *&v21 = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v15 = a7[6];
  v16 = sub_24F928E98();
  (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * a1, a2, v16);
  result = sub_24E612C80(&v21, a7[7] + 40 * a1);
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_24F478200(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for ArcadeUpsellCardComponent(0);
  v17 = sub_24F47DF2C(&qword_27F244690, type metadata accessor for ArcadeUpsellCardComponent, &unk_24FA2CA5C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for ArcadeUpsellCardComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F478330(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for AppEventDetailComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21F078, type metadata accessor for AppEventDetailComponent, &unk_24F95F200);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for AppEventDetailComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F478460(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v15 = a4;
  v16 = a5();
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_24F928E98();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_24E612C80(&v14, a3[7] + 40 * a1);
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_24F478530(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v19 = a5;
  v20 = a6();
  v10 = swift_allocObject();
  *&v18 = v10;
  v11 = *(a3 + 16);
  *(v10 + 16) = *a3;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a3 + 32);
  *(v10 + 64) = *(a3 + 48);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_24F928E98();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_24E612C80(&v18, a4[7] + 40 * a1);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_24F478634(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  v15 = &type metadata for AchievementCardComponent;
  v16 = sub_24F02E870();
  *&v14 = a4;
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_24F928E98();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_24E612C80(&v14, a3[7] + 40 * a1);
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_24F478718(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for AccessPointHighlightComponent(0);
  v17 = sub_24F47DF2C(&qword_27F2446A8, type metadata accessor for AccessPointHighlightComponent, &protocol conformance descriptor for AccessPointHighlightComponent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for AccessPointHighlightComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F478848(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = type metadata accessor for ProfileHeroComponent(0);
  v17 = sub_24F47DF2C(&qword_27F21CF70, type metadata accessor for ProfileHeroComponent, &unk_24F958438);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F47DEC4(a3, boxed_opaque_existential_1, type metadata accessor for ProfileHeroComponent);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = sub_24F928E98();
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  result = sub_24E612C80(&v15, a4[7] + 40 * a1);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_24F478978(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = &type metadata for ProfileEditorComponent;
  *&v16 = a3;
  *(&v16 + 1) = a4;
  v19 = sub_24F362168();
  v17 = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a6[6];
  v11 = sub_24F928E98();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_24E612C80(&v16, a6[7] + 40 * a1);
  v13 = a6[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v15;
  }

  return result;
}

void sub_24F478A68()
{
  v1 = v0;
  v29 = sub_24F928E98();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444A8, &qword_24F9FB4B8);
  v3 = *v0;
  v4 = sub_24F92CB28();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_24E615E00(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        sub_24E612C80(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_24F478CF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_24F928E98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444A8, &qword_24F9FB4B8);
  v39 = v4;
  v10 = sub_24F92CB38();
  v11 = v10;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = v10 + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_24E612C80((*(v9 + 56) + 40 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_24E615E00(*(v9 + 56) + 40 * v23, v44);
      }

      sub_24F47DF2C(&qword_27F2444B0, MEMORY[0x277D21D58], MEMORY[0x277D21D60]);
      v26 = sub_24F92AEE8();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      sub_24E612C80(v44, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

uint64_t sub_24F4790D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444E8, &qword_24F9FB4D0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444E0, &qword_24F9FB4C8) + 48);
  v6 = sub_24F928E98();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_24E615E00(a1 + v4, a2 + v5);
}

void sub_24F479178(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444E8, &qword_24F9FB4D0);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v37 - v3;
  v4 = sub_24F928E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444F0, &unk_24F9FB4D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v37 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v18;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v39 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v5 + 16))(v7, *(v15 + 48) + *(v5 + 72) * v24, v4, v13);
    sub_24E615E00(*(v15 + 56) + 40 * v24, v44);
    v25 = *(v41 + 48);
    v26 = v4;
    v27 = v41;
    (*(v5 + 32))(v14, v7, v26);
    sub_24E612C80(v44, &v14[v25]);
    v28 = v40;
    (*(v40 + 56))(v14, 0, 1, v27);
    v29 = v39;
    v23 = v20;
LABEL_11:
    *v1 = v15;
    v1[1] = v16;
    v1[2] = v42;
    v1[3] = v23;
    v1[4] = v29;
    v30 = v1[5];
    sub_24E6009C8(v14, v10, &qword_27F2444F0, &unk_24F9FB4D8);
    v31 = 1;
    v32 = (*(v28 + 48))(v10, 1, v27);
    v33 = v43;
    if (v32 != 1)
    {
      v34 = v10;
      v35 = v38;
      sub_24E6009C8(v34, v38, &qword_27F2444E8, &qword_24F9FB4D0);
      v30(v35);
      sub_24E601704(v35, &qword_27F2444E8, &qword_24F9FB4D0);
      v31 = 0;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444E0, &qword_24F9FB4C8);
    (*(*(v36 - 8) + 56))(v33, v31, 1, v36);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v28 = v40;
        v27 = v41;
        (*(v40 + 56))(&v37 - v12, 1, 1, v41, v13);
        v29 = 0;
        goto LABEL_11;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24F479558@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  sub_24E615E00(a2, a3 + 8);
  *(a3 + 48) = swift_getKeyPath();
  *(a3 + 56) = 0;
  *a3 = v4;
}

void sub_24F4795B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v9 = sub_24F928E98();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444D8, &qword_24F9FB4C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - v14;
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v44 = a1;
  v45 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v46 = v17;
  v47 = 0;
  v48 = v20 & v18;
  v49 = a2;
  v50 = a3;
  v21 = (v10 + 32);
  v41 = (v10 + 8);
  v42 = v10;

  v40 = a3;

  while (1)
  {
    sub_24F479178(v15);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444E0, &qword_24F9FB4C8);
    if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
    {
      sub_24E6586B4(v44);

      return;
    }

    v24 = *(v23 + 48);
    v25 = *v21;
    v26 = v9;
    (*v21)(v12, v15, v9);
    sub_24E612C80(&v15[v24], v43);
    v27 = *v51;
    v29 = sub_24F46F480(v12);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_24F478A68();
      }
    }

    else
    {
      sub_24F478CF0(v32, a4 & 1);
      v34 = sub_24F46F480(v12);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_19;
      }

      v29 = v34;
    }

    v36 = *v51;
    if (v33)
    {
      v9 = v26;
      (*v41)(v12, v26);
      v22 = (v36[7] + 40 * v29);
      __swift_destroy_boxed_opaque_existential_1(v22);
      sub_24E612C80(v43, v22);
      a4 = 1;
    }

    else
    {
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v9 = v26;
      v25((v36[6] + *(v42 + 72) * v29), v12, v26);
      sub_24E612C80(v43, v36[7] + 40 * v29);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_24F92CF88();
  __break(1u);
}

uint64_t sub_24F479930(uint64_t a1)
{
  v406 = a1;
  v1 = type metadata accessor for RecordingRowLockupComponent(0);
  MEMORY[0x28223BE20](v1 - 8);
  v374 = (&v334 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v335 = type metadata accessor for ProfileHeroComponent(0);
  MEMORY[0x28223BE20](v335);
  v336 = (&v334 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PlayerLockupComponent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v373 = (&v334 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v351 = type metadata accessor for PlayTogetherActivityTileComponent(0);
  MEMORY[0x28223BE20](v351);
  v405 = (&v334 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for GSKDividerComponent(0);
  MEMORY[0x28223BE20](v7 - 8);
  v404 = (&v334 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v349 = type metadata accessor for OverviewTileComponent(0);
  MEMORY[0x28223BE20](v349);
  v403 = (&v334 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for OverlayCardLockupComponent(0);
  MEMORY[0x28223BE20](v10 - 8);
  v402 = (&v334 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for OverlayCapsuleLockupComponent(0);
  MEMORY[0x28223BE20](v12 - 8);
  v401 = &v334 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = type metadata accessor for LeaderboardEntryTableRowComponent(0);
  MEMORY[0x28223BE20](v350);
  v400 = (&v334 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v356 = (type metadata accessor for InviteFriendsRowComponent(0) - 8);
  MEMORY[0x28223BE20](v356);
  v399 = (&v334 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for GroupedTableRowComponent(0);
  MEMORY[0x28223BE20](v16 - 8);
  v398 = &v334 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = type metadata accessor for GameLockupComponent(0) - 8;
  MEMORY[0x28223BE20](v357);
  v397 = (&v334 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v358 = type metadata accessor for GameInstallLockupComponent(0) - 8;
  MEMORY[0x28223BE20](v358);
  v396 = (&v334 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v360 = type metadata accessor for GameDetailsHeaderComponent(0) - 8;
  MEMORY[0x28223BE20](v360);
  v395 = (&v334 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v361 = type metadata accessor for FriendRequestLockupComponent(0) - 8;
  MEMORY[0x28223BE20](v361);
  v394 = (&v334 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244408, &qword_24F9FB180) - 8;
  MEMORY[0x28223BE20](v366);
  v393 = &v334 - v22;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244410, &qword_24F9FB188) - 8;
  MEMORY[0x28223BE20](v365);
  v392 = &v334 - v23;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215B58, &qword_24F9FB190) - 8;
  MEMORY[0x28223BE20](v364);
  v391 = &v334 - v24;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244418, &qword_24F9FB198) - 8;
  MEMORY[0x28223BE20](v363);
  v390 = &v334 - v25;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244420, &qword_24F9FB1A0) - 8;
  MEMORY[0x28223BE20](v362);
  v389 = &v334 - v26;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244428, &qword_24F9FB1A8) - 8;
  MEMORY[0x28223BE20](v359);
  v388 = &v334 - v27;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244430, &qword_24F9FB1B0) - 8;
  MEMORY[0x28223BE20](v355);
  v387 = &v334 - v28;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244438, &qword_24F9FB1B8) - 8;
  MEMORY[0x28223BE20](v354);
  v386 = &v334 - v29;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244440, &qword_24F9FB1C0) - 8;
  MEMORY[0x28223BE20](v353);
  v385 = &v334 - v30;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244448, &qword_24F9FB1C8) - 8;
  MEMORY[0x28223BE20](v352);
  v384 = &v334 - v31;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244450, &qword_24F9FB1D0) - 8;
  MEMORY[0x28223BE20](v345);
  v383 = &v334 - v32;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244458, &qword_24F9FB1D8) - 8;
  MEMORY[0x28223BE20](v344);
  v382 = &v334 - v33;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244460, &qword_24F9FB1E0) - 8;
  MEMORY[0x28223BE20](v343);
  v381 = &v334 - v34;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244468, &qword_24F9FB1E8) - 8;
  MEMORY[0x28223BE20](v342);
  v380 = &v334 - v35;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244470, &qword_24F9FB1F0) - 8;
  MEMORY[0x28223BE20](v341);
  v379 = &v334 - v36;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244478, &qword_24F9FB1F8) - 8;
  MEMORY[0x28223BE20](v340);
  v378 = &v334 - v37;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244480, &qword_24F9FB200) - 8;
  MEMORY[0x28223BE20](v339);
  v377 = &v334 - v38;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244488, &qword_24F9FB208) - 8;
  MEMORY[0x28223BE20](v338);
  v376 = &v334 - v39;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244490, &qword_24F9FB210) - 8;
  MEMORY[0x28223BE20](v337);
  v375 = &v334 - v40;
  v372 = (type metadata accessor for ButtonGroupComponent(0) - 8);
  MEMORY[0x28223BE20](v372);
  v42 = (&v334 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for ArcadeUpsellCardComponent(0);
  v44 = v43 - 8;
  MEMORY[0x28223BE20](v43);
  v46 = &v334 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for AppEventDetailComponent(0);
  v48 = v47 - 8;
  MEMORY[0x28223BE20](v47);
  v50 = (&v334 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for AccessPointHighlightComponent(0);
  v52 = v51 - 8;
  MEMORY[0x28223BE20](v51);
  v54 = &v334 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessPointHighlightComponent.GestureHandler(0);
  sub_24F47DF2C(&qword_27F244498, type metadata accessor for AccessPointHighlightComponent.GestureHandler, &protocol conformance descriptor for AccessPointHighlightComponent.GestureHandler);
  *v54 = sub_24F923598();
  v54[8] = v55 & 1;
  v56 = *(v52 + 28);
  *&v54[v56] = swift_getKeyPath();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v58 = *(v52 + 32);
  v369 = v54;
  v59 = &v54[v58];
  *&v408[0] = 0;
  BYTE8(v408[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CFA8, &qword_24F958530);
  sub_24F926F28();
  v60 = BYTE8(v426);
  v61 = v427;
  *v59 = v426;
  v59[8] = v60;
  *(v59 + 2) = v61;
  *v50 = swift_getKeyPath();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v63 = *(v48 + 28);
  *(v50 + v63) = swift_getKeyPath();
  v348 = v62;
  swift_storeEnumTagMultiPayload();
  v64 = *(v48 + 32);
  v370 = v50;
  v65 = v406;
  *(v50 + v64) = v406;
  *v46 = swift_getKeyPath();
  v46[8] = 0;
  v66 = *(v44 + 28);
  *&v46[v66] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v67 = *(v44 + 32);
  v371 = v46;
  *&v46[v67] = v65;
  LOBYTE(v408[0]) = 0;
  swift_retain_n();
  sub_24F926F28();
  v347 = v426;
  v368 = *(&v426 + 1);
  LOBYTE(v408[0]) = 0;
  sub_24F926F28();
  v346 = v426;
  v367 = *(&v426 + 1);
  *v42 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v68 = *(v372 + 7);
  *(v42 + v68) = swift_getKeyPath();
  v372 = v42;
  swift_storeEnumTagMultiPayload();
  v69 = v337;
  v70 = v375;
  *(v375 + *(v337 + 56)) = v65;
  *v70 = swift_getKeyPath();
  *(v70 + 8) = 0;
  v71 = *(v69 + 52);
  *(v70 + v71) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v72 = v338;
  v73 = v376;
  *(v376 + *(v338 + 56)) = v65;
  *v73 = swift_getKeyPath();
  *(v73 + 8) = 0;
  v74 = *(v72 + 52);
  *(v73 + v74) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v75 = v339;
  v76 = v377;
  *(v377 + *(v339 + 56)) = v65;
  *v76 = swift_getKeyPath();
  *(v76 + 8) = 0;
  v77 = *(v75 + 52);
  *(v76 + v77) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v78 = v340;
  v79 = v378;
  *(v378 + *(v340 + 56)) = v65;
  *v79 = swift_getKeyPath();
  *(v79 + 8) = 0;
  v80 = *(v78 + 52);
  *(v79 + v80) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v81 = v341;
  v82 = v379;
  v83 = (v379 + *(v341 + 56));
  *v83 = v65;
  v83[1] = v65;

  *v82 = swift_getKeyPath();
  *(v82 + 8) = 0;
  v84 = *(v81 + 52);
  *(v82 + v84) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v85 = v342;
  v86 = v380;
  *(v380 + *(v342 + 56)) = v65;

  *v86 = swift_getKeyPath();
  *(v86 + 8) = 0;
  v87 = *(v85 + 52);
  *(v86 + v87) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v88 = v343;
  v89 = v381;
  *(v381 + *(v343 + 56)) = v65;

  *v89 = swift_getKeyPath();
  *(v89 + 8) = 0;
  v90 = *(v88 + 52);
  *(v89 + v90) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v91 = v344;
  v92 = v382;
  *(v382 + *(v344 + 56)) = v65;

  *v92 = swift_getKeyPath();
  *(v92 + 8) = 0;
  v93 = *(v91 + 52);
  *(v92 + v93) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v94 = v345;
  v95 = v383;
  *(v383 + *(v345 + 56)) = v65;

  *v95 = swift_getKeyPath();
  *(v95 + 8) = 0;
  v96 = *(v94 + 52);
  *(v95 + v96) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v97 = v352;
  v98 = v384;
  *(v384 + *(v352 + 56)) = v65;

  *v98 = swift_getKeyPath();
  *(v98 + 8) = 0;
  v99 = *(v97 + 52);
  *(v98 + v99) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v100 = v353;
  v101 = v385;
  *(v385 + *(v353 + 56)) = v65;

  *v101 = swift_getKeyPath();
  *(v101 + 8) = 0;
  v102 = *(v100 + 52);
  *(v101 + v102) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v103 = v354;
  v104 = v386;
  *(v386 + *(v354 + 56)) = v65;

  *v104 = swift_getKeyPath();
  *(v104 + 8) = 0;
  v105 = *(v103 + 52);
  *(v104 + v105) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v106 = v355;
  v107 = v387;
  *(v387 + *(v355 + 56)) = v65;

  *v107 = swift_getKeyPath();
  *(v107 + 8) = 0;
  v108 = *(v106 + 52);
  *(v107 + v108) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v109 = v359;
  v110 = v388;
  *(v388 + *(v359 + 56)) = v65;

  *v110 = swift_getKeyPath();
  *(v110 + 8) = 0;
  v111 = *(v109 + 52);
  *(v110 + v111) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v112 = v362;
  v113 = v389;
  *(v389 + *(v362 + 56)) = v65;

  *v113 = swift_getKeyPath();
  *(v113 + 8) = 0;
  v114 = *(v112 + 52);
  *(v113 + v114) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v115 = v363;
  v116 = v390;
  *(v390 + *(v363 + 56)) = v65;

  *v116 = swift_getKeyPath();
  *(v116 + 8) = 0;
  v117 = *(v115 + 52);
  *(v116 + v117) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v118 = v364;
  v119 = v391;
  *(v391 + *(v364 + 56)) = v65;

  *v119 = swift_getKeyPath();
  *(v119 + 8) = 0;
  v120 = *(v118 + 52);
  *(v119 + v120) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v121 = v365;
  v122 = v392;
  *(v392 + *(v365 + 56)) = v65;

  *v122 = swift_getKeyPath();
  *(v122 + 8) = 0;
  v123 = *(v121 + 52);
  *(v122 + v123) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v124 = v366;
  v125 = v393;
  *(v393 + *(v366 + 56)) = v65;

  *v125 = swift_getKeyPath();
  *(v125 + 8) = 0;
  v126 = *(v124 + 52);
  *(v125 + v126) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v354 = swift_getKeyPath();
  v355 = KeyPath;
  v419 = KeyPath;
  v420 = 0;
  v421 = v354;
  v422 = 0;
  v423 = 0;
  v424 = 0;
  v425 = 0;
  v364 = swift_getKeyPath();
  swift_retain_n();
  v128 = sub_24F92B098();
  CTFontCreateWithNameAndOptions(v128, 56.0, 0, 0x20000uLL);

  v363 = sub_24F925A78();
  *&v408[0] = 0;
  sub_24F926F28();
  v366 = *(&v426 + 1);
  v129 = *&v426;
  *&v408[0] = 0;
  sub_24F926F28();
  v365 = *(&v426 + 1);
  v130 = *&v426;
  v362 = swift_getKeyPath();
  v131 = swift_getKeyPath();
  v132 = v394;
  *v394 = v131;
  v133 = v132;
  swift_storeEnumTagMultiPayload();
  v134 = v361;
  v135 = *(v361 + 28);
  *(v133 + v135) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2444A0, &qword_24F9FB3A8);
  swift_storeEnumTagMultiPayload();
  *(v133 + *(v134 + 32)) = 0x4048000000000000;
  v361 = swift_getKeyPath();
  v136 = swift_getKeyPath();
  v137 = v395;
  *v395 = v136;
  swift_storeEnumTagMultiPayload();
  v138 = v360;
  v139 = v137 + *(v360 + 28);
  *v139 = swift_getKeyPath();
  v139[8] = 0;
  v140 = *(v138 + 32);
  *(v137 + v140) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v137 + *(v138 + 36)) = v65;
  v360 = swift_getKeyPath();
  v359 = swift_getKeyPath();
  v141 = swift_getKeyPath();
  v142 = v396;
  *v396 = v141;
  *(v142 + 8) = 0;
  v142[2] = swift_getKeyPath();
  v142[3] = 0;
  v142[4] = 0;
  v142[5] = 0;
  *(v142 + 48) = 0;
  v142[7] = swift_getKeyPath();
  *(v142 + 64) = 0;
  v143 = *(v358 + 36);
  *(v142 + v143) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v358 = swift_getKeyPath();
  v144 = v357;
  v145 = *(v357 + 28);
  v146 = swift_getKeyPath();
  v147 = v397;
  *(v397 + v145) = v146;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  v148 = *(v144 + 32);
  *(v147 + v148) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v147 = v65;
  *&v426 = 0x4038000000000000;
  sub_24E66ED98();
  swift_retain_n();
  sub_24F9237C8();
  v149 = swift_getKeyPath();
  *&v408[0] = 0;
  sub_24F926F28();
  v416[0] = 0x4030000000000000;
  v352 = v149;
  v353 = *(&v426 + 1);
  v416[1] = v149;
  v417 = 0;
  v418 = v426;
  v150 = swift_getKeyPath();
  v151 = swift_getKeyPath();
  v152 = v399;
  *v399 = v151;
  v153 = v152;
  swift_storeEnumTagMultiPayload();
  v154 = v356;
  *&v426 = 0x402E000000000000;
  v357 = v150;

  sub_24F9237C8();
  *(v153 + v154[8]) = 0x4020000000000000;
  *(v153 + v154[9]) = 0x4050000000000000;
  v155 = v154[10];
  *(v153 + v155) = sub_24F9258D8();
  v156 = v154[11];
  *(v153 + v156) = sub_24F925A18();
  v157 = swift_getKeyPath();
  v158 = qword_27F210148;
  v356 = v157;

  if (v158 != -1)
  {
    swift_once();
  }

  v159 = xmmword_27F39BA30;
  v160 = xmmword_27F39BA40;
  v430 = xmmword_27F39BA30;
  v431 = xmmword_27F39BA40;
  v161 = unk_27F39BA50;
  v432 = unk_27F39BA50;
  v162 = xmmword_27F39BA20;
  v428 = xmmword_27F39BA10;
  v429 = xmmword_27F39BA20;
  v164 = xmmword_27F39B9F0;
  v163 = *&qword_27F39BA00;
  v426 = xmmword_27F39B9F0;
  v427 = *&qword_27F39BA00;
  v165 = v400;
  v400[2] = xmmword_27F39BA10;
  v165[3] = v162;
  v165[4] = v159;
  v165[5] = v160;
  v165[6] = v161;
  *v165 = v164;
  v165[1] = v163;
  v166 = *(v350 + 20);
  *(v165 + v166) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v167 = *MEMORY[0x277CE0118];
  v168 = sub_24F924B38();
  v169 = *(v168 - 8);
  v170 = *(v169 + 104);
  v171 = v169 + 104;
  v170(v401, v167, v168);
  v341 = sub_24F924258();
  v342 = v171;
  v172 = v402;
  v173 = v402 + *(v341 + 20);
  LODWORD(v345) = v167;
  v343 = v170;
  v344 = v168;
  v170(v173, v167, v168);
  __asm { FMOV            V0.2D, #24.0 }

  *v172 = _Q0;
  v179 = swift_getKeyPath();
  v180 = swift_getKeyPath();
  v350 = v179;

  sub_24E784FF8(&v426, v408);
  if (qword_27F210088 != -1)
  {
    swift_once();
  }

  *&v413[0] = qword_27F39B3A8;
  type metadata accessor for OverlayHomeButtonReservedNoticeComponent.OverlayHomeButtonReservedNoticeViewModel(0);

  sub_24F926F28();
  v181 = v408[0];
  v410 = v180;
  v411 = 0;
  v412 = v408[0];
  v182 = swift_getKeyPath();
  v183 = v403;
  *v403 = v182;
  swift_storeEnumTagMultiPayload();
  v184 = v183 + *(v349 + 20);
  *v184 = swift_getKeyPath();
  v184[8] = 0;
  *v404 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v185 = swift_getKeyPath();
  v186 = v405;
  *v405 = v185;
  *(v186 + 8) = 0;
  v187 = v351;
  v188 = *(v351 + 20);
  *(v186 + v188) = swift_getKeyPath();
  v340 = v57;
  swift_storeEnumTagMultiPayload();
  v189 = v187[6];
  *(v186 + v189) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v190 = v187[7];
  *(v186 + v190) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v191 = v186 + v187[8];
  *v191 = swift_getKeyPath();
  v191[8] = 0;
  v192 = v373;
  (v343)(v373 + *(v341 + 20), v345, v344);
  __asm { FMOV            V0.2D, #12.0 }

  *v192 = _Q0;
  v194 = (v192 + *(type metadata accessor for AsymmetricalInsetRoundedRectangle(0) + 20));
  *v194 = xmmword_24F93F520;
  v194[1] = xmmword_24F93F520;
  type metadata accessor for LocalPlayerProvider(0);
  v348 = *(&v181 + 1);

  v351 = v180;

  v349 = v181;

  v195 = v406;
  sub_24F928EF8();
  v196 = *&v408[0];
  if (*&v408[0])
  {
    type metadata accessor for ASKBagContract(0);

    sub_24F928F28();
    v197 = sub_24F361C34(v196);
    v199 = v198;
    v201 = v200;
    v202 = swift_getKeyPath();
    v204 = v335;
    v203 = v336;
    *(v336 + *(v335 + 20)) = v202;
    swift_storeEnumTagMultiPayload();
    *v203 = v196;
    v205 = v203 + *(v204 + 24);
    *v205 = swift_getKeyPath();
    v205[8] = 0;

    v206 = sub_24F46F278(v197, v199, v201, MEMORY[0x277D84F98]);

    v345 = sub_24F46F04C(v203, v206);

    sub_24F47D110(v203, type metadata accessor for ProfileHeroComponent);
  }

  else
  {
    v345 = MEMORY[0x277D84F98];
  }

  v207 = v402;
  v208 = v401;
  v209 = v400;
  v408[0] = xmmword_24F9FAF10;
  v408[1] = xmmword_24F9FAF20;
  v408[2] = xmmword_24F9FAF30;
  v409 = 0x401C000000000000;
  v413[0] = xmmword_24F9FAF10;
  v413[1] = xmmword_24F9FAF20;
  v413[2] = xmmword_24F9FAF30;
  v414 = 0x401C000000000000;
  *v374 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v344 = swift_getKeyPath();

  v210 = sub_24F46EE20(v369, MEMORY[0x277D84F98]);
  v211 = sub_24F46ECCC(v210, 1.0);

  v212 = sub_24F46EB10(v408, v211, type metadata accessor for AchievementRow, &type metadata for AchievementRowComponent, sub_24ED2382C, sub_24ED2382C);

  v213 = sub_24F46E9A4(v212);

  v214 = sub_24F46E838(v213);

  v215 = sub_24F46E6CC(v214);

  v216 = sub_24F46E560(v215);

  v217 = sub_24F46E3F4(v216);

  v218 = sub_24F46E1C8(v370, v217);

  v219 = sub_24F46DF9C(v371, v218);

  v220 = sub_24F46DD68(v347, v368, v346, v367, v219);

  v221 = sub_24F46DB3C(v372, v220);

  v222 = sub_24F46D930(v195, v221, type metadata accessor for ButtonGroupItem, &type metadata for ButtonGroupItemComponent, sub_24F47DD1C, sub_24F47DD1C);

  v223 = sub_24F46D6EC(v375, v222, type metadata accessor for AchievementsCard, &qword_27F244490, &qword_24F9FB210, &qword_27F244680);

  v224 = sub_24F46D6EC(v376, v223, type metadata accessor for ActivityCard, &qword_27F244488, &qword_24F9FB208, &qword_27F244678);

  v225 = sub_24F46D6EC(v377, v224, type metadata accessor for ActivityInviteCard, &qword_27F244480, &qword_24F9FB200, &qword_27F244670);

  v226 = sub_24F46D6EC(v378, v225, type metadata accessor for AppEventCard, &qword_27F244478, &qword_24F9FB1F8, &qword_27F244668);

  v227 = sub_24F46D6EC(v379, v226, type metadata accessor for AppEventSearchCard, &qword_27F244470, &qword_24F9FB1F0, &qword_27F244660);

  v228 = sub_24F46D6EC(v380, v227, type metadata accessor for ChallengeCard, &qword_27F244468, &qword_24F9FB1E8, &qword_27F244658);

  v229 = sub_24F46D6EC(v381, v228, type metadata accessor for ChallengeCompletedCard, &qword_27F244460, &qword_24F9FB1E0, &qword_27F244650);

  v230 = sub_24F46D6EC(v382, v229, type metadata accessor for ChallengeInviteCard, &qword_27F244458, &qword_24F9FB1D8, &qword_27F244648);

  v231 = sub_24F46D6EC(v383, v230, type metadata accessor for ChallengeSuggestionCard, &qword_27F244450, &qword_24F9FB1D0, &qword_27F244640);

  v232 = sub_24F46D6EC(v384, v231, type metadata accessor for ChartCard, &qword_27F244448, &qword_24F9FB1C8, &qword_27F244638);

  v233 = sub_24F46D6EC(v385, v232, type metadata accessor for FriendRequestCard, &qword_27F244440, &qword_24F9FB1C0, &qword_27F244630);

  v234 = sub_24F46D6EC(v386, v233, type metadata accessor for FriendSuggestionCard, &qword_27F244438, &qword_24F9FB1B8, &qword_27F244628);

  v235 = sub_24F46D6EC(v387, v234, type metadata accessor for FriendsArePlayingCard, &qword_27F244430, &qword_24F9FB1B0, &qword_27F244620);

  v236 = sub_24F46D6EC(v388, v235, type metadata accessor for InviteFriendsCard, &qword_27F244428, &qword_24F9FB1A8, &qword_27F244618);

  v237 = sub_24F46D6EC(v389, v236, type metadata accessor for LeaderboardPersonalBestCard, &qword_27F244420, &qword_24F9FB1A0, &qword_27F244610);

  v238 = sub_24F46D6EC(v390, v237, type metadata accessor for LeaderboardWithFriendCard, &qword_27F244418, &qword_24F9FB198, &qword_27F244608);

  v239 = sub_24F46D6EC(v391, v238, type metadata accessor for MediaCard, &qword_27F215B58, &qword_24F9FB190, &qword_27F215B60);

  v240 = sub_24F46D6EC(v392, v239, type metadata accessor for SearchCard, &qword_27F244410, &qword_24F9FB188, &qword_27F244600);

  v241 = sub_24F46D6EC(v393, v240, type metadata accessor for DebugErrorCard, &qword_27F244408, &qword_24F9FB180, &qword_27F2445F8);

  v242 = sub_24F46D580(v241);

  v243 = sub_24F46D414(v242);

  v244 = sub_24F46D2A8(v243);

  v245 = sub_24F46D13C(v244);

  v246 = sub_24F46CEBC(&v419, v245);

  v247 = sub_24F46CC94(v364, 0, v246);

  v248 = sub_24F46CB28(v247);

  v249 = sub_24F46C9BC(v248);

  v250 = sub_24F46C850(v249);

  v251 = sub_24F46C6E4(v250);

  v252 = sub_24F46C4F0(v363, v251, 20.0);

  v253 = sub_24F46C384(v252);

  v254 = sub_24F46C218(v253);

  v255 = sub_24F46C0AC(v254);

  v256 = sub_24F46BF40(v255);

  v257 = sub_24F46BDD4(v256);

  v258 = sub_24F46BC68(v257);

  v259 = sub_24F46BAFC(v258);

  v260 = sub_24F46B8C8(v366, v365, v259, v129, v130);

  v261 = sub_24F46B6A0(v362, 0, v260);

  v262 = sub_24F46B534(v261);

  v263 = sub_24F46B3C8(v262);

  v264 = sub_24F46B25C(v263);

  v265 = sub_24F46B0F0(v264);

  v266 = sub_24F46AEC4(v394, v265);

  v267 = sub_24F46AD58(v266);

  v268 = sub_24F46ABEC(v267);

  v269 = sub_24F46AA94(v268, 44.0, 32.0);

  v270 = sub_24F46A928(v269);

  v271 = sub_24F46A700(v361, 0, v270);

  v272 = sub_24F46A588(0, v271, type metadata accessor for GameDetailsBanner, &type metadata for GameDetailsBannerComponent, sub_24EA3CB9C, sub_24EA3CB9C);

  v273 = sub_24F46A41C(v272);

  v274 = sub_24F46A1F0(v395, v273);

  v275 = sub_24F46A588(0, v274, type metadata accessor for GameDetailsMediaItem, &type metadata for GameDetailsMediaItemComponent, sub_24E6207C4, sub_24E6207C4);

  v276 = sub_24F469FC8(v360, 0, v275);

  v277 = sub_24F469DB0(v359, 256, v276);

  v278 = sub_24F469C44(v277);

  v279 = sub_24F469AD8(v278);

  v280 = sub_24F46996C(v279);

  LOBYTE(v415[0]) = 0;
  LOBYTE(v407[0]) = 1;
  v281 = sub_24F4697BC(4, 0, 0, 1, v280);

  v282 = sub_24F469654(0, 1, v281);

  v283 = sub_24F46D930(v195, v282, type metadata accessor for GameHero, &type metadata for GameHeroComponent, sub_24E6E64E8, sub_24E6E64E8);

  v284 = sub_24F469504(1, v283);

  v285 = sub_24F4692D8(v396, v284);

  v286 = sub_24F4690B0(v358, 0, v285);

  v287 = sub_24F468E84(v397, v286);

  v288 = sub_24F468D18(v287);

  v289 = sub_24F468BAC(v288);

  v290 = sub_24F468980(v398, v289);

  v291 = sub_24F468724(v416, v290);

  v292 = sub_24F4684FC(v357, 0, v291);

  v293 = sub_24F4682D0(v399, v292);

  v294 = sub_24F468164(v293);

  v295 = sub_24F467FF8(v294);

  v415[0] = xmmword_24F9FAF40;
  v415[1] = xmmword_24F9FAF50;
  v415[2] = xmmword_24F944E00;
  v296 = sub_24F467E78(v415, v295);

  v297 = sub_24F467D0C(v296);

  v298 = sub_24F467BA0(v297);

  v299 = sub_24F467978(v356, 0, v298);

  v300 = sub_24F46774C(v209, v299);

  v301 = sub_24F46EB10(v413, v300, type metadata accessor for LeaderboardRow, &type metadata for LeaderboardRowComponent, sub_24F0C0328, sub_24F0C0328);

  v302 = sub_24F4675C4(v301, 210.0, 20.0, 70.0, 12.0);

  v303 = sub_24F467458(v302);

  v304 = sub_24F4672EC(v303);

  v305 = sub_24F467180(v304);

  v306 = sub_24F467014(v305);

  v307 = sub_24F466EA8(v306);

  v308 = sub_24F466D3C(v307);

  v309 = sub_24F466B10(v208, v308);

  v310 = sub_24F4668E4(v207, v309);

  v311 = sub_24F4666D4(v350, 0, v310, 60.0);

  v312 = sub_24F466568(v311);

  v313 = sub_24F46630C(&v410, v312);

  v314 = sub_24F4660E0(v403, v313);

  v315 = sub_24F465F74(v314);

  v316 = sub_24F465D48(v404, v315);

  v317 = sub_24F465B1C(v405, v316);

  v318 = sub_24F4659B0(v317);

  v319 = v373;
  v320 = sub_24F465798(v373, v318);

  v321 = v345;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v407[0] = v320;
  sub_24F4795B8(v321, sub_24F4790D4, 0, isUniquelyReferenced_nonNull_native, v407);

  swift_bridgeObjectRelease_n();
  v323 = v374;
  v324 = sub_24F46556C(v374, v407[0]);

  v325 = sub_24F465400(v324);

  v326 = sub_24F4651D8(v344, 0, v325);

  v327 = sub_24F46506C(v326);

  v328 = sub_24F464F00(v327);

  v329 = sub_24F464D94(v328);

  v330 = sub_24F464C28(v329);

  v331 = sub_24F464ABC(v330);

  v332 = sub_24F464950(v331);

  sub_24F47D110(v323, type metadata accessor for RecordingRowLockupComponent);
  sub_24E6455E8(v319);
  sub_24F47D110(v405, type metadata accessor for PlayTogetherActivityTileComponent);
  sub_24F47D110(v404, type metadata accessor for GSKDividerComponent);
  sub_24F47D110(v403, type metadata accessor for OverviewTileComponent);
  sub_24F47D110(v402, type metadata accessor for OverlayCardLockupComponent);
  sub_24F47D110(v401, type metadata accessor for OverlayCapsuleLockupComponent);
  sub_24F47D110(v400, type metadata accessor for LeaderboardEntryTableRowComponent);
  sub_24F47D110(v399, type metadata accessor for InviteFriendsRowComponent);
  sub_24F47D110(v398, type metadata accessor for GroupedTableRowComponent);
  sub_24F47D110(v397, type metadata accessor for GameLockupComponent);
  sub_24F47D110(v396, type metadata accessor for GameInstallLockupComponent);
  sub_24F47D110(v395, type metadata accessor for GameDetailsHeaderComponent);
  sub_24F47D110(v394, type metadata accessor for FriendRequestLockupComponent);
  sub_24E601704(v393, &qword_27F244408, &qword_24F9FB180);
  sub_24E601704(v392, &qword_27F244410, &qword_24F9FB188);
  sub_24E601704(v391, &qword_27F215B58, &qword_24F9FB190);
  sub_24E601704(v390, &qword_27F244418, &qword_24F9FB198);
  sub_24E601704(v389, &qword_27F244420, &qword_24F9FB1A0);
  sub_24E601704(v388, &qword_27F244428, &qword_24F9FB1A8);
  sub_24E601704(v387, &qword_27F244430, &qword_24F9FB1B0);
  sub_24E601704(v386, &qword_27F244438, &qword_24F9FB1B8);
  sub_24E601704(v385, &qword_27F244440, &qword_24F9FB1C0);
  sub_24E601704(v384, &qword_27F244448, &qword_24F9FB1C8);
  sub_24E601704(v383, &qword_27F244450, &qword_24F9FB1D0);
  sub_24E601704(v382, &qword_27F244458, &qword_24F9FB1D8);
  sub_24E601704(v381, &qword_27F244460, &qword_24F9FB1E0);
  sub_24E601704(v380, &qword_27F244468, &qword_24F9FB1E8);
  sub_24E601704(v379, &qword_27F244470, &qword_24F9FB1F0);
  sub_24E601704(v378, &qword_27F244478, &qword_24F9FB1F8);
  sub_24E601704(v377, &qword_27F244480, &qword_24F9FB200);
  sub_24E601704(v376, &qword_27F244488, &qword_24F9FB208);
  sub_24E601704(v375, &qword_27F244490, &qword_24F9FB210);
  sub_24F47D110(v372, type metadata accessor for ButtonGroupComponent);
  sub_24F47D110(v371, type metadata accessor for ArcadeUpsellCardComponent);
  sub_24F47D110(v370, type metadata accessor for AppEventDetailComponent);
  sub_24F47D110(v369, type metadata accessor for AccessPointHighlightComponent);
  return v332;
}

uint64_t sub_24F47CAC4(uint64_t a1)
{
  result = sub_24F91FDC8();
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

uint64_t sub_24F47CB70(void *a1)
{
  sub_24F924038();
  sub_24F47CBD4();
  return swift_getWitnessTable();
}

unint64_t sub_24F47CBD4()
{
  result = qword_27F2443C0;
  if (!qword_27F2443C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2443C0);
  }

  return result;
}

unint64_t sub_24F47CCA4()
{
  result = qword_27F2443D8;
  if (!qword_27F2443D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2157A0, &unk_24F940B80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215778, &qword_24F940B70);
    sub_24E6695B8();
    sub_24E66960C();
    swift_getOpaqueTypeConformance2();
    sub_24E669450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2443D8);
  }

  return result;
}

unint64_t sub_24F47CD9C()
{
  result = qword_27F2443E8;
  if (!qword_27F2443E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2443E0, &qword_24F9FB140);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2443C8, &qword_24F9FB130);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2157A0, &unk_24F940B80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215778, &qword_24F940B70);
    sub_24E6695B8();
    sub_24E66960C();
    swift_getOpaqueTypeConformance2();
    sub_24E669340();
    sub_24F47CCA4();
    swift_getOpaqueTypeConformance2();
    sub_24F178120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2443E8);
  }

  return result;
}

uint64_t sub_24F47CF04@<X0>(void *a1@<X8>)
{
  sub_24F189AF8();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F47CFB8@<X0>(_BYTE *a1@<X8>)
{
  sub_24F47DF84();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F47D110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F47D170()
{
  result = qword_27F2444C0;
  if (!qword_27F2444C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2444C0);
  }

  return result;
}

unint64_t sub_24F47D1C4()
{
  result = qword_27F2444C8;
  if (!qword_27F2444C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2444C8);
  }

  return result;
}

uint64_t sub_24F47D218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerLockupComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F47D27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerLockupComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F47D2E0()
{
  result = qword_27F2444F8;
  if (!qword_27F2444F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2444F8);
  }

  return result;
}

unint64_t sub_24F47D334()
{
  result = qword_27F244500;
  if (!qword_27F244500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244500);
  }

  return result;
}

uint64_t sub_24F47D388()
{
  sub_24E74C370(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_24F47D3D4()
{
  result = qword_27F244518;
  if (!qword_27F244518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244518);
  }

  return result;
}

unint64_t sub_24F47D428()
{
  result = qword_27F244520;
  if (!qword_27F244520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244520);
  }

  return result;
}

unint64_t sub_24F47D47C()
{
  result = qword_27F244528;
  if (!qword_27F244528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244528);
  }

  return result;
}

unint64_t sub_24F47D4D0()
{
  result = qword_27F244530;
  if (!qword_27F244530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244530);
  }

  return result;
}

unint64_t sub_24F47D544()
{
  result = qword_27F244538;
  if (!qword_27F244538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244538);
  }

  return result;
}

unint64_t sub_24F47D5A8()
{
  result = qword_27F244540;
  if (!qword_27F244540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244540);
  }

  return result;
}

uint64_t sub_24F47D5FC()
{
  sub_24E62A5EC(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_24F47D640()
{
  result = qword_27F244550;
  if (!qword_27F244550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244550);
  }

  return result;
}

unint64_t sub_24F47D694()
{
  result = qword_27F244558;
  if (!qword_27F244558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244558);
  }

  return result;
}

unint64_t sub_24F47D6E8()
{
  result = qword_27F244560;
  if (!qword_27F244560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244560);
  }

  return result;
}

unint64_t sub_24F47D73C()
{
  result = qword_27F244568;
  if (!qword_27F244568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244568);
  }

  return result;
}

unint64_t sub_24F47D790()
{
  result = qword_27F244570;
  if (!qword_27F244570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244570);
  }

  return result;
}

unint64_t sub_24F47D7E4()
{
  result = qword_27F244578;
  if (!qword_27F244578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244578);
  }

  return result;
}

unint64_t sub_24F47D838()
{
  result = qword_27F244580;
  if (!qword_27F244580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244580);
  }

  return result;
}

unint64_t sub_24F47D88C()
{
  result = qword_27F244588;
  if (!qword_27F244588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244588);
  }

  return result;
}

unint64_t sub_24F47D8E0()
{
  result = qword_27F244590;
  if (!qword_27F244590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244590);
  }

  return result;
}

unint64_t sub_24F47D934()
{
  result = qword_27F244598;
  if (!qword_27F244598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244598);
  }

  return result;
}

unint64_t sub_24F47D988()
{
  result = qword_27F2445A0;
  if (!qword_27F2445A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445A0);
  }

  return result;
}

unint64_t sub_24F47D9DC()
{
  result = qword_27F2445A8;
  if (!qword_27F2445A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445A8);
  }

  return result;
}

unint64_t sub_24F47DA30()
{
  result = qword_27F2445B0;
  if (!qword_27F2445B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445B0);
  }

  return result;
}

unint64_t sub_24F47DA84()
{
  result = qword_27F2445B8;
  if (!qword_27F2445B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445B8);
  }

  return result;
}

unint64_t sub_24F47DAD8()
{
  result = qword_27F2445C0;
  if (!qword_27F2445C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445C0);
  }

  return result;
}

unint64_t sub_24F47DB2C()
{
  result = qword_27F2445C8;
  if (!qword_27F2445C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445C8);
  }

  return result;
}

unint64_t sub_24F47DB80()
{
  result = qword_27F2445D0;
  if (!qword_27F2445D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445D0);
  }

  return result;
}

unint64_t sub_24F47DBD4()
{
  result = qword_27F2445D8;
  if (!qword_27F2445D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445D8);
  }

  return result;
}

uint64_t sub_24F47DC28()
{
  sub_24E62A5EC(*(v0 + 16), *(v0 + 24));
  sub_24E669FC4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

unint64_t sub_24F47DC74()
{
  result = qword_27F2445E8;
  if (!qword_27F2445E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445E8);
  }

  return result;
}

unint64_t sub_24F47DCC8()
{
  result = qword_27F2445F0;
  if (!qword_27F2445F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2445F0);
  }

  return result;
}

unint64_t sub_24F47DD1C()
{
  result = qword_27F244688;
  if (!qword_27F244688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244688);
  }

  return result;
}

uint64_t objectdestroy_95Tm()
{

  return swift_deallocObject();
}

unint64_t sub_24F47DDB4()
{
  result = qword_27F244698;
  if (!qword_27F244698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244698);
  }

  return result;
}

unint64_t sub_24F47DE08()
{
  result = qword_27F2446A0;
  if (!qword_27F2446A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2446A0);
  }

  return result;
}

uint64_t sub_24F47DE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F47DEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F47DF2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F47DF84()
{
  result = qword_27F2446B0;
  if (!qword_27F2446B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2446B0);
  }

  return result;
}

uint64_t sub_24F47DFD8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2443D0, &qword_24F9FB138);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2443E0, &qword_24F9FB140);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2443C8, &qword_24F9FB130);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2157A0, &unk_24F940B80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215778, &qword_24F940B70);
  sub_24E6695B8();
  sub_24E66960C();
  swift_getOpaqueTypeConformance2();
  sub_24E669340();
  sub_24F47CCA4();
  swift_getOpaqueTypeConformance2();
  sub_24F09B68C();
  sub_24F47CD9C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F47E148()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2443F8, &qword_24F9FB178);
  type metadata accessor for GSKComponentContentBuilder(255);
  sub_24E602068(&qword_27F244400, &qword_27F2443F8, &qword_24F9FB178, MEMORY[0x277CE04B0]);
  sub_24F47DF2C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F47E228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA58, &qword_24F9CF410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F47E29C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_24F47E2F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24F47E370(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E4F656461637261;
  v4 = 0xEA0000000000796CLL;
  if (v2 != 1)
  {
    v3 = 0x64616372416E6F6ELL;
    v4 = 0xED0000796C6E4F65;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 7105633;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x6E4F656461637261;
  v8 = 0xEA0000000000796CLL;
  if (*a2 != 1)
  {
    v7 = 0x64616372416E6F6ELL;
    v8 = 0xED0000796C6E4F65;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 7105633;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F47E48C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F47E538(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F47E5D0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F47E678@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F47EEB0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F47E6A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEA0000000000796CLL;
  v5 = 0x6E4F656461637261;
  if (v2 != 1)
  {
    v5 = 0x64616372416E6F6ELL;
    v4 = 0xED0000796C6E4F65;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7105633;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24F47E7C4()
{
  result = qword_27F2446B8;
  if (!qword_27F2446B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2446B8);
  }

  return result;
}

uint64_t sub_24F47E818(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2446D8, &qword_24F9FB740);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F47EDB4();
  sub_24F92D128();
  v10[15] = 0;
  sub_24F92CCA8();
  if (!v2)
  {
    v10[14] = 1;
    sub_24F92CCA8();
    v10[13] = *(v3 + 32);
    v10[12] = 2;
    sub_24F47EE5C();
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F47E9F8()
{
  v1 = 0x4449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x746C6946656D6167;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449726579616C70;
  }
}

uint64_t sub_24F47EA58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F47F068(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F47EA80(uint64_t a1)
{
  v2 = sub_24F47EDB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F47EABC(uint64_t a1)
{
  v2 = sub_24F47EDB4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F47EB18@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24F47EB78(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_24F47EB78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2446C0, &qword_24F9FB738);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F47EDB4();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = sub_24F92CBC8();
  v11 = v10;
  v19 = v9;
  v22 = 1;
  v12 = sub_24F92CBC8();
  v14 = v13;
  v18 = v12;
  v20 = 2;
  sub_24F47EE08();
  sub_24F92CC18();
  (*(v6 + 8))(v8, v5);
  v15 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = v18;
  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

unint64_t sub_24F47EDB4()
{
  result = qword_27F2446C8;
  if (!qword_27F2446C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2446C8);
  }

  return result;
}

unint64_t sub_24F47EE08()
{
  result = qword_27F2446D0;
  if (!qword_27F2446D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2446D0);
  }

  return result;
}

unint64_t sub_24F47EE5C()
{
  result = qword_27F2446E0;
  if (!qword_27F2446E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2446E0);
  }

  return result;
}

unint64_t sub_24F47EEB0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F47EEFC()
{
  result = qword_27F2446E8;
  if (!qword_27F2446E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2446E8);
  }

  return result;
}

unint64_t sub_24F47EF64()
{
  result = qword_27F2446F0;
  if (!qword_27F2446F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2446F0);
  }

  return result;
}

unint64_t sub_24F47EFBC()
{
  result = qword_27F2446F8;
  if (!qword_27F2446F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2446F8);
  }

  return result;
}

unint64_t sub_24F47F014()
{
  result = qword_27F244700;
  if (!qword_27F244700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244700);
  }

  return result;
}

uint64_t sub_24F47F068(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C6946656D6167 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F47F1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244718, &qword_24F9FB920);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244720, &qword_24F9FB928);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244728, &qword_24F9FB930);
  v10 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v12 = &v42 - v11;
  *v9 = sub_24F924C88();
  *(v9 + 1) = 0x403C000000000000;
  v9[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244730, &qword_24F9FB938);
  sub_24F47F644(a1, &v9[*(v13 + 44)]);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v14 = sub_24F9248C8();
  __swift_project_value_buffer(v14, qword_27F39F078);
  sub_24E602068(&qword_27F244738, &qword_27F244720, &qword_24F9FB928, MEMORY[0x277CE1198]);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v9, &qword_27F244720, &qword_24F9FB928);
  v15 = *(sub_24F924258() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24F924B38();
  (*(*(v17 - 8) + 104))(&v6[v15], v16, v17);
  __asm { FMOV            V0.2D, #12.0 }

  *v6 = _Q0;
  *&v6[*(sub_24F924248() + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v23 = sub_24F926D08();

  *&v6[*(v4 + 52)] = v23;
  sub_24F4808E0(v6, a2);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244740, &qword_24F9FB940);
  v25 = v43;
  (*(v10 + 16))(a2 + v24[9], v12, v43);
  v26 = a2 + v24[10];
  *v26 = sub_24F923398() & 1;
  *(v26 + 8) = v27;
  *(v26 + 16) = v28 & 1;
  v29 = a2 + v24[11];
  *v29 = swift_getKeyPath();
  *(v29 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v30 = qword_27F24E488;
  v31 = sub_24F923398();
  v33 = v32;
  v35 = v34;
  v36 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244748, &qword_24F9FB970) + 36);
  *v36 = v30;
  *(v36 + 8) = v31 & 1;
  *(v36 + 16) = v33;
  *(v36 + 24) = v35 & 1;
  LOBYTE(v30) = sub_24F923398();
  v38 = v37;
  LOBYTE(v33) = v39;
  sub_24F480958(v6);
  (*(v10 + 8))(v12, v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244750, &qword_24F9FB978);
  v41 = a2 + *(result + 36);
  *v41 = v30 & 1;
  *(v41 + 8) = v38;
  *(v41 + 16) = v33 & 1;
  return result;
}

uint64_t sub_24F47F644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - v7;
  v9 = type metadata accessor for SwiftUIArtworkView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FD0, &qword_24F9B5A68);
  MEMORY[0x28223BE20](v62);
  v65 = &v59 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FD8, &qword_24F9B5A70);
  v13 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v63 = &v59 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244758, &qword_24F9FB980);
  MEMORY[0x28223BE20](v17 - 8);
  v67 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244760, &qword_24F9FB988);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  *v27 = sub_24F924988();
  *(v27 + 1) = 0x4028000000000000;
  v27[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244768, &qword_24F9FB990);
  sub_24F47FD60(a1, &v27[*(v28 + 44)]);
  v29 = *(*(a1 + 16) + 48);
  v30 = 1;
  if (v29)
  {
    v60 = v13;
    v61 = a2;
    v31 = v9[6];
    v32 = *MEMORY[0x277CE1010];
    v33 = sub_24F926E68();
    (*(*(v33 - 8) + 104))(&v11[v31], v32, v33);
    *(v11 + 1) = 0;
    *(v11 + 2) = 0;
    *v11 = v29;
    v11[24] = 1;
    v34 = &v11[v9[7]];
    *v34 = 0;
    *(v34 + 1) = 0;
    v34[16] = 1;
    v11[v9[8]] = 2;
    v11[v9[9]] = 0;
    swift_retain_n();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v35 = sub_24F922348();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v8, 0, 1, v35);
    v37 = v68;
    sub_24E60169C(v8, v68, &qword_27F214148, &qword_24F93C520);
    v38 = (*(v36 + 48))(v37, 1, v35);
    if (v38 == 1)
    {

      sub_24E601704(v8, &qword_27F214148, &qword_24F93C520);
      sub_24E601704(v68, &qword_27F214148, &qword_24F93C520);
      v39 = 0;
    }

    else
    {
      v41 = v68;
      sub_24F9222E8();
      v39 = v42;

      sub_24E601704(v8, &qword_27F214148, &qword_24F93C520);
      (*(v36 + 8))(v41, v35);
    }

    v43 = v65;
    sub_24E9D0D28(v11, v65);
    v44 = v43 + *(v62 + 36);
    *v44 = v39;
    *(v44 + 8) = v38 == 1;
    *(v44 + 9) = 1;
    v40 = v66;
    v45 = v64;
    v46 = &v64[*(v66 + 36)];
    v47 = *(sub_24F924258() + 20);
    v48 = *MEMORY[0x277CE0118];
    v49 = sub_24F924B38();
    (*(*(v49 - 8) + 104))(&v46[v47], v48, v49);
    __asm { FMOV            V0.2D, #22.0 }

    *v46 = _Q0;
    *&v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
    sub_24E6009C8(v43, v45, &qword_27F234FD0, &qword_24F9B5A68);
    v55 = v63;
    sub_24E6009C8(v45, v63, &qword_27F234FD8, &qword_24F9B5A70);
    sub_24E6009C8(v55, v21, &qword_27F234FD8, &qword_24F9B5A70);
    v30 = 0;
    v13 = v60;
    a2 = v61;
  }

  else
  {
    v40 = v66;
  }

  (*(v13 + 56))(v21, v30, 1, v40);
  sub_24E60169C(v27, v24, &qword_27F244760, &qword_24F9FB988);
  v56 = v67;
  sub_24E60169C(v21, v67, &qword_27F244758, &qword_24F9FB980);
  sub_24E60169C(v24, a2, &qword_27F244760, &qword_24F9FB988);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244770, &qword_24F9FB998);
  sub_24E60169C(v56, a2 + *(v57 + 48), &qword_27F244758, &qword_24F9FB980);
  sub_24E601704(v21, &qword_27F244758, &qword_24F9FB980);
  sub_24E601704(v27, &qword_27F244760, &qword_24F9FB988);
  sub_24E601704(v56, &qword_27F244758, &qword_24F9FB980);
  return sub_24E601704(v24, &qword_27F244760, &qword_24F9FB988);
}

uint64_t sub_24F47FD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244778, &qword_24F9FB9A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244780, &qword_24F9FB9A8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - v9;
  MEMORY[0x28223BE20](v10);
  v42 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244788, &qword_24F9FB9B0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v40 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = sub_24F926DF8();
  v19 = sub_24F925888();
  KeyPath = swift_getKeyPath();
  v21 = sub_24F9251B8();
  v22 = &v17[*(v13 + 44)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v24 = *MEMORY[0x277CE1058];
  v25 = sub_24F926E78();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  *v17 = v18;
  *(v17 + 1) = KeyPath;
  *(v17 + 2) = v19;
  *(v17 + 6) = v21;
  *v4 = sub_24F924C98();
  *(v4 + 1) = 0x4020000000000000;
  v4[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244790, &qword_24F9FBA18);
  sub_24F4801A0(v41, &v4[*(v26 + 44)]);
  sub_24F927618();
  sub_24F9242E8();
  v27 = v39;
  sub_24E6009C8(v4, v39, &qword_27F244778, &qword_24F9FB9A0);
  v28 = (v27 + *(v6 + 44));
  v29 = v50;
  v28[4] = v49;
  v28[5] = v29;
  v28[6] = v51;
  v30 = v46;
  *v28 = v45;
  v28[1] = v30;
  v31 = v48;
  v28[2] = v47;
  v28[3] = v31;
  v32 = v42;
  sub_24E6009C8(v27, v42, &qword_27F244780, &qword_24F9FB9A8);
  v33 = v40;
  sub_24E60169C(v17, v40, &qword_27F244788, &qword_24F9FB9B0);
  v34 = v43;
  sub_24E60169C(v32, v43, &qword_27F244780, &qword_24F9FB9A8);
  v35 = v44;
  sub_24E60169C(v33, v44, &qword_27F244788, &qword_24F9FB9B0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244798, &qword_24F9FBA20);
  sub_24E60169C(v34, v35 + *(v36 + 48), &qword_27F244780, &qword_24F9FB9A8);
  sub_24E601704(v32, &qword_27F244780, &qword_24F9FB9A8);
  sub_24E601704(v17, &qword_27F244788, &qword_24F9FB9B0);
  sub_24E601704(v34, &qword_27F244780, &qword_24F9FB9A8);
  return sub_24E601704(v33, &qword_27F244788, &qword_24F9FB9B0);
}

uint64_t sub_24F4801A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2447A0, &qword_24F9FBA28);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - v8;
  *v9 = sub_24F924968();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2447A8, &qword_24F9FBA30);
  sub_24F48041C(a1, &v9[*(v10 + 44)]);
  v11 = *(a1 + 16);
  v12 = *(v11 + 40);
  if (v12)
  {
    v29 = *(v11 + 32);
    v30 = v12;
    sub_24E600AEC();

    v13 = sub_24F925E18();
    v15 = v14;
    v28[0] = a2;
    v17 = v16;
    LODWORD(v29) = sub_24F9251C8();
    v12 = sub_24F925C58();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = v17 & 1;
    a2 = v28[0];
    sub_24E600B40(v13, v15, v24);

    v25 = v21 & 1;
    sub_24E5FD138(v12, v19, v21 & 1);
  }

  else
  {
    v19 = 0;
    v25 = 0;
    v23 = 0;
  }

  sub_24E60169C(v9, v6, &qword_27F2447A0, &qword_24F9FBA28);
  sub_24E60169C(v6, a2, &qword_27F2447A0, &qword_24F9FBA28);
  v26 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2447B0, &qword_24F9FBA38) + 48));
  sub_24E65D2B4(v12, v19, v25, v23);
  sub_24E65D2F8(v12, v19, v25, v23);
  *v26 = v12;
  v26[1] = v19;
  v26[2] = v25;
  v26[3] = v23;
  sub_24E601704(v9, &qword_27F2447A0, &qword_24F9FBA28);
  sub_24E65D2F8(v12, v19, v25, v23);
  return sub_24E601704(v6, &qword_27F2447A0, &qword_24F9FBA28);
}

uint64_t sub_24F48041C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244788, &qword_24F9FB9B0) - 8;
  MEMORY[0x28223BE20](v40);
  v41 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v37[-v5];
  v7 = *(a1 + 16);
  v8 = *(v7 + 24);
  v43 = *(v7 + 16);
  v44 = v8;
  sub_24E600AEC();

  v9 = sub_24F925E18();
  v11 = v10;
  v13 = v12;
  sub_24F925988();
  v14 = sub_24F925C98();
  v16 = v15;
  v18 = v17;

  sub_24E600B40(v9, v11, v13 & 1);

  sub_24F925918();
  v19 = sub_24F925B78();
  v21 = v20;
  v38 = v22;
  v39 = v23;
  sub_24E600B40(v14, v16, v18 & 1);

  v24 = sub_24F926DF8();
  v25 = sub_24F925988();
  KeyPath = swift_getKeyPath();
  v27 = sub_24F9251B8();
  v28 = &v6[*(v40 + 44)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v30 = *MEMORY[0x277CE1058];
  v31 = sub_24F926E78();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  *v6 = v24;
  *(v6 + 1) = KeyPath;
  *(v6 + 2) = v25;
  *(v6 + 6) = v27;
  v32 = v41;
  sub_24E60169C(v6, v41, &qword_27F244788, &qword_24F9FB9B0);
  v33 = v42;
  *v42 = v19;
  v33[1] = v21;
  LOBYTE(v24) = v38 & 1;
  *(v33 + 16) = v38 & 1;
  v33[3] = v39;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2447B8, &unk_24F9FBA40);
  sub_24E60169C(v32, v34 + *(v35 + 48), &qword_27F244788, &qword_24F9FB9B0);
  sub_24E5FD138(v19, v21, v24);

  sub_24E601704(v6, &qword_27F244788, &qword_24F9FB9B0);
  sub_24E601704(v32, &qword_27F244788, &qword_24F9FB9B0);
  sub_24E600B40(v19, v21, v24);
}

uint64_t sub_24F480750(uint64_t a1)
{
  sub_24E66D9B4();

  return sub_24F9218E8();
}

unint64_t sub_24F480798()
{
  result = qword_27F244708;
  if (!qword_27F244708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244708);
  }

  return result;
}

uint64_t sub_24F480898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4808E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244718, &qword_24F9FB920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F480958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244718, &qword_24F9FB920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F4809D4()
{
  result = qword_27F2447C0;
  if (!qword_27F2447C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244750, &qword_24F9FB978);
    sub_24F480A60();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2447C0);
  }

  return result;
}

unint64_t sub_24F480A60()
{
  result = qword_27F2447C8;
  if (!qword_27F2447C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244748, &qword_24F9FB970);
    sub_24E602068(&qword_27F2447D0, &qword_27F244740, &qword_24F9FB940, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2447C8);
  }

  return result;
}

double AddFriendAction.player.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  return sub_24F480B3C(v2, v3, v4, v5, v6, v7, v8);
}

double sub_24F480B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    if (a7 != 2)
    {
      if (a7 != 1)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t AddFriendAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AddFriendAction(0) + 28);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AddFriendAction(uint64_t a1)
{
  result = qword_27F244860;
  if (!qword_27F244860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F480C7C()
{
  v1 = 0x746361746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x736567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24F480CD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F48301C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F480CFC(uint64_t a1)
{
  v2 = sub_24F48143C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F480D38(uint64_t a1)
{
  v2 = sub_24F48143C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F480D74()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746361746E6F63;
  }
}

uint64_t sub_24F480DE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F483130(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F480E0C(uint64_t a1)
{
  v2 = sub_24F4814E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F480E48(uint64_t a1)
{
  v2 = sub_24F4814E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F480E84(uint64_t a1)
{
  v2 = sub_24F481490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F480EC0(uint64_t a1)
{
  v2 = sub_24F481490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F480EFC(uint64_t a1)
{
  v2 = sub_24F481538();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F480F38(uint64_t a1)
{
  v2 = sub_24F481538();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AddFriendAction.AddFriendActionRecipient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2447D8, &qword_24F9FBA50);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2447E0, &qword_24F9FBA58);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2447E8, &qword_24F9FBA60);
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2447F0, &unk_24F9FBA68);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  v14 = *v1;
  v33 = v1[1];
  v34 = v14;
  v15 = v1[2];
  v26[2] = v1[3];
  v26[3] = v15;
  v16 = v1[4];
  v26[0] = v1[5];
  v26[1] = v16;
  v17 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F48143C();
  sub_24F92D128();
  if (!v17)
  {
    v39 = 0;
    sub_24F481538();
    v21 = v37;
    sub_24F92CC98();
    sub_24F92CD08();
    (*(v27 + 8))(v10, v8);
    return (*(v36 + 8))(v13, v21);
  }

  if (v17 != 1)
  {
    v44 = 2;
    sub_24F481490();
    v23 = v28;
    v18 = v37;
    sub_24F92CC98();
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E61B71C(&qword_27F2137A0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    v19 = v30;
    sub_24F92CCF8();
    v24 = *(v29 + 8);
    v25 = v23;
LABEL_8:
    v24(v25, v19);
    return (*(v36 + 8))(v13, v18);
  }

  v43 = 1;
  sub_24F4814E4();
  v18 = v37;
  sub_24F92CC98();
  v42 = 0;
  v19 = v32;
  v20 = v35;
  sub_24F92CD08();
  if (!v20)
  {
    v41 = 1;
    sub_24F92CD08();
    v40 = 2;
    sub_24F92CD08();
    v24 = *(v31 + 8);
    v25 = v7;
    goto LABEL_8;
  }

  (*(v31 + 8))(v7, v19);
  return (*(v36 + 8))(v13, v18);
}

unint64_t sub_24F48143C()
{
  result = qword_27F2447F8;
  if (!qword_27F2447F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2447F8);
  }

  return result;
}

unint64_t sub_24F481490()
{
  result = qword_27F244800;
  if (!qword_27F244800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244800);
  }

  return result;
}

unint64_t sub_24F4814E4()
{
  result = qword_27F244808;
  if (!qword_27F244808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244808);
  }

  return result;
}

unint64_t sub_24F481538()
{
  result = qword_27F244810;
  if (!qword_27F244810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244810);
  }

  return result;
}

uint64_t AddFriendAction.AddFriendActionRecipient.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244818, &qword_24F9FBA78);
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  MEMORY[0x28223BE20](v3);
  v55 = &v48 - v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244820, &qword_24F9FBA80);
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244828, &qword_24F9FBA88);
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244830, &unk_24F9FBA90);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24F48143C();
  v16 = v56;
  sub_24F92D108();
  if (!v16)
  {
    v17 = v55;
    v56 = v12;
    v18 = sub_24F92CC78();
    v19 = (2 * *(v18 + 16)) | 1;
    v58 = v18;
    v59 = v18 + 32;
    v60 = 0;
    v61 = v19;
    v20 = sub_24E643434();
    v21 = v14;
    if (v20 == 3 || v60 != v61 >> 1)
    {
      v26 = sub_24F92C918();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v28 = &type metadata for AddFriendAction.AddFriendActionRecipient;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v56 + 8))(v21, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = v14;
      v23 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          LOBYTE(v62) = 1;
          sub_24F4814E4();
          sub_24F92CBA8();
          LOBYTE(v62) = 0;
          v24 = v50;
          v25 = sub_24F92CC28();
          v36 = v35;
          v55 = v25;
          LOBYTE(v62) = 1;
          v37 = sub_24F92CC28();
          v52 = v7;
          v53 = v41;
          v51 = v37;
          LOBYTE(v62) = 2;
          v42 = sub_24F92CC28();
          v44 = v43;
          (*(v54 + 8))(v52, v24);
          (*(v56 + 8))(v22, v11);
          swift_unknownObjectRelease();
          v45 = v55;
          v46 = v51;
          v47 = v53;
        }

        else
        {
          LOBYTE(v62) = 2;
          sub_24F481490();
          sub_24F92CBA8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
          sub_24E61B71C(&qword_27F216420, MEMORY[0x277D83808], MEMORY[0x277D83978]);
          v33 = v52;
          sub_24F92CC18();
          v34 = v56;
          (*(v53 + 8))(v17, v33);
          (*(v34 + 8))(v22, v11);
          swift_unknownObjectRelease();
          v36 = 0;
          v46 = 0;
          v47 = 0;
          v42 = 0;
          v44 = 0;
          v45 = v62;
        }
      }

      else
      {
        LOBYTE(v62) = 0;
        sub_24F481538();
        v30 = v10;
        sub_24F92CBA8();
        v31 = sub_24F92CC28();
        v32 = v56;
        v36 = v38;
        v39 = v30;
        v45 = v31;
        (*(v51 + 8))(v39, v8);
        (*(v32 + 8))(v22, v11);
        swift_unknownObjectRelease();
        v46 = 0;
        v47 = 0;
        v42 = 0;
        v44 = 0;
      }

      v40 = v49;
      *v49 = v45;
      v40[1] = v36;
      v40[2] = v46;
      v40[3] = v47;
      v40[4] = v42;
      v40[5] = v44;
      *(v40 + 48) = v23;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_24F481D64()
{
  v1 = 0x726579616C70;
  v2 = 0x416572756C696166;
  if (*v0 != 2)
  {
    v2 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x4173736563637573;
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

uint64_t sub_24F481E00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F483260(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F481E28(uint64_t a1)
{
  v2 = sub_24F482144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F481E64(uint64_t a1)
{
  v2 = sub_24F482144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AddFriendAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244838, &qword_24F9FBAA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F482144();
  sub_24F92D128();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  v14 = *(v3 + 48);
  v17 = *v3;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v16[7] = 0;
  sub_24F480B3C(v17, v9, v10, v11, v12, v13, v14);
  sub_24F482198();
  sub_24F92CD48();
  sub_24F4821EC(v17, v18, v19, v20, v21, v22, v23);
  if (!v2)
  {
    LOBYTE(v17) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E6419D0(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    LOBYTE(v17) = 2;
    sub_24F92CD48();
    type metadata accessor for AddFriendAction(0);
    LOBYTE(v17) = 3;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F482144()
{
  result = qword_27F244840;
  if (!qword_27F244840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244840);
  }

  return result;
}

unint64_t sub_24F482198()
{
  result = qword_27F244848;
  if (!qword_27F244848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244848);
  }

  return result;
}

uint64_t sub_24F4821EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    if (a7 != 2)
    {
      if (a7 != 1)
      {
        return result;
      }
    }
  }
}

uint64_t AddFriendAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = sub_24F928AD8();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244850, &unk_24F9FBAA8);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for AddFriendAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 56) = 0u;
  *&v34 = 0;
  v32 = 0u;
  v33 = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 11) = 0;
  v30 = v10 + 56;
  sub_24E61DA68(&v32, (v10 + 56), qword_27F21B590, &unk_24F93BE30);
  *(v10 + 6) = 0u;
  *&v34 = 0;
  v32 = 0u;
  v33 = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 16) = 0;
  sub_24E61DA68(&v32, (v10 + 96), qword_27F21B590, &unk_24F93BE30);
  v11 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_24F482144();
  v28 = v7;
  v12 = v29;
  sub_24F92D108();
  if (v12)
  {
    v15 = v30;
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_24E641EA0(v15);
    return sub_24E641EA0((v10 + 96));
  }

  else
  {
    v22 = v8;
    v13 = v26;
    v29 = v4;
    v36 = 0;
    sub_24F48272C();
    v14 = v27;
    sub_24F92CC68();
    v16 = v35;
    v17 = v33;
    *v10 = v32;
    *(v10 + 1) = v17;
    *(v10 + 2) = v34;
    v10[48] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v36 = 1;
    sub_24E6419D0(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v32, v30, qword_27F24EC90, &unk_24F93C1D0);
    v36 = 2;
    sub_24F92CC68();
    sub_24E61DA68(&v32, (v10 + 96), qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v32) = 3;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    v18 = v28;
    v19 = v29;
    v20 = v25;
    sub_24F92CC68();
    (*(v13 + 8))(v18, v14);
    (*(v23 + 32))(&v10[*(v22 + 28)], v19, v20);
    sub_24F482780(v10, v24);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return sub_24F4827E4(v10);
  }
}

unint64_t sub_24F48272C()
{
  result = qword_27F244858;
  if (!qword_27F244858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244858);
  }

  return result;
}

uint64_t sub_24F482780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddFriendAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4827E4(uint64_t a1)
{
  v2 = type metadata accessor for AddFriendAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F482884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 80);
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
    v9 = sub_24F928AD8();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F482950(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 80) = a2;
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F4829F4(uint64_t a1)
{
  sub_24E61C8D4(319);
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F482AF8()
{
  result = qword_27F244870;
  if (!qword_27F244870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244870);
  }

  return result;
}

unint64_t sub_24F482B50()
{
  result = qword_27F244878;
  if (!qword_27F244878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244878);
  }

  return result;
}

unint64_t sub_24F482BA8()
{
  result = qword_27F244880;
  if (!qword_27F244880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244880);
  }

  return result;
}

unint64_t sub_24F482C00()
{
  result = qword_27F244888;
  if (!qword_27F244888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244888);
  }

  return result;
}

unint64_t sub_24F482C58()
{
  result = qword_27F244890;
  if (!qword_27F244890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244890);
  }

  return result;
}

unint64_t sub_24F482CB0()
{
  result = qword_27F244898;
  if (!qword_27F244898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244898);
  }

  return result;
}

unint64_t sub_24F482D08()
{
  result = qword_27F2448A0;
  if (!qword_27F2448A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2448A0);
  }

  return result;
}

unint64_t sub_24F482D60()
{
  result = qword_27F2448A8;
  if (!qword_27F2448A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2448A8);
  }

  return result;
}

unint64_t sub_24F482DB8()
{
  result = qword_27F2448B0;
  if (!qword_27F2448B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2448B0);
  }

  return result;
}

unint64_t sub_24F482E10()
{
  result = qword_27F2448B8;
  if (!qword_27F2448B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2448B8);
  }

  return result;
}

unint64_t sub_24F482E68()
{
  result = qword_27F2448C0;
  if (!qword_27F2448C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2448C0);
  }

  return result;
}

unint64_t sub_24F482EC0()
{
  result = qword_27F2448C8;
  if (!qword_27F2448C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2448C8);
  }

  return result;
}

unint64_t sub_24F482F18()
{
  result = qword_27F2448D0;
  if (!qword_27F2448D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2448D0);
  }

  return result;
}

unint64_t sub_24F482F70()
{
  result = qword_27F2448D8;
  if (!qword_27F2448D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2448D8);
  }

  return result;
}

unint64_t sub_24F482FC8()
{
  result = qword_27F2448E0;
  if (!qword_27F2448E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2448E0);
  }

  return result;
}

uint64_t sub_24F48301C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F483130(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA56F30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEE00656C646E6148)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F483260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F4833EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LargeBreakoutOverlayViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F4834FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LargeBreakoutOverlayViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24F483624(uint64_t a1)
{
  type metadata accessor for LargeBreakoutOverlayViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_24F4854F0(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F4836F4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_24F923E98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2448F8, &qword_24F9FC280);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244900, &qword_24F9FC288);
  MEMORY[0x28223BE20](v35);
  v11 = &v34 - v10;
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0x4036000000000000;
  v9[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244908, &qword_24F9FC290);
  sub_24F483AD8(v1, &v9[*(v12 + 44)]);
  v13 = *(type metadata accessor for LargeBreakoutOverlayViewModel(0) + 36);
  KeyPath = swift_getKeyPath();
  v15 = &v9[*(v7 + 44)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858, &qword_24F950980) + 28);
  v17 = sub_24F9234D8();
  (*(*(v17 - 8) + 16))(v15 + v16, v1 + v13, v17);
  *v15 = KeyPath;
  type metadata accessor for LargeBreakoutOverlayView(0);
  sub_24F769788(v5);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v3 + 8))(v5, v2);
  sub_24F9275C8();
  sub_24F9242E8();
  sub_24E6009C8(v9, v11, &qword_27F2448F8, &qword_24F9FC280);
  v18 = &v11[*(v35 + 36)];
  v19 = v42;
  *(v18 + 4) = v41;
  *(v18 + 5) = v19;
  *(v18 + 6) = v43;
  v20 = v38;
  *v18 = v37;
  *(v18 + 1) = v20;
  v21 = v40;
  *(v18 + 2) = v39;
  *(v18 + 3) = v21;
  v22 = sub_24F925858();
  sub_24F923318();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v36;
  sub_24E6009C8(v11, v36, &qword_27F244900, &qword_24F9FC288);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244910, &qword_24F9FC2D0);
  v33 = v31 + *(result + 36);
  *v33 = v22;
  *(v33 + 8) = v24;
  *(v33 + 16) = v26;
  *(v33 + 24) = v28;
  *(v33 + 32) = v30;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_24F483AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v53 = sub_24F923E98();
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v49 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244918, &qword_24F9FC2D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244920, &qword_24F9FC2E0);
  MEMORY[0x28223BE20](v55);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v49 - v9;
  MEMORY[0x28223BE20](v10);
  v57 = &v49 - v11;
  v12 = type metadata accessor for BreakoutDetails.Badge(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = type metadata accessor for LargeBreakoutOverlayView.TextStack(0);
  MEMORY[0x28223BE20](v21);
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - v24;
  MEMORY[0x28223BE20](v26);
  v52 = &v49 - v27;
  v28 = type metadata accessor for LargeBreakoutOverlayViewModel(0);
  v29 = v28[6];
  v51 = a1;
  sub_24F485260(a1 + v29, v14, type metadata accessor for BreakoutDetails.Badge);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  LODWORD(a1) = (*(*(v30 - 8) + 48))(v14, 2, v30);
  v31 = sub_24F91F008();
  v32 = *(v31 - 8);
  v33 = v32;
  if (a1)
  {
    (*(v32 + 56))(v17, 1, 1, v31);
    sub_24F4852C8(v14, type metadata accessor for BreakoutDetails.Badge);
  }

  else
  {
    (*(v32 + 32))(v17, v14, v31);
    (*(v33 + 56))(v17, 0, 1, v31);
  }

  sub_24E6009C8(v17, v20, &qword_27F215340, &qword_24F943530);
  v34 = v51;
  sub_24E60169C(v51 + v28[7], &v25[*(v21 + 20)], &qword_27F215340, &qword_24F943530);
  sub_24E60169C(v34 + v28[8], &v25[*(v21 + 24)], &qword_27F215340, &qword_24F943530);
  sub_24E6009C8(v20, v25, &qword_27F215340, &qword_24F943530);
  v35 = v52;
  sub_24F4851FC(v25, v52);
  *v6 = sub_24F924C98();
  *(v6 + 1) = 0x4036000000000000;
  v6[16] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244928, &qword_24F9FC2E8);
  sub_24F484238(v34, &v6[*(v36 + 44)]);
  type metadata accessor for LargeBreakoutOverlayView(0);
  v37 = v49;
  sub_24F769788(v49);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v50 + 8))(v37, v53);
  sub_24F927628();
  sub_24F9242E8();
  v38 = v56;
  sub_24E6009C8(v6, v56, &qword_27F244918, &qword_24F9FC2D8);
  v39 = (v38 + *(v55 + 36));
  v40 = v65;
  v39[4] = v64;
  v39[5] = v40;
  v39[6] = v66;
  v41 = v61;
  *v39 = v60;
  v39[1] = v41;
  v42 = v63;
  v39[2] = v62;
  v39[3] = v42;
  v43 = v57;
  sub_24E6009C8(v38, v57, &qword_27F244920, &qword_24F9FC2E0);
  v44 = v54;
  sub_24F485260(v35, v54, type metadata accessor for LargeBreakoutOverlayView.TextStack);
  v45 = v58;
  sub_24E60169C(v43, v58, &qword_27F244920, &qword_24F9FC2E0);
  v46 = v59;
  sub_24F485260(v44, v59, type metadata accessor for LargeBreakoutOverlayView.TextStack);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244930, &unk_24F9FC2F0);
  sub_24E60169C(v45, v46 + *(v47 + 48), &qword_27F244920, &qword_24F9FC2E0);
  sub_24E601704(v43, &qword_27F244920, &qword_24F9FC2E0);
  sub_24F4852C8(v35, type metadata accessor for LargeBreakoutOverlayView.TextStack);
  sub_24E601704(v45, &qword_27F244920, &qword_24F9FC2E0);
  return sub_24F4852C8(v44, type metadata accessor for LargeBreakoutOverlayView.TextStack);
}

uint64_t sub_24F484238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for EditorialComponentOverlayView(0);
  MEMORY[0x28223BE20](v3);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = sub_24F9271F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224908, &qword_24F972FC0);
  MEMORY[0x28223BE20](v11 - 8);
  v33 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = sub_24F923E98();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(type metadata accessor for LargeBreakoutOverlayViewModel(0) + 40);
  v21 = 1;
  if (*(a1 + v20) - 2 >= 3)
  {
    type metadata accessor for LargeBreakoutOverlayView(0);
    v31 = a1;
    sub_24F769788(v19);
    v22 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    (*(v17 + 8))(v19, v16);
    if (v22)
    {
      v21 = 1;
    }

    else
    {
      v23 = v32;
      sub_24F9271E8();
      (*(v9 + 32))(v15, v23, v8);
      v21 = 0;
    }

    a1 = v31;
  }

  (*(v9 + 56))(v15, v21, 1, v8);
  sub_24F485260(a1 + v20, v7, _s9ViewModelVMa);
  v24 = v3[8];
  *&v7[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  swift_storeEnumTagMultiPayload();
  v7[v3[5]] = 0;
  v7[v3[6]] = 1;
  v7[v3[7]] = 0;
  v25 = v33;
  sub_24E60169C(v15, v33, &qword_27F224908, &qword_24F972FC0);
  v26 = v35;
  sub_24F485260(v7, v35, type metadata accessor for EditorialComponentOverlayView);
  v27 = v34;
  sub_24E60169C(v25, v34, &qword_27F224908, &qword_24F972FC0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244938, &qword_24F9FC338);
  sub_24F485260(v26, v27 + *(v28 + 48), type metadata accessor for EditorialComponentOverlayView);
  sub_24F4852C8(v7, type metadata accessor for EditorialComponentOverlayView);
  sub_24E601704(v15, &qword_27F224908, &qword_24F972FC0);
  sub_24F4852C8(v26, type metadata accessor for EditorialComponentOverlayView);
  return sub_24E601704(v25, &qword_27F224908, &qword_24F972FC0);
}

uint64_t sub_24F484668@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v104 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v104 - v10;
  v12 = sub_24F91F008();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v105 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v118 = &v104 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v104 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v104 - v21;
  sub_24E60169C(a1, v11, &qword_27F215340, &qword_24F943530);
  v23 = *(v13 + 48);
  v24 = v23(v11, 1, v12);
  v113 = v13;
  v110 = v19;
  v112 = v5;
  v111 = a1;
  v108 = v13 + 48;
  v107 = v23;
  if (v24 == 1)
  {
    sub_24E601704(v11, &qword_27F215340, &qword_24F943530);
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v122 = 0;
    v109 = 0;
    v119 = 0;
    v120 = 0;
  }

  else
  {
    (*(v13 + 32))(v22, v11, v12);
    (*(v13 + 16))(v19, v22, v12);
    v25 = sub_24F925DF8();
    v27 = v26;
    v29 = v28;
    v117 = v8;
    sub_24F9258D8();
    sub_24F925918();
    sub_24F9259A8();

    v30 = sub_24F925C98();
    v32 = v31;
    LODWORD(v124) = v33;
    v125 = v12;
    v35 = v34;

    v36 = v27;
    v23 = v107;
    sub_24E600B40(v25, v36, v29 & 1);
    v8 = v117;

    (*(v13 + 8))(v22, v125);
    KeyPath = swift_getKeyPath();
    v38 = v124 & 1;
    v127 = v124 & 1;
    v126 = 0;
    v121 = v124 & 1;
    v120 = 256;
    v123 = v32;
    v124 = v30;
    v39 = v32;
    a1 = v111;
    sub_24E5FD138(v30, v39, v38);
    v122 = v35;
    v12 = v125;

    v109 = KeyPath;

    v119 = 1;
  }

  v40 = type metadata accessor for LargeBreakoutOverlayView.TextStack(0);
  sub_24E60169C(a1 + *(v40 + 20), v8, &qword_27F215340, &qword_24F943530);
  if (v23(v8, 1, v12) == 1)
  {
    sub_24E601704(v8, &qword_27F215340, &qword_24F943530);
    v117 = 0;
    v118 = 0;
    v115 = 0;
    v116 = 0;
    v125 = 0;
    v114 = 0;
  }

  else
  {
    v41 = v113;
    v42 = v118;
    (*(v113 + 32))(v118, v8, v12);
    v43 = *(v41 + 16);
    v104 = v40;
    v43(v110, v42, v12);
    v44 = sub_24F925DF8();
    v46 = v45;
    v48 = v47;
    sub_24F925888();
    v49 = sub_24F925C98();
    v51 = v50;
    LODWORD(v117) = v52;
    v125 = v53;

    v54 = v48 & 1;
    a1 = v111;
    sub_24E600B40(v44, v46, v54);

    v55 = v41;
    v23 = v107;
    (*(v55 + 8))(v42, v12);
    v56 = swift_getKeyPath();
    v57 = v117 & 1;
    v129 = v117 & 1;
    v128 = 0;
    v115 = v117 & 1;
    v117 = v51;
    v118 = v49;
    v58 = v51;
    v40 = v104;
    sub_24E5FD138(v49, v58, v57);

    v116 = v56;

    v114 = 2;
  }

  v59 = v112;
  sub_24E60169C(a1 + *(v40 + 24), v112, &qword_27F215340, &qword_24F943530);
  if (v23(v59, 1, v12) == 1)
  {
    sub_24E601704(v59, &qword_27F215340, &qword_24F943530);
    v112 = 0;
    v111 = 0;
    v108 = 0;
    v107 = 0;
    v110 = 0;
    v60 = 0;
    LODWORD(v113) = 0;
  }

  else
  {
    v61 = v113;
    v62 = v105;
    (*(v113 + 32))(v105, v59, v12);
    (*(v61 + 16))(v110, v62, v12);
    v63 = sub_24F925DF8();
    v65 = v64;
    v67 = v66;
    sub_24F9258D8();
    sub_24F925938();
    sub_24F9259A8();

    v68 = sub_24F925C98();
    v70 = v69;
    LODWORD(v112) = v71;
    v107 = v72;

    sub_24E600B40(v63, v65, v67 & 1);

    (*(v61 + 8))(v62, v12);
    v73 = swift_getKeyPath();
    v74 = v112 & 1;
    v131 = v112 & 1;
    v130 = 0;
    v108 = v112 & 1;
    LODWORD(v113) = 256;
    v112 = v68;
    v111 = v70;
    sub_24E5FD138(v68, v70, v74);

    v110 = v73;

    v60 = 3;
  }

  v105 = v60;
  sub_24ED1A264(v124, v123, v121, v122);
  v76 = v117;
  v75 = v118;
  v78 = v115;
  v77 = v116;
  v79 = v125;
  sub_24ED1A264(v118, v117, v115, v125);
  v80 = v112;
  v81 = v111;
  v82 = v107;
  sub_24ED1A264(v112, v111, v108, v107);
  sub_24ED1A2B4(v75, v76, v78, v79, v77);
  v84 = v123;
  v83 = v124;
  v85 = v121;
  v86 = v122;
  v87 = v109;
  v88 = v119;
  v89 = v120;
  sub_24ED1A2B4(v124, v123, v121, v122, v109);
  v90 = v80;
  v91 = v81;
  v92 = v108;
  v93 = v105;
  sub_24ED1A2B4(v90, v91, v108, v82, v110);
  v94 = v106;
  *v106 = v83;
  v94[1] = v84;
  v94[2] = v85;
  v94[3] = v86;
  v94[4] = v87;
  v94[5] = v88;
  *(v94 + 24) = v89;
  v96 = v117;
  v95 = v118;
  v94[7] = v118;
  v94[8] = v96;
  LOBYTE(v89) = v115;
  v97 = v116;
  v98 = v125;
  v94[9] = v115;
  v94[10] = v98;
  v99 = v114;
  v94[11] = v97;
  v94[12] = v99;
  *(v94 + 52) = 0;
  v100 = v112;
  v101 = v111;
  v94[14] = v112;
  v94[15] = v101;
  v94[16] = v92;
  v94[17] = v82;
  v102 = v110;
  v94[18] = v110;
  v94[19] = v93;
  *(v94 + 80) = v113;
  sub_24ED1A2B4(v100, v101, v92, v82, v102);
  sub_24ED1A2B4(v95, v96, v89, v98, v97);
  return sub_24ED1A2B4(v124, v123, v121, v122, v87);
}

double sub_24F484FFC@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24F924C98();
  v26 = 0;
  sub_24F484668(v3, &v14);
  v35 = v22;
  v36 = v23;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v38[8] = v22;
  v38[9] = v23;
  v38[4] = v18;
  v38[5] = v19;
  v38[6] = v20;
  v38[7] = v21;
  v38[0] = v14;
  v38[1] = v15;
  v37 = v24;
  v39 = v24;
  v38[2] = v16;
  v38[3] = v17;
  sub_24E60169C(&v27, v13, &qword_27F244978, &qword_24F9FC3A8);
  sub_24E601704(v38, &qword_27F244978, &qword_24F9FC3A8);
  *(&v25[7] + 7) = v34;
  *(&v25[8] + 7) = v35;
  *(&v25[9] + 7) = v36;
  *(&v25[10] + 7) = v37;
  *(&v25[3] + 7) = v30;
  *(&v25[4] + 7) = v31;
  *(&v25[5] + 7) = v32;
  *(&v25[6] + 7) = v33;
  *(v25 + 7) = v27;
  *(&v25[1] + 7) = v28;
  *(&v25[2] + 7) = v29;
  v6 = v25[6];
  *(a2 + 129) = v25[7];
  v7 = v25[9];
  *(a2 + 145) = v25[8];
  *(a2 + 161) = v7;
  *(a2 + 170) = *(&v25[9] + 9);
  v8 = v25[2];
  *(a2 + 65) = v25[3];
  v9 = v25[5];
  *(a2 + 81) = v25[4];
  *(a2 + 97) = v9;
  *(a2 + 113) = v6;
  result = *v25;
  v11 = v25[1];
  *(a2 + 17) = v25[0];
  *(a2 + 33) = v11;
  v12 = v26;
  *a2 = v5;
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = v12;
  *(a2 + 49) = v8;
  return result;
}

uint64_t sub_24F4851FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LargeBreakoutOverlayView.TextStack(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F485260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4852C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F485344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F4853D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24F48544C(uint64_t a1)
{
  sub_24F4854F0(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24F4854F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F485558()
{
  result = qword_27F244950;
  if (!qword_27F244950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244910, &qword_24F9FC2D0);
    sub_24F4855E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244950);
  }

  return result;
}

unint64_t sub_24F4855E4()
{
  result = qword_27F244958;
  if (!qword_27F244958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244900, &qword_24F9FC288);
    sub_24F485670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244958);
  }

  return result;
}

unint64_t sub_24F485670()
{
  result = qword_27F244960;
  if (!qword_27F244960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2448F8, &qword_24F9FC280);
    sub_24E602068(&qword_27F244968, &qword_27F244970, qword_24F9FC350, MEMORY[0x277CE1198]);
    sub_24E602068(&qword_27F21B308, &qword_27F212858, &qword_24F950980, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244960);
  }

  return result;
}

double sub_24F4857DC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244990, &qword_24F9FC478);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  (*(v9 + 24))(sub_24F485A6C, v11, v8, v9);

  return result;
}