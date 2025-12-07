@interface SharingOptionsViewFactory
+ (id)createCollaborationShareOptionsView:(id)view layoutMargins:(NSDirectionalEdgeInsets)margins userDidChangeOption:(id)option contentSizeDidChange:(id)change;
+ (id)createSharingOptionsView:(id)view userDidChangeOption:(id)option;
- (_TtC14CloudSharingUI25SharingOptionsViewFactory)init;
@end

@implementation SharingOptionsViewFactory

+ (id)createCollaborationShareOptionsView:(id)view layoutMargins:(NSDirectionalEdgeInsets)margins userDidChangeOption:(id)option contentSizeDidChange:(id)change
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  v12 = _Block_copy(option);
  v13 = _Block_copy(change);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  viewCopy = view;
  v17 = _s14CloudSharingUI0B18OptionsViewFactoryC024createCollaborationSharedE0_13layoutMargins19userDidChangeOption011contentSizemN0AA32HostingControllerAndModelUpdatesCSo016_SWCollaborationiD0CSg_So23NSDirectionalEdgeInsetsVySS_SSSbALtcySo6CGSizeVctFZ_0(view, sub_243B69EE8, v14, sub_243B69EF0, v15, top, leading, bottom, trailing);

  return v17;
}

+ (id)createSharingOptionsView:(id)view userDidChangeOption:(id)option
{
  v4 = _Block_copy(option);
  sub_243B69E94();
  v5 = sub_243B7089C();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = _s14CloudSharingUI0B18OptionsViewFactoryC06createbdE0_19userDidChangeOptionAA32HostingControllerAndModelUpdatesCSaySo016_SWCollaborationD5GroupCG_ySS_SSSbAJtctFZ_0(v5, sub_243B69EE0, v6);

  return v7;
}

- (_TtC14CloudSharingUI25SharingOptionsViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SharingOptionsViewFactory();
  return [(SharingOptionsViewFactory *)&v3 init];
}

@end