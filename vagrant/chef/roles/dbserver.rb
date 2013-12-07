name "dbserver"


run_list(
	"recipe[reposetup]",
	"recipe[mongodb::default]"
)