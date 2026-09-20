const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '公告信息',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'公告信息',
							url:'/index/newsList'
						},
					]
				},
				{
					name: '自习室信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'自习室信息',
							url:'/index/zixishixinxiList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "付费自习室管理系统"
        } 
    }
}
export default config
