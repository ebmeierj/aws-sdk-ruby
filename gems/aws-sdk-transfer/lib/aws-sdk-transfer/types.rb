# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Transfer
  module Types

    # @note When making an API call, you may pass CreateServerRequest
    #   data as a hash:
    #
    #       {
    #         identity_provider_details: {
    #           url: "Url",
    #           invocation_role: "Role",
    #         },
    #         identity_provider_type: "SERVICE_MANAGED", # accepts SERVICE_MANAGED, API_GATEWAY
    #         logging_role: "Role",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] identity_provider_details
    #   An array containing all of the information required to call a
    #   customer-supplied authentication API. This parameter is not required
    #   when the `IdentityProviderType` value of server that is created uses
    #   the `SERVICE_MANAGED` authentication method.
    #   @return [Types::IdentityProviderDetails]
    #
    # @!attribute [rw] identity_provider_type
    #   The mode of authentication enabled for this service. The default
    #   value is `SERVICE_MANAGED`, which allows you to store and access
    #   SFTP user credentials within the service. An `IdentityProviderType`
    #   value of `API_GATEWAY` indicates that user authentication requires a
    #   call to an API Gateway endpoint URL provided by you to integrate an
    #   identity provider of your choice.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   A value that allows the service to write your SFTP users’ activity
    #   to your Amazon CloudWatch logs for monitoring and auditing purposes.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for servers.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateServerRequest AWS API Documentation
    #
    class CreateServerRequest < Struct.new(
      :identity_provider_details,
      :identity_provider_type,
      :logging_role,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   The service-assigned ID of the SFTP server that is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateServerResponse AWS API Documentation
    #
    class CreateServerResponse < Struct.new(
      :server_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserRequest
    #   data as a hash:
    #
    #       {
    #         home_directory: "HomeDirectory",
    #         policy: "Policy",
    #         role: "Role", # required
    #         server_id: "ServerId", # required
    #         ssh_public_key_body: "SshPublicKeyBody",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         user_name: "UserName", # required
    #       }
    #
    # @!attribute [rw] home_directory
    #   The landing directory (folder) for a user when they log in to the
    #   server using their SFTP client. An example is `/home/username `.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   A scope-down policy for your user so you can use the same IAM role
    #   across multiple users. This policy scopes down user access to
    #   portions of their Amazon S3 bucket. Variables you can use inside
    #   this policy include `$\{Transfer:UserName\}`,
    #   `$\{Transfer:HomeDirectory\}`, and `$\{Transfer:HomeBucket\}`.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role that controls your user’s access to your Amazon S3
    #   bucket. The policies attached to this role will determine the level
    #   of access you want to provide your users when transferring files
    #   into and out of your Amazon S3 bucket or buckets. The IAM role
    #   should also contain a trust relationship that allows the SFTP server
    #   to access your resources when servicing your SFTP user’s transfer
    #   requests.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server instance.
    #   This is the specific SFTP server that you added your user to.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_body
    #   The public portion of the Secure Shall (SSH) key used to
    #   authenticate the user to the SFTP server.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that can be used to group and search for users. Tags
    #   are metadata attached to users for any purpose.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a user and is associated with a
    #   server as specified by the `ServerId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :home_directory,
      :policy,
      :role,
      :server_id,
      :ssh_public_key_body,
      :tags,
      :user_name)
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   The ID of the SFTP server that the user is attached to.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a user account associated with an
    #   SFTP server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :server_id,
      :user_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteServerRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #       }
    #
    # @!attribute [rw] server_id
    #   A unique system-assigned identifier for an SFTP server instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteServerRequest AWS API Documentation
    #
    class DeleteServerRequest < Struct.new(
      :server_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSshPublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         ssh_public_key_id: "SshPublicKeyId", # required
    #         user_name: "UserName", # required
    #       }
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a Secure File Transfer
    #   Protocol (SFTP) server instance that has the user assigned to it.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   A unique identifier used to reference your user’s specific SSH key.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a user whose public key is being
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteSshPublicKeyRequest AWS API Documentation
    #
    class DeleteSshPublicKeyRequest < Struct.new(
      :server_id,
      :ssh_public_key_id,
      :user_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         user_name: "UserName", # required
    #       }
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server instance that
    #   has the user assigned to it.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a user that is being deleted from
    #   the server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :server_id,
      :user_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeServerRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #       }
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeServerRequest AWS API Documentation
    #
    class DescribeServerRequest < Struct.new(
      :server_id)
      include Aws::Structure
    end

    # @!attribute [rw] server
    #   An array containing the properties of the server with the `ServerID`
    #   you specified.
    #   @return [Types::DescribedServer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeServerResponse AWS API Documentation
    #
    class DescribeServerResponse < Struct.new(
      :server)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         user_name: "UserName", # required
    #       }
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server that has this
    #   user assigned.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user assigned to one or more servers. User names are
    #   part of the sign-in credentials to use the AWS Transfer service and
    #   perform file transfer tasks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeUserRequest AWS API Documentation
    #
    class DescribeUserRequest < Struct.new(
      :server_id,
      :user_name)
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server that has this
    #   user assigned.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   An array containing the properties of the user account for the
    #   `ServerID` value that you specified.
    #   @return [Types::DescribedUser]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribeUserResponse AWS API Documentation
    #
    class DescribeUserResponse < Struct.new(
      :server_id,
      :user)
      include Aws::Structure
    end

    # Describe the properties of the server that was specified. Information
    # returned includes: the server Amazon Resource Name (ARN), the
    # authentication configuration and type, the logging role, server Id and
    # state, and assigned tags or metadata.
    #
    # @!attribute [rw] arn
    #   Specifies the unique Amazon Resource Name (ARN) for the server to be
    #   described.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_details
    #   Specifies information to call a customer-supplied authentication
    #   API. This field is not populated when the `IdentityProviderType` of
    #   the server is `SERVICE_MANAGED`&gt;.
    #   @return [Types::IdentityProviderDetails]
    #
    # @!attribute [rw] identity_provider_type
    #   This property defines the mode of authentication method enabled for
    #   this service. A value of `SERVICE_MANAGED`, means that you are using
    #   this Server to store and access SFTP user credentials within the
    #   service. A value of `API_GATEWAY` indicates that you have integrated
    #   an API Gateway endpoint that will be invoked for authenticating your
    #   user into the service.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   This property is an AWS Identity and Access Management (IAM) entity
    #   that allows the server to turn on Amazon CloudWatch logging for
    #   Amazon S3 events. When set, user activity can be view in your
    #   CloudWatch logs.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   This property is a unique system assigned identifier for the SFTP
    #   server that you instantiate.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The condition of the SFTP server for the server that was described.
    #   A value of `ONLINE` indicates that the server can accept jobs and
    #   transfer files. A `State` value of `OFFLINE` means that the server
    #   cannot perform file transfer operations.
    #
    #   The states of `STARTING` and `STOPPING` indicated that the server is
    #   in an intermediate state, either not fully able to respond, or not
    #   fully offline. The values of `START_FAILED` or `STOP_FAILED` can
    #   indicate an error condition.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   This property contains the key-value pairs that you can use to
    #   search for and group servers that were assigned to the server that
    #   was described.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] user_count
    #   The number of users that are assigned to the SFTP server you
    #   specified with the `ServerId`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedServer AWS API Documentation
    #
    class DescribedServer < Struct.new(
      :arn,
      :identity_provider_details,
      :identity_provider_type,
      :logging_role,
      :server_id,
      :state,
      :tags,
      :user_count)
      include Aws::Structure
    end

    # Returns properties of the user that you wish to describe.
    #
    # @!attribute [rw] arn
    #   This property contains the unique Amazon Resource Name (ARN) for the
    #   user that was requested to be described.
    #   @return [String]
    #
    # @!attribute [rw] home_directory
    #   This property specifies the landing directory (or folder) which is
    #   the location that files are written to or read from in an Amazon S3
    #   bucket for the described user. An example would be:
    #   `/bucket_name/home/username `.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   Specifies the name of the policy in use for the described user.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   This property specifies the IAM role that controls your user’s
    #   access to your Amazon S3 bucket. The policies attached to this role
    #   will determine the level of access you want to provide your users
    #   when transferring files into and out of your Amazon S3 bucket or
    #   buckets. The IAM role should also contain a trust relationship that
    #   allows the SFTP server to access your resources when servicing your
    #   SFTP user’s transfer requests.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_keys
    #   This property contains the public key portion of the Secure Shell
    #   (SSH) keys stored for the described user.
    #   @return [Array<Types::SshPublicKey>]
    #
    # @!attribute [rw] tags
    #   This property contains the key-value pairs for the user requested.
    #   Tag can be used to search for and group users for a variety of
    #   purposes.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] user_name
    #   This property is the name of the user that was requested to be
    #   described. User names are used for authentication purposes. This is
    #   the string that will be used by your user when they log in to your
    #   SFTP server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/DescribedUser AWS API Documentation
    #
    class DescribedUser < Struct.new(
      :arn,
      :home_directory,
      :policy,
      :role,
      :ssh_public_keys,
      :tags,
      :user_name)
      include Aws::Structure
    end

    # Returns information related to the type of user authentication that is
    # in use for a server's users. A server can only have one method of
    # authentication.
    #
    # @note When making an API call, you may pass IdentityProviderDetails
    #   data as a hash:
    #
    #       {
    #         url: "Url",
    #         invocation_role: "Role",
    #       }
    #
    # @!attribute [rw] url
    #   The `IdentityProviderDetail` parameter contains the location of the
    #   service endpoint used to authenticate users.
    #   @return [String]
    #
    # @!attribute [rw] invocation_role
    #   The `Role` parameter provides the type of `InvocationRole` used to
    #   authenticate the user account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/IdentityProviderDetails AWS API Documentation
    #
    class IdentityProviderDetails < Struct.new(
      :url,
      :invocation_role)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportSshPublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         ssh_public_key_body: "SshPublicKeyBody", # required
    #         user_name: "UserName", # required
    #       }
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_body
    #   The public key portion of an SSH key pair.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user account that is assigned to one or more
    #   servers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ImportSshPublicKeyRequest AWS API Documentation
    #
    class ImportSshPublicKeyRequest < Struct.new(
      :server_id,
      :ssh_public_key_body,
      :user_name)
      include Aws::Structure
    end

    # This response identifies the user, server they belong to, and the
    # identifier of the SSH public key associated with that user. A user can
    # have more than one key on each server that they are associate with.
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   This identifier is the name given to a public key by the system that
    #   was imported.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A user name assigned to the `ServerID` value that you specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ImportSshPublicKeyResponse AWS API Documentation
    #
    class ImportSshPublicKeyResponse < Struct.new(
      :server_id,
      :ssh_public_key_id,
      :user_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   Specifies the number of servers to return as a response to the
    #   `ListServers` query.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When additional results are obtained from the ListServers command, a
    #   `NextToken` parameter is returned in the output. You can then pass
    #   the `NextToken` parameter in a subsequent command to continue
    #   listing additional servers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListServersRequest AWS API Documentation
    #
    class ListServersRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListServers`
    #   operation, a `NextToken` parameter is returned in the output. In a
    #   following command, you can pass in the `NextToken` parameter to
    #   continue listing additional servers.
    #   @return [String]
    #
    # @!attribute [rw] servers
    #   An array of servers that were listed.
    #   @return [Array<Types::ListedServer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListServersResponse AWS API Documentation
    #
    class ListServersResponse < Struct.new(
      :next_token,
      :servers)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] arn
    #   Requests the tags associated with a particular Amazon Resource Name
    #   (ARN). An ARN is an identifier for a specific AWS resource, such as
    #   a server, user, or role.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the number of tags to return as a response to the
    #   `ListTagsForResource` request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When you request additional results from the `ListTagsForResource`
    #   call, a `NextToken` parameter is returned in the input. You can then
    #   pass in a subsequent command the `NextToken` parameter to continue
    #   listing additional tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :arn,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   This value is the ARN you specified to list the tags of.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListTagsForResource`
    #   call, a `NextToken` parameter is returned in the output. You can
    #   then pass in a subsequent command the `NextToken` parameter to
    #   continue listing additional tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs that are assigned to a resource, usually for the
    #   purpose of grouping and searching for items. Tags are metadata that
    #   you define that you can use for any purpose.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :arn,
      :next_token,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUsersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         server_id: "ServerId", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   Specifies the number of users to return as a response to the
    #   `ListUsers` request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListUsers` call, a
    #   `NextToken` parameter is returned in the output. You can then pass
    #   in a subsequent command the `NextToken` parameter to continue
    #   listing additional users.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for a Secure File Transfer
    #   Protocol (SFTP) server that has users are assigned to it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :max_results,
      :next_token,
      :server_id)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you can get additional results from the `ListUsers` call, a
    #   `NextToken` parameter is returned in the output. You can then pass
    #   in a subsequent command the `NextToken` parameter to continue
    #   listing additional users.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server that the
    #   users are assigned to.
    #   @return [String]
    #
    # @!attribute [rw] users
    #   Returns the user accounts and their properties for the `ServerId`
    #   value that you specify.
    #   @return [Array<Types::ListedUser>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :next_token,
      :server_id,
      :users)
      include Aws::Structure
    end

    # Returns properties of the server that was specified.
    #
    # @!attribute [rw] arn
    #   The unique Amazon Resource Name (ARN) for the server to be listed.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_type
    #   The authentication method used to validate a user for the server
    #   that was specified. listed. This can include Secure Shell (SSH),
    #   user name and password combinations, or your own custom
    #   authentication method. Valid values include `SERVICE_MANAGED` or
    #   `API_GATEWAY`.
    #   @return [String]
    #
    # @!attribute [rw] logging_role
    #   The AWS Identity and Access Management entity that allows the server
    #   to turn on Amazon CloudWatch logging.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   This value is the unique system assigned identifier for the SFTP
    #   servers that were listed.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   This property describes the condition of the SFTP server for the
    #   server that was described. A value of `ONLINE`&gt; indicates that
    #   the server can accept jobs and transfer files. A `State` value of
    #   `OFFLINE` means that the server cannot perform file transfer
    #   operations.
    #
    #   The states of `STARTING` and `STOPPING` indicated that the server is
    #   in an intermediate state, either not fully able to respond, or not
    #   fully offline. The values of `START_FAILED` or `STOP_FAILED` can
    #   indicate an error condition.
    #   @return [String]
    #
    # @!attribute [rw] user_count
    #   This property is a numeric value that indicates the number of users
    #   that are assigned to the SFTP server you specified with the
    #   `ServerId`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedServer AWS API Documentation
    #
    class ListedServer < Struct.new(
      :arn,
      :identity_provider_type,
      :logging_role,
      :server_id,
      :state,
      :user_count)
      include Aws::Structure
    end

    # Returns properties of the user that you specify.
    #
    # @!attribute [rw] arn
    #   This property is the unique Amazon Resource Name (ARN) for the user
    #   that you wish to learn about.
    #   @return [String]
    #
    # @!attribute [rw] home_directory
    #   This value specifies the location that files are written to or read
    #   from an Amazon S3 bucket for the user you specify by their ARN.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role in use by this user. A *role* is an AWS Identity and Access
    #   Management (IAM) entity that in this case allows the SFTP server to
    #   act on a user's behalf. It allows the server to inherit the trust
    #   relationship that enables that user to perform file operations to
    #   their Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_count
    #   This value is the number of SSH public keys stored for the user you
    #   specified.
    #   @return [Integer]
    #
    # @!attribute [rw] user_name
    #   The name of the user whose ARN was specified. User names are used
    #   for authentication purposes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/ListedUser AWS API Documentation
    #
    class ListedUser < Struct.new(
      :arn,
      :home_directory,
      :role,
      :ssh_public_key_count,
      :user_name)
      include Aws::Structure
    end

    # Provides information about the public Secure Shell (SSH) key that is
    # associated with a user account for a specific server (as identified by
    # `ServerId`). The information returned includes the date the key was
    # imported, the public key contents, and the public key ID. A user can
    # store more than one SSH public key associated with their user name on
    # a specific SFTP server.
    #
    # @!attribute [rw] date_imported
    #   The date that the public key was added to the user account.
    #   @return [Time]
    #
    # @!attribute [rw] ssh_public_key_body
    #   The content of the SSH public key as specified by the `PublicKeyId`.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   The `SshPublicKeyId` parameter contains the identifier of the public
    #   key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/SshPublicKey AWS API Documentation
    #
    class SshPublicKey < Struct.new(
      :date_imported,
      :ssh_public_key_body,
      :ssh_public_key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartServerRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #       }
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server that you
    #   start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StartServerRequest AWS API Documentation
    #
    class StartServerRequest < Struct.new(
      :server_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopServerRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #       }
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server that you
    #   stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/StopServerRequest AWS API Documentation
    #
    class StopServerRequest < Struct.new(
      :server_id)
      include Aws::Structure
    end

    # Creates a key-value pair for a specific resource. Tags are metadata
    # that you can use to search for and group a resource for various
    # purposes. You can apply tags to servers, users, and roles. A tag key
    # can take more than one value. For example, to group servers for
    # accounting purposes, you might create a tag called `Group` and assign
    # the values `Research` and `Accounting` to that group.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The name assigned to the tag that you create.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   This property contains one or more values that you assigned to the
    #   key name you create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] arn
    #   An Amazon Resource Name (ARN) for a specific AWS resource, such as a
    #   server, user, or role.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs assigned to ARNs that you can use to group and
    #   search for resources by type. You can attach this metadata to user
    #   accounts for any purpose.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TestIdentityProviderRequest
    #   data as a hash:
    #
    #       {
    #         server_id: "ServerId", # required
    #         user_name: "UserName", # required
    #         user_password: "UserPassword",
    #       }
    #
    # @!attribute [rw] server_id
    #   A system assigned identifier for a specific server. That server's
    #   user authentication method is tested with a user name and password.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   This request parameter is name of the user account to be tested.
    #   @return [String]
    #
    # @!attribute [rw] user_password
    #   The password of the user account to be tested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TestIdentityProviderRequest AWS API Documentation
    #
    class TestIdentityProviderRequest < Struct.new(
      :server_id,
      :user_name,
      :user_password)
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   The result of the authorization test as a message.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The HTTP status code that is the response from your API Gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] url
    #   The endpoint of the service used to authenticate a user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/TestIdentityProviderResponse AWS API Documentation
    #
    class TestIdentityProviderResponse < Struct.new(
      :message,
      :status_code,
      :url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] arn
    #   This is the value of the resource that will have the tag removed. An
    #   Amazon Resource Name (ARN) is an identifier for a specific AWS
    #   resource, such as a server, user, or role.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   TagKeys are key-value pairs assigned to ARNs that can be used to
    #   group and search for resources by type. This metadata can be
    #   attached to resources for any purpose.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServerRequest
    #   data as a hash:
    #
    #       {
    #         identity_provider_details: {
    #           url: "Url",
    #           invocation_role: "Role",
    #         },
    #         logging_role: "NullableRole",
    #         server_id: "ServerId", # required
    #       }
    #
    # @!attribute [rw] identity_provider_details
    #   This response parameter is an array containing all of the
    #   information required to call a customer's authentication API
    #   method.
    #   @return [Types::IdentityProviderDetails]
    #
    # @!attribute [rw] logging_role
    #   Changes the AWS Identity and Access Management (IAM) role that
    #   allows Amazon S3 events to be logged in Amazon CloudWatch, turning
    #   logging on or off.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server instance that
    #   the user account is assigned to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateServerRequest AWS API Documentation
    #
    class UpdateServerRequest < Struct.new(
      :identity_provider_details,
      :logging_role,
      :server_id)
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server that the user
    #   account is assigned to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateServerResponse AWS API Documentation
    #
    class UpdateServerResponse < Struct.new(
      :server_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserRequest
    #   data as a hash:
    #
    #       {
    #         home_directory: "HomeDirectory",
    #         policy: "Policy",
    #         role: "Role",
    #         server_id: "ServerId", # required
    #         user_name: "UserName", # required
    #       }
    #
    # @!attribute [rw] home_directory
    #   The HomeDirectory parameter specifies the landing directory (folder)
    #   for a user when they log in to the server using their client. An
    #   example would be: `/home/username `.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   Allows you to supply a scope-down policy for your user so you can
    #   use the same AWS Identity and Access Management (IAM) role across
    #   multiple users. The policy scopes down users access to portions of
    #   your Amazon S3 bucket. Variables you can use inside this policy
    #   include `$\{Transfer:UserName\}`, `$\{Transfer:HomeDirectory\}`, and
    #   `$\{Transfer:HomeBucket\}`.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role that controls your user’s access to your Amazon S3
    #   bucket. The policies attached to this role will determine the level
    #   of access you want to provide your users when transferring files
    #   into and out of your Amazon S3 bucket or buckets. The IAM role
    #   should also contain a trust relationship that allows the Secure File
    #   Transfer Protocol (SFTP) server to access your resources when
    #   servicing your SFTP user’s transfer requests.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server instance that
    #   the user account is assigned to.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A unique string that identifies a user and is associated with a
    #   server as specified by the ServerId. This is the string that will be
    #   used by your user when they log in to your SFTP server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :home_directory,
      :policy,
      :role,
      :server_id,
      :user_name)
      include Aws::Structure
    end

    # `UpdateUserResponse` returns the user name and server identifier for
    # the request to update a user's properties.
    #
    # @!attribute [rw] server_id
    #   A system-assigned unique identifier for an SFTP server instance that
    #   the user account is assigned to.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The unique identifier for a user that is assigned to the SFTP server
    #   instance that was specified in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transfer-2018-11-05/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :server_id,
      :user_name)
      include Aws::Structure
    end

  end
end
