<?php
namespace App\Filters;

use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Filters\FilterInterface;

class IpWhitelistFilter implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null)
    {
        // List of allowed IP addresses
        $allowedIPs = ['::1'];
        // Get the client's IP address
        $clientIP = $request->getIPAddress();

        // Check if the client's IP is in the allowed list
        if (!in_array($clientIP, $allowedIPs)) {
            // Redirect to the root URL
            return redirect()->to(base_url());
        }

        // IP is allowed, continue to the route handler
        return $request;
    }

    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        // No action needed after processing
    }
}
