	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import news from '@/views/news/list'
	import quxiaodingdan from '@/views/quxiaodingdan/list'
	import pingjiaxinxi from '@/views/pingjiaxinxi/list'
	import zixishileixing from '@/views/zixishileixing/list'
	import yonghu from '@/views/yonghu/list'
	import discusszixishixinxi from '@/views/discusszixishixinxi/list'
	import zixishixinxi from '@/views/zixishixinxi/list'
	import storeup from '@/views/storeup/list'
	import yuyuedingdan from '@/views/yuyuedingdan/list'
	import config from '@/views/config/list'
	import yonghuCenter from '@/views/yonghu/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/yonghuCenter',
			name: '用户个人中心',
			component: yonghuCenter
		}
		,{
			path: '/news',
			name: '公告信息',
			component: news
		}
		,{
			path: '/quxiaodingdan',
			name: '取消订单',
			component: quxiaodingdan
		}
		,{
			path: '/pingjiaxinxi',
			name: '评价信息',
			component: pingjiaxinxi
		}
		,{
			path: '/zixishileixing',
			name: '自习室类型',
			component: zixishileixing
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/discusszixishixinxi',
			name: '自习室信息评论',
			component: discusszixishixinxi
		}
		,{
			path: '/zixishixinxi',
			name: '自习室信息',
			component: zixishixinxi
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/yuyuedingdan',
			name: '预约订单',
			component: yuyuedingdan
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		]
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
