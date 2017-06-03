# First time: Full indexes..*]: 


from elasticsearch import Elasticsearch, RequestsHttpConnection
from requests_aws4auth import AWS4Auth

host = 'search-opencontractors-3r67ajhlmi4rd5r54ssz7pp4iu.us-west-1.es.amazonaws.com'
awsauth = AWS4Auth('AKIAIU5VKBBJSCN3M72Q', 'BSO50gKFhx2vKAUtNjzKNOZeezEE4xffjsGt40Qk', 'us-west-1', 'es')

es = Elasticsearch(
    hosts=[{'host': host, 'port': 443}],
    http_auth=awsauth,
    use_ssl=True,
    verify_certs=True,
    connection_class=RequestsHttpConnection
)

print(es.info())