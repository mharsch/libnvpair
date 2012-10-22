#include <stdio.h>
#include "../libnvpair.h"

int
main() {
	char *cp;
	nvlist_t *lp;

	nvlist_alloc(&lp, NV_UNIQUE_NAME, 0);

	nvlist_add_string(lp, "foo", "bar");

	nvlist_lookup_string(lp, "foo", &cp);

	printf("value of foo is: %s\n", cp);

	nvlist_free(lp);
	return (0);
}
