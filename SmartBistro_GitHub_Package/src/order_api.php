<?php
// SmartBistro prototype API example for academic demonstration only.
header('Content-Type: application/json');

$input = json_decode(file_get_contents('php://input'), true);

if (!$input || !isset($input['items'])) {
    http_response_code(400);
    echo json_encode(['status' => 'error', 'message' => 'Invalid order data']);
    exit;
}

$order = [
    'order_id' => uniqid('SB-'),
    'items' => $input['items'],
    'status' => 'sent_to_kds',
    'created_at' => date('Y-m-d H:i:s')
];

echo json_encode(['status' => 'success', 'order' => $order]);
?>
