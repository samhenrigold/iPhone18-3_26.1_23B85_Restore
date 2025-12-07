@interface CNContactStore(PhoneKit)
+ (void)contactStore;
@end

@implementation CNContactStore(PhoneKit)

+ (void)contactStore
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"The application is not authorized to access contact data.";
  OUTLINED_FUNCTION_0_0(&dword_0, self, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)contactsForHandles:()PhoneKit keyDescriptors:alwaysUnifyLabeledValues:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_0, a2, a3, "Contact fetch failed with the following error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end