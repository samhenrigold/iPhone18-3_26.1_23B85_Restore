@interface UIContextMenuLinkedList
@end

@implementation UIContextMenuLinkedList

void __39___UIContextMenuLinkedList_removeNode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  [*(a1 + 32) addObject:v6];
  if (objc_msgSend_isEqual_(v6))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __40___UIContextMenuLinkedList_nodeForMenu___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = objc_msgSend_menu(v8);
  isEqual = objc_msgSend_isEqual_(v6);

  if (isEqual)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __39___UIContextMenuLinkedList_description__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) first];

  if (v3 != v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) appendString:@" -> "];
  }

  [*(*(*(a1 + 40) + 8) + 40) appendFormat:@"%@", v4];
}

@end