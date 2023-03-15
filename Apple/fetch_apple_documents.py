from urllib3 import PoolManager
import certifi

def run_script():
    pool_manager = PoolManager(
        cert_reqs="CERT_REQUIRED",
        ca_certs=certifi.where()
    )
    # url = 'https://www.bilibili.com'
    url = 'https://www.baidu.com'
    # url = 'https://developer.apple.com/documentation/technologies'
    headers = {
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7'
    }
    response = pool_manager.request('GET', url, fields={'wd':'搜索关键词'}, headers=headers)
    result = response.data.decode('UTF-8')
    print(result)

if __name__ == '__main__':
    run_script()
