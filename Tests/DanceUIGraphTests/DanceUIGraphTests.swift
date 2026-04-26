import DanceUIGraph
import DanceUIRuntime
import Testing

@Suite
struct DanceUIGraphTests {
    @Test
    func runtimeBridgeComparesValues() {
        #expect(DGCompareValues(lhs: 42, rhs: 42))
        #expect(!DGCompareValues(lhs: 42, rhs: 7))
    }

    @Test
    func graphCreatesAndReadsAttributeValue() {
        let graph = DGGraphCreate()
        let subgraph = DGSubgraphCreate(graph)

        let attribute = subgraph.apply {
            Attribute<Int>(value: 42)
        }

        #expect(!graph.isUpdating)
        #expect(attribute.hasValue)
        #expect(attribute.value == 42)
        #expect(attribute.graph === graph)
        #expect(attribute.subgraph === subgraph)

        subgraph.invalidate()
        graph.invalidate()
    }
}
