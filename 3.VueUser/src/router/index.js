import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import newsList from '@/views/pages/news/list'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import zixishixinxiList from '@/views/pages/zixishixinxi/list'
import zixishixinxiDetail from '@/views/pages/zixishixinxi/formModel'
import zixishixinxiAdd from '@/views/pages/zixishixinxi/formAdd'
import zixishileixingList from '@/views/pages/zixishileixing/list'
import zixishileixingDetail from '@/views/pages/zixishileixing/formModel'
import zixishileixingAdd from '@/views/pages/zixishileixing/formAdd'
import yuyuedingdanList from '@/views/pages/yuyuedingdan/list'
import yuyuedingdanDetail from '@/views/pages/yuyuedingdan/formModel'
import yuyuedingdanAdd from '@/views/pages/yuyuedingdan/formAdd'
import quxiaodingdanList from '@/views/pages/quxiaodingdan/list'
import quxiaodingdanDetail from '@/views/pages/quxiaodingdan/formModel'
import quxiaodingdanAdd from '@/views/pages/quxiaodingdan/formAdd'
import pingjiaxinxiList from '@/views/pages/pingjiaxinxi/list'
import pingjiaxinxiDetail from '@/views/pages/pingjiaxinxi/formModel'
import pingjiaxinxiAdd from '@/views/pages/pingjiaxinxi/formAdd'
import storeupList from '@/views/pages/storeup/list'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'newsList',
			component: newsList
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'zixishixinxiList',
			component: zixishixinxiList
		}, {
			path: 'zixishixinxiDetail',
			component: zixishixinxiDetail
		}, {
			path: 'zixishixinxiAdd',
			component: zixishixinxiAdd
		}
		, {
			path: 'zixishileixingList',
			component: zixishileixingList
		}, {
			path: 'zixishileixingDetail',
			component: zixishileixingDetail
		}, {
			path: 'zixishileixingAdd',
			component: zixishileixingAdd
		}
		, {
			path: 'yuyuedingdanList',
			component: yuyuedingdanList
		}, {
			path: 'yuyuedingdanDetail',
			component: yuyuedingdanDetail
		}, {
			path: 'yuyuedingdanAdd',
			component: yuyuedingdanAdd
		}
		, {
			path: 'quxiaodingdanList',
			component: quxiaodingdanList
		}, {
			path: 'quxiaodingdanDetail',
			component: quxiaodingdanDetail
		}, {
			path: 'quxiaodingdanAdd',
			component: quxiaodingdanAdd
		}
		, {
			path: 'pingjiaxinxiList',
			component: pingjiaxinxiList
		}, {
			path: 'pingjiaxinxiDetail',
			component: pingjiaxinxiDetail
		}, {
			path: 'pingjiaxinxiAdd',
			component: pingjiaxinxiAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
